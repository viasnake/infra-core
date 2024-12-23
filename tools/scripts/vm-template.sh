#!/usr/bin/env bash

VM_ID=9000
VM_NAME=ubuntu-server-22.04
VM_CORES=2
VM_MEMORY=1024
VM_STORAGE=hdd-01

# Function to handle errors and cleanup
handle_error() {
  echo "Error: $1"
  exit 1
}

# Download Ubuntu Server 22.04 LTS
if [ ! -e jammy-server-cloudimg-amd64.img ]; then
  if wget https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img; then
    echo "Success: Downloaded Ubuntu Server 22.04 LTS successfully."
  else
    handle_error "Failed to download Ubuntu Server 22.04 LTS."
  fi
fi

# Resize the image to 4GB
if qemu-img resize jammy-server-cloudimg-amd64.img 4G; then
  echo "Success: Resized image to 4GB successfully."
else
  handle_error "Failed to resize image."
fi

# Create a new VM with VirtIO SCSI controller
if qm create $VM_ID --name $VM_NAME --memory $VM_MEMORY --net0 virtio,bridge=vmbr0 --scsihw virtio-scsi-pci; then
  echo "Success: Created VM $VM_NAME successfully."
else
  handle_error "Failed to create VM $VM_NAME."
fi

# Import the downloaded image to local-lvm storage
if qm set $VM_ID --scsi0 $VM_STORAGE:0,import-from=$(pwd)/jammy-server-cloudimg-amd64.img; then
  echo "Success: Imported image to VM storage successfully."
else
  handle_error "Failed to import image to VM storage."
fi

# Set Cloud-Init drive to the VM
if qm set $VM_ID --ide2 $VM_STORAGE:cloudinit; then
  echo "Success: Set Cloud-Init drive successfully."
else
  handle_error "Failed to set Cloud-Init drive."
fi

# Set bootdisk to scsi0
if qm set $VM_ID --boot order=scsi0; then
  echo "Success: Set boot disk successfully."
else
  handle_error "Failed to set boot disk."
fi

# Set serial0 to socket and enable serial console
if qm set $VM_ID --serial0 socket --vga serial0; then
  echo "Success: Enabled serial console successfully."
else
  handle_error "Failed to enable serial console."
fi

# Template the VM
if qm template $VM_ID; then
  echo "Success: Templated VM $VM_NAME successfully."
else
  handle_error "Failed to template VM $VM_NAME."
fi

echo "Success: All steps completed successfully."

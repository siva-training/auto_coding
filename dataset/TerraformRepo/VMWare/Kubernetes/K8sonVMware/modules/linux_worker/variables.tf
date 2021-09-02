# ## VM Section


variable "linux_worker_vmname" {
  description = "The name of the virtual machine used to deploy the vms. This name can scale out based on number of instances and vmnameformat - example can be found under exampel folder"
  default     = "k8slinuxworker"
}


variable "vmnameformat" {
  description = "vmname format. default is set to 2 decimal with leading 0."
  default     = "%02d"
}

variable "linux_vmtemplate" {
  description = "Name of the template available in the vSphere."
}

variable "worker_instance_count" {
  description = "number of instances you want deploy from the template."
  default     = 1
}

variable "cpu_number" {
  description = "number of CPU (core per CPU) for the VM."
  default     = 4
}

variable "cpu_reservation" {
  description = "The amount of CPU (in MHz) that this virtual machine is guaranteed."
  default     = null
}

variable "memory_size" {
  description = "VM RAM size in megabytes."
  default     = 4096
}

variable "datacenter" {
  type        = string
  description = "Name of the datacenter"
}

variable "vm_resourcepool" {
  description = "Cluster resource pool that VM will be deployed"
}

variable "vmfolder" {
  description = "The path to the folder to put this virtual machine in"
  default     = null
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning."
  default     = null
}

variable "dns_server_list" {
  type    = list(string)
  default = null
}

variable "ntp_server_list" {
  type    = list(string)
  default = ["time.google.com"]
}


# #Network Section
variable "network" {
  description = "Define PortGroup and IPs for each VM"
  type        = map(list(string))
  default     = {}
}

variable "network_type" {
  description = "Define network type for each network interface."
  type        = list(any)
  default     = null
}

variable "ipv4submask" {
  description = "ipv4 Subnet mask."
  type        = list(any)
  default     = ["24"]
}

# # Data Disk section
variable "datastore_cluster" {
  description = "Datastore cluster to deploy the VM."
  default     = ""
}

variable "datastore" {
  description = "Datastore to deploy the VM."
  default     = ""
}

variable "annotation" {
  description = "A user-provided description of the virtual machine. The default is no annotation."
  default     = null
}

variable "auto_logon" {
  description = " Specifies whether or not the VM automatically logs on as Administrator. Default: false."
  type        = bool
  default     = null
}

variable "domain_name" {
  description = "default VM domain for linux guest customization."
  default     = "prodapt.com"
}

# variable "data_disk" {
#   description = "Storage data disk parameter"
#   type        = map(map(string))
#   default     = {}
# }

# variable "disk_label" {
#   description = "Storage data disk labels."
#   type        = list(any)
#   default     = []
# }

# variable "disk_size_gb" {
#   description = "List of disk sizes to override template disk size."
#   type        = list(any)
#   default     = null
# }

# variable "disk_datastore" {
#   description = "Define where the OS disk should be stored."
#   type        = string
#   default     = ""
# }

# variable "template_storage_policy_id" {
#   description = "List of UUIDs of the storage policy to assign to the template disk."
#   type        = list(any)
#   default     = []
# }

# variable "scsi_bus_sharing" {
#   description = "scsi_bus_sharing mode, acceptable values physicalSharing,virtualSharing,noSharing."
#   type        = string
#   default     = null
# }

# variable "scsi_type" {
#   description = "scsi_controller type, acceptable values lsilogic,pvscsi."
#   type        = string
#   default     = ""
# }

# variable "scsi_controller" {
#   description = "scsi_controller number for the main OS disk."
#   type        = number
#   default     = 0
#   # validation {
#   #   condition     = var.scsi_controller < 4 && var.scsi_controller > -1
#   #       error_message = "The scsi_controller must be between 0 and 3"
#   # }
# }

# variable "enable_disk_uuid" {
#   description = "Expose the UUIDs of attached virtual disks to the virtual machine, allowing access to them in the guest."
#   type        = bool
#   default     = null
# }

# variable "storage_policy_id" {
#   description = "(Optional) The UUID of the storage policy to assign to VM home directory."
#   default     = null
# }

# #Global Customization Variables
variable "tags" {
  description = "The names of any tags to attach to this resource. They must already exist."
  type        = map(any)
  default     = null
}

# variable "tag_ids" {
#   description = "The ids of any tags to attach to this resource. They must already exist."
#   type        = list(any)
#   default     = null
# }

# variable "custom_attributes" {
#   description = "Map of custom attribute ids to attribute value strings to set for virtual machine."
#   type        = map(any)
#   default     = null
# }

# variable "extra_config" {
#   description = "Extra configuration data for this virtual machine. Can be used to supply advanced parameters not normally in configuration, such as instance metadata.'disk.enableUUID', 'True'."
#   type        = map(any)
#   default     = null
# }
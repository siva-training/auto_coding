variable "controller_vmname" {
  description = "The name of the virtual machine used to deploy the vms. This name can scale out based on number of instances and vmnameformat - example can be found under exampel folder"
  default     = "k8scontroller"
}

variable "linux_vmtemplate" {
  description = "Name of the template available in the vSphere."
}

variable "controller_instance_count" {
  type        = number
  description = "number of instances you want deploy from the template."
  default     = 3
}

variable "datacenter" {
  type        = string
  description = "Name of the datacenter"
}

variable "vm_resourcepool" {
  description = "Cluster resource pool that VM will be deployed"
}

variable "datastore" {
  description = "Datastore to deploy the VM."
  default     = ""
}

# #Network Section
variable "network" {
  description = "Define PortGroup and IPs for each VM"
  type        = map(list(string))
  default     = {}
}

variable "vmgateway" {
  description = "VM gateway to set during provisioning."
  default     = null
}

variable "dns_server_list" {
  type    = list(string)
  default = null
}

variable "vmfolder" {
  description = "The path to the folder to put this virtual machine in"
  default     = null
}

variable "annotation" {
  description = "A user-provided description of the virtual machine. The default is no annotation."
  default     = null
}

# #Global Customization Variables
variable "tags" {
  description = "The names of any tags to attach to this resource. They must already exist."
  type        = map(any)
  default     = null
}

variable "win_vmtemplate" {
  description = "Name of the template available in the vSphere."
}
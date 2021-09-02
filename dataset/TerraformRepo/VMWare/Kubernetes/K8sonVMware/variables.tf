## vsphere details

variable "vmwareuser" {
  description = "The name of the vmware vcenter user"
  default     = "vmwareuser"
}

variable "vmwarepassword" {
  description = "The name of the vmware vcenter user"
  default     = "vmwarepassword"
}

variable "vsphere_server" {
  description = "The name of the vmware vcenter user"
  default     = "vsphere_server"
}

variable "datacenter" {
  type        = string
  description = "Name of the datacenter"
}

variable "vm_resourcepool" {
  description = "Cluster resource pool that VM will be deployed"
}

variable "linux_vmtemplate" {
  description = "Name of the template available in the vSphere."
}

variable "win_vmtemplate" {
  description = "Name of the template available in the vSphere."
}
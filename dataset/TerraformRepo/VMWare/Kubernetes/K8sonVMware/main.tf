## This module is for the controller

module "controller" {
  source           = "./modules/controller"
  datacenter       = var.datacenter
  linux_vmtemplate = var.linux_vmtemplate
  win_vmtemplate  = var.win_vmtemplate
  vm_resourcepool  = var.vm_resourcepool
}

# This module is for the linux worker
module "linux_worker" {
  source           = "./modules/linux_worker"
  datacenter       = var.datacenter
  linux_vmtemplate = var.linux_vmtemplate
  vm_resourcepool  = var.vm_resourcepool
}

# This module is for the windows worker

module "windows_worker" {
  source          = "./modules/windows_worker"
  datacenter      = var.datacenter
  win_vmtemplate  = var.win_vmtemplate
  vm_resourcepool = var.vm_resourcepool
}

module "k8s-windows-worker" {
  source       = "Terraform-VMWare-Modules/vm/vsphere"
  version      = "3.1.0" //version locked to maintain compatibility
  dc           = var.datacenter
  vmrp         = var.vm_resourcepool
  vmfolder     = var.vmfolder
  datastore    = var.datastore
  vmtemp       = var.win_vmtemplate
  instances    = var.worker_instance_count
  vmname       = var.windows_worker_vmname
  domain       = var.domain_name
  network      = var.network
  ipv4submask  = var.ipv4submask
  network_type = var.network_type
  tags = merge(
    var.tags,
  )
  data_disk = var.data_disk
  scsi_bus_sharing = var.scsi_bus_sharing
  scsi_type        = var.scsi_type
  scsi_controller  = var.scsi_controller
  dns_server_list  = var.dns_server_list
  vmgateway        = var.vmgateway
  enable_disk_uuid = true
  auto_logon       = true
  is_windows_image = var.is_windows_image
  firmware         = var.firmware
  local_adminpass  = var.local_adminpass
}
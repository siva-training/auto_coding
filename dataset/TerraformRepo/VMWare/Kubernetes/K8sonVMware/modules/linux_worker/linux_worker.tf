module "k8s-linux-workers" {
  source          = "Terraform-VMWare-Modules/vm/vsphere"
  version         = "3.1.0"
  vmtemp          = var.linux_vmtemplate
  vmrp            = var.vm_resourcepool
  dc              = var.datacenter
  vmname          = var.linux_worker_vmname
  instances       = var.worker_instance_count
  network         = var.network
  vmgateway       = var.vmgateway
  datastore       = var.datastore
  dns_server_list = var.dns_server_list
  vmfolder        = var.vmfolder
  annotation      = var.annotation
  tags = merge(
    var.tags,
  )
}
# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = var.vmwareuser
  password       = var.vmwarepassword
  vsphere_server = var.vsphere_server

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

//--------------------------------------------------------------------
// Variables
variable "appx_cpu_count" {}
variable "appx_disk_size" {}
variable "appx_memory" {}
variable "appx_tag_name" {}
variable "appx_vm_count" {}
variable "appx_vm_name" {}

//---------------------------------------------------------------------
// Providers
provider "infoblox" {
    username = "${var.infoblox_username}"
    password = "${var.infoblox_password}"
    host  = "${var.infoblox_host}"
    sslverify = "${var.infoblox_sslverify}"
    usecookies = "${var.infoblox_usecookies}"
}


//--------------------------------------------------------------------
// Modules
module "appx" {
  source  = "ptfe.this-demo.rocks/VinnieSEDemos/appx/vsphere"
  version = "1.2"

  cpu_count = "${var.appx_cpu_count}"
  disk_size = "${var.appx_disk_size}"
  memory = "${var.appx_memory}"
  tag_name = "${var.appx_tag_name}"
  vm_count = "${var.appx_vm_count}"
  vm_name = "${var.appx_vm_name}"
}

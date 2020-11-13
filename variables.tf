variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}

variable "dc" {
  default     = "wdc-06-vc12"
}

variable "cluster" {
  default     = "wdc-06-vc12c01"
}

variable "datastore" {
  default     = "wdc-06-vc12c01-vsan"
}

variable "networkMgt" {
  default     = "vxw-dvs-34-virtualwire-3-sid-6120002-wdc-06-vc12-avi-mgmt"
}

variable "folder" {
  default     = "NicolasTfControllers"
}

variable "resource_pool" {
  default     = "wdc-06-vc12c01/Resources"
}

variable "controller" {
  type = map
  default = {
    cpu = 8
    memory = 24768
    disk = 128
    count = "3"
    version = "20.1.1-9071"
    wait_for_guest_net_timeout = 2
    mgmt_ip = "10.0.0.201"
    mgmt_mask = "255.255.255.0"
    default_gw = "10.0.0.1"
  }
}

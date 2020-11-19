variable "vsphere_user" {}
variable "vsphere_password" {}
variable "vsphere_server" {}
#
# Other Variables
#
variable "vcenter" {
  type = map
  default = {
    dc = "sof2-01-vc08"
    cluster = "sof2-01-vc08c01"
    datastore = "sof2-01-vc08c01-vsan"
    resource_pool = "sof2-01-vc08c01/Resources"
    folder = "NicTfControllers"
  }
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
    networks = ["vxw-dvs-34-virtualwire-3-sid-1080002-sof2-01-vc08-avi-mgmt", "vxw-dvs-34-virtualwire-3-sid-1080002-sof2-01-vc08-avi-mgmt", "vxw-dvs-34-virtualwire-3-sid-1080002-sof2-01-vc08-avi-mgmt"]
    mgmt_ips = ["10.41.134.127", "10.41.134.128", "10.41.134.129"]
    mgmt_masks = ["255.255.252.0", "255.255.252.0", "255.255.252.0"]
    default_gws = ["10.41.132.1", "10.41.132.1", "10.41.132.1"]
  }
}

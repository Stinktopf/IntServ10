variable "dns_server" {
  type = list(string)
  description = "DNS server which is resolving requests for your rancher server"
  default = ["8.8.8.8"]
}

variable "rancher_version" {
  type = string
  description = "Rancher version"
  default = "stable"
}

variable "rancher_admin_password" {
  type = string
  description = "Password for admin login"
  default = "password"
}

variable "prefix" {
  type = string
  description = "Prefix for created ressources"
}

variable "rancher_server_flavor" {
  type = string
  description = "Rancher server flavor"
  default = "m1.medium"
}
variable "rancher_node_image_id" {
  type = string
  description = "Ubuntu Image ID for instances"
}

variable "external_network" {
  type = string
  description = "Name of the external network, your OpenStack is connected to"
  default = "Public_Network"
}

variable "subnet_cidr" {
  type = string
  description = "OpenStack subnet CIDR where instances IPs will be assigned"
  default = "192.168.201.0/24"
}

variable "ip_pool_name" {
  type = string
  description = "Floating IP pool of your OpenStack"
  default = "Public_Network"
}

variable "public_key" {
  type = string
  description = "SSH Public key content to be injected instances"
}

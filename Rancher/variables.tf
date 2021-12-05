variable "dns_server" {
  type = list(string)
  description = "DNS server which is resolving requests for your rancher server"
  default = ["8.8.8.8"]
}

variable "rancher_version" {
  type = string
  description = "Rancher2 server image tag"
  default = "stable"
}

variable "cluster_name" {
  type = string
  default = "rke_cluster"
}
variable "rancher_admin_password" {
  type = string
  description = "Admin user password for Rancher2 web login"
  default = "IDontWorkOnVersion2Point6Point2SoIgnoreMe"
}

variable "prefix" {
  type = string
  description = "A prefix for created resources to avoid clashing names"
}

variable "rancher_server_flavor" {
  type = string
  description = "Rancher2 server node types, in term CPU, Memory and Bandwith"
  default = "R1-Generic-8"
}
variable "rancher_node_image_id" {
  type = string
  description = "Image ID which instances will created from. Ubuntu Image ID"
}

variable "external_network" {
  type = string
  description = "Openstack External network name to connect nodes to outside world"
  default = "Public_Network"
}

variable "subnet_cidr" {
  type = string
  description = "Openstack subnet CIDR where instances IPs will be assigned"
  default = "192.168.201.0/24"

}

variable "ip_pool_name" {
  type = string
  description = "Openstack Floating IP allocation pool name"
  default = "Public_Network"
}

variable "public_key" {
  type = string
  description = "SSH Public key content to be imported and used into created instances"
}

# Creating openstack network
resource "openstack_networking_network_v2" "demo_network" {
  name           = "${var.prefix}-rancher"
  admin_state_up = "true"
}

# Creating openstack subnet with CIDR
resource "openstack_networking_subnet_v2" "demo_subnet" {
  name       = "${var.prefix}-rancher"
  network_id = openstack_networking_network_v2.demo_network.id
  cidr       = var.subnet_cidr
  ip_version = 4
  dns_nameservers = var.dns_server
  depends_on = [openstack_networking_network_v2.demo_network]
}

# Creating openstack router
resource "openstack_networking_router_v2" "demo_router" {
  name                = "${var.prefix}-rancher"
  external_network_id = data.openstack_networking_network_v2.external_network.id
}

# Creating router interface and attaching subnet to the router to make it reach the outside networks
resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = openstack_networking_router_v2.demo_router.id
  subnet_id = openstack_networking_subnet_v2.demo_subnet.id
}

# Allocating public Ip addresses for rancher server
resource "openstack_networking_floatingip_v2" "rancher_server_ip" {
  pool = var.ip_pool_name
}

# Attaching Floating IP to rancher server
resource "openstack_compute_floatingip_associate_v2" "rancher_server_ip_attach" {
  floating_ip = openstack_networking_floatingip_v2.rancher_server_ip.address
  instance_id = openstack_compute_instance_v2.rancher_server[0].id
  depends_on  = [openstack_compute_instance_v2.rancher_server]
}

# Creating Rancher Server instance
resource "openstack_compute_instance_v2" "rancher_server" {
  count           = "1"
  name            = "${var.prefix}-rancherserver"
  flavor_name     = var.rancher_server_flavor
  image_id        = var.rancher_node_image_id
  key_pair        = openstack_compute_keypair_v2.demo_keypair.name
  security_groups = [openstack_networking_secgroup_v2.demo_secgroup.name]
  user_data       = data.template_file.cloud-config-rancher.rendered
  metadata            = {
    clustername="${var.cluster_name}"
    type="provisioner"
    }

  network {
    name = openstack_networking_network_v2.demo_network.name
  }

  lifecycle {
    ignore_changes = [
      user_data,
    ]
  }

  depends_on = [openstack_compute_keypair_v2.demo_keypair, openstack_networking_subnet_v2.demo_subnet, openstack_networking_floatingip_v2.rancher_server_ip]
}

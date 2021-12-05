# Retrieving external network infromation
data "openstack_networking_network_v2" "external_network" {
  name = var.external_network
}

# Cloud-init file for Rancher2 server instance.
# Installs the required packages, Imports SSH key, and Runs rancher2 docker container as systemd.service
data "template_file" "cloud-config-rancher" {
  template = file("./rancher-cloud-init.yaml")
  vars = {
    ssh_public_key  = openstack_compute_keypair_v2.demo_keypair.public_key
    rancher_version = var.rancher_version
  }
}

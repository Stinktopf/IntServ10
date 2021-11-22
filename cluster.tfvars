# your Kubernetes cluster name here
cluster_name = "JupyterHub"

dns_nameservers=["8.8.4.4", "8.8.8.8"]

# SSH key to use for access to nodes
public_key_path = "~/.ssh/id_rsa.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Ubuntu 20.04 - Focal Fossa - 64-bit - Cloud Based Image"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "ubuntu"

# 0|1 bastion nodes
number_of_bastions = 0
flavor_bastion = "2"

# standalone etcds
number_of_etcd = 0
flavor_etcd = "2"

# masters
number_of_k8s_masters = 1

number_of_k8s_masters_no_etcd = 0

number_of_k8s_masters_no_floating_ip = 0

number_of_k8s_masters_no_floating_ip_no_etcd = 0

flavor_k8s_master = "2"

# nodes
number_of_k8s_nodes = 0

number_of_k8s_nodes_no_floating_ip = 2

flavor_k8s_node = "2"

# GlusterFS
# either 0 or more than one
# number_of_gfs_nodes_no_floating_ip = 0
# gfs_volume_size_in_gb = 5
# Container Linux does not support GlusterFS
image_gfs = "Ubuntu 20.04 - Focal Fossa - 64-bit - Cloud Based Image"
# May be different from other nodes
ssh_user_gfs = "ubuntu"
flavor_gfs_node = "2"

# networking
network_name = "JupyterHubNet"

external_net = "c5ed0f0a-..."

subnet_cidr = "192.168.255.0/24"

floatingip_pool = "public1"

bastion_allowed_remote_ips = ["0.0.0.0/0"]

# grant volume to master root, this is important or your may quickly running out of storage in the future
master_root_volume_size_in_gb = 10
node_root_volume_size_in_gb = 5

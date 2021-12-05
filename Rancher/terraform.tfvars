# ATTENTION: Please have a look into secgroups.tf and make sure, that the open ports do not endanger your network security!

# please fill these variables or use TF_VARS_ prefix to be exported env variables
openstack_project = "<project-name>"
openstack_username = "<username>"
openstack_password = "<password>"
openstack_auth_url = "<auth-url>"
openstack_domain   = "<domain>"
public_key         = "<content-of-ssh-public-key>"

# DNS server
dns_server = ["<dns-server-adress>"]

# Name of floating IP pool
ip_pool_name = "<floating-ip-pool>"

# ID of External Network
external_network = "<external-net>"

# Resources will be prefixed with this to avoid clashing names
prefix = "<instance-prefix>"

# Nodes server Image ID
rancher_node_image_id = "<image-id-for-the-instance>"

# Server flavor
rancher_server_flavor = "<flavor-name>"

# Name of custom cluster that will be created
cluster_name = "<cluster-name>"

# rancher/rancher image tag to use
rancher_version = "v2.6.2"

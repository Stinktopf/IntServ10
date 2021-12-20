# ATTENTION: Please have a look into secgroups.tf and make sure, that the open ports do not endanger your network security!

# Please fill in these variables of your OpenStack
openstack_project = "<project-name>"
openstack_username = "<username>"
openstack_password = "<password>"
openstack_auth_url = "<auth-url>"
openstack_domain   = "<domain>"
public_key         = "<content-of-ssh-public-key>"

# Rancher password for admin
rancher_admin_password = "<password>"

# DNS server (defaults to 8.8.8.8)
dns_server = ["<dns-server-adress>"]

# Name of floating IP pool
ip_pool_name = "<floating-ip-pool>"

# ID of external network
external_network = "<external-net>"

# Resources will be prefixed with this to avoid clashing names
prefix = "<instance-prefix>"

# OpenStack Ubuntu image ID
rancher_node_image_id = "<image-id-for-the-instance>"

# OpenStack instance flavor
rancher_server_flavor = "<flavor-name>"

# Rancher version
rancher_version = "v2.6.2"

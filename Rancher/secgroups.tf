# Creating Openstack security groups
resource "openstack_networking_secgroup_v2" "demo_secgroup" {
  name        = "${var.prefix}-demo"
  description = "demo security group"
}

# Creating Openstack security group rule for https 443
resource "openstack_networking_secgroup_rule_v2" "https" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for ssh 22
resource "openstack_networking_secgroup_rule_v2" "ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for all ports in same security group tcp
resource "openstack_networking_secgroup_rule_v2" "same_secgroup_ingress_tcp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  remote_group_id   = openstack_networking_secgroup_v2.demo_secgroup.id
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for all ports in same security group udp
resource "openstack_networking_secgroup_rule_v2" "same_secgroup_ingress_udp" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  remote_group_id   = openstack_networking_secgroup_v2.demo_secgroup.id
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 6443
resource "openstack_networking_secgroup_rule_v2" "in6443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 6443
resource "openstack_networking_secgroup_rule_v2" "out6443" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6443
  port_range_max    = 6443
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for udp 8472
resource "openstack_networking_secgroup_rule_v2" "in8472" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 8472
  port_range_max    = 8472
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for udp 8472
resource "openstack_networking_secgroup_rule_v2" "out8472" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 8472
  port_range_max    = 8472
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 10250
resource "openstack_networking_secgroup_rule_v2" "in10250" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10250
  port_range_max    = 10250
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 10250
resource "openstack_networking_secgroup_rule_v2" "out10250" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10250
  port_range_max    = 10250
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2376
resource "openstack_networking_secgroup_rule_v2" "in2376" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2376
  port_range_max    = 2376
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2376
resource "openstack_networking_secgroup_rule_v2" "out2376" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2376
  port_range_max    = 2376
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2379
resource "openstack_networking_secgroup_rule_v2" "in2379" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2379
  port_range_max    = 2379
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2379
resource "openstack_networking_secgroup_rule_v2" "out2379" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2379
  port_range_max    = 2379
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2380
resource "openstack_networking_secgroup_rule_v2" "in2380" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2380
  port_range_max    = 2380
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 2380
resource "openstack_networking_secgroup_rule_v2" "out2380" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 2380
  port_range_max    = 2380
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 9099
resource "openstack_networking_secgroup_rule_v2" "in9099" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 9099
  port_range_max    = 9099
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 9099
resource "openstack_networking_secgroup_rule_v2" "out9099" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 9099
  port_range_max    = 9099
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 10254
resource "openstack_networking_secgroup_rule_v2" "in10254" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10254
  port_range_max    = 10254
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 10254
resource "openstack_networking_secgroup_rule_v2" "out10254" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 10254
  port_range_max    = 10254
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 9345
resource "openstack_networking_secgroup_rule_v2" "in9345" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 9345
  port_range_max    = 9345
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 9345
resource "openstack_networking_secgroup_rule_v2" "out9345" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 9345
  port_range_max    = 9345
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 30000 - 32767
resource "openstack_networking_secgroup_rule_v2" "in30k" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 30000
  port_range_max    = 32767
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for tcp 30000 - 32767
resource "openstack_networking_secgroup_rule_v2" "out30k" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 30000
  port_range_max    = 32767
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for http 8080
resource "openstack_networking_secgroup_rule_v2" "in8080" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8080
  port_range_max    = 8080
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for http 8080
resource "openstack_networking_secgroup_rule_v2" "out8080" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8080
  port_range_max    = 8080
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for https 8443
resource "openstack_networking_secgroup_rule_v2" "in8443" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8443
  port_range_max    = 8443
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

# Creating Openstack security group rule for https 8443
resource "openstack_networking_secgroup_rule_v2" "out8443" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8443
  port_range_max    = 8443
  security_group_id = openstack_networking_secgroup_v2.demo_secgroup.id
  depends_on        = [openstack_networking_secgroup_v2.demo_secgroup]
}

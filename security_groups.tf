resource "openstack_networking_secgroup_v2" "ssh_security_group" {
  name        = "grupo-7-projeto-ssh-sc"
  description = "Allow SSH"
}

resource "openstack_networking_secgroup_rule_v2" "ssh_rule" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.ssh_security_group.id
}

# Grupo de segurança para o control node
resource "openstack_networking_secgroup_v2" "control_node_security_group" {
  name        = "grupo-7-projeto-control-node-sc"
  description = "Security group for control node"
}

resource "openstack_networking_secgroup_rule_v2" "control_node_ports" {
  count            = 6
  direction        = "ingress"
  ethertype        = "IPv4"
  protocol         = "tcp"
  port_range_min   = element([10259, 8080, 10248, 10257, 2379, 6443], count.index)
  port_range_max   = element([10259, 8080, 10248, 10257, 2380, 6443], count.index)
  remote_ip_prefix = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.control_node_security_group.id
}

# Grupo de segurança para work nodes
resource "openstack_networking_secgroup_v2" "work_node_security_group" {
  name        = "grupo-7-projeto-work-node-sc"
  description = "Security group for work nodes"
}

resource "openstack_networking_secgroup_rule_v2" "work_node_ports" {
  count            = 5
  direction        = "ingress"
  ethertype        = "IPv4"
  protocol         = "tcp"
  port_range_min   = element([10256, 30000, 32500, 10250, 8080], count.index)
  port_range_max   = element([10256, 32767, 32500, 10250, 8080], count.index)
  remote_ip_prefix = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.work_node_security_group.id
}

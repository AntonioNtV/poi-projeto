
resource "openstack_lb_member_v2" "member_control_node" {
  pool_id       = openstack_lb_pool_v2.control_node_pool.id
  address       = openstack_compute_instance_v2.control_node.access_ip_v4
  protocol_port = 22
  subnet_id     = var.subnet_id
}

resource "openstack_lb_member_v2" "member_work_node_1" {
  pool_id       = openstack_lb_pool_v2.work_node_1_pool.id
  address       = openstack_compute_instance_v2.work_node_1.access_ip_v4
  protocol_port = 22
  subnet_id     = var.subnet_id
}

resource "openstack_lb_member_v2" "member_work_node_2" {
  pool_id       = openstack_lb_pool_v2.work_node_2_pool.id
  address       = openstack_compute_instance_v2.work_node_2.access_ip_v4
  protocol_port = 22
  subnet_id     = var.subnet_id
}


resource "openstack_lb_member_v2" "member_work_node_1_application" {
  pool_id       = openstack_lb_pool_v2.work_node_1_application_pool.id
  address       = openstack_compute_instance_v2.work_node_1.access_ip_v4
  protocol_port = 32500
  subnet_id     = var.subnet_id
}
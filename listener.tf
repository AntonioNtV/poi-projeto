resource "openstack_lb_listener_v2" "listener_control_node" {
  name           = "grupo-7-projeto-listener-control-node"
  loadbalancer_id = var.loadbalancer_id
  protocol       = "TCP"
  protocol_port  = 11505
}

resource "openstack_lb_listener_v2" "listener_work_node_1" {
  name           = "grupo-7-projeto-listener-work-node-1"
  loadbalancer_id = var.loadbalancer_id
  protocol       = "TCP"
  protocol_port  = 11506
}

resource "openstack_lb_listener_v2" "listener_work_node_2" {
  name           = "grupo-7-projeto-listener-work-node-2"
  loadbalancer_id = var.loadbalancer_id
  protocol       = "TCP"
  protocol_port  = 11507
}
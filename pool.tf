resource "openstack_lb_pool_v2" "control_node_pool" {
  name            = "grupo-7-projeto-control-node-pool"
  protocol        = "TCP"
  lb_method       = "ROUND_ROBIN"
  listener_id     = openstack_lb_listener_v2.listener_control_node.id
}

resource "openstack_lb_pool_v2" "work_node_1_pool" {
  name            = "grupo-7-projeto-work-node-1-pool"
  protocol        = "TCP"
  lb_method       = "ROUND_ROBIN"
  listener_id     = openstack_lb_listener_v2.listener_work_node_1.id
}

resource "openstack_lb_pool_v2" "work_node_2_pool" {
  name            = "grupo-7-projeto-work-node-2-pool"
  protocol        = "TCP"
  lb_method       = "ROUND_ROBIN"
  listener_id     = openstack_lb_listener_v2.listener_work_node_2.id
}

resource "openstack_lb_pool_v2" "work_node_1_application_pool" {
  name            = "grupo-7-projeto-work-node-1-application-pool"
  protocol        = "HTTP"
  lb_method       = "ROUND_ROBIN"
  listener_id     = openstack_lb_listener_v2.listener_work_node_1_http.id
}
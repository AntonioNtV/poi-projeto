resource "openstack_compute_instance_v2" "control_node" {
  name            = "grupo-7-projeto-control-node"
  flavor_name     = var.instance_flavor
  image_name      = var.image_name
  key_pair        = var.key_pair
  security_groups = [
    openstack_networking_secgroup_v2.ssh_security_group.name,
    openstack_networking_secgroup_v2.control_node_security_group.name
  ]
  network {
    uuid = var.network_id
  }
}

resource "openstack_compute_instance_v2" "work_node_1" {
  name            = "grupo-7-projeto-work-node-1"
  flavor_name     = var.instance_flavor
  image_name      = var.image_name
  key_pair        = var.key_pair
  security_groups = [
    openstack_networking_secgroup_v2.ssh_security_group.name,
    openstack_networking_secgroup_v2.work_node_security_group.name
  ]
  network {
    uuid = var.network_id
  }
}

resource "openstack_compute_instance_v2" "work_node_2" {
  name            = "grupo-7-projeto-work-node-2"
  flavor_name     = var.instance_flavor
  image_name      = var.image_name
  key_pair        = var.key_pair
  security_groups = [
    openstack_networking_secgroup_v2.ssh_security_group.name,
    openstack_networking_secgroup_v2.work_node_security_group.name
  ]
  network {
    uuid = var.network_id
  }
}

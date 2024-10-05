variable "instance_flavor" {
  default = "general.medium"
}

variable "image_name" {
  default = "ubuntu-22.04"
}

variable "key_pair" {
  default = "antonio-neto-ssh-keys"
}

variable "network_id" {
  default = "8e9133dd-0907-42f2-866d-c7ad2af7eb9c"
}


variable "loadbalancer_id" {
  default = "887e9ffd-790a-47a1-b9d7-bc8073dc4931"
}

variable "subnet_id" {
  default = "17de9c72-e5dc-4da0-ae0a-013f7e42400e"
}

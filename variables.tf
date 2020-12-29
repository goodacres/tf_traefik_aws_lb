variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "subnet_private" {
  type = list
}

variable "global_tags" {
  type = map
  description = "A map of tags to apply to all AWS resources that support tags"
}

variable "production_vpc_id" {
  type = string
}
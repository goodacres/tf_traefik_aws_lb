resource "aws_lb" "traefik" {
  name = "${var.cluster_name}-traefik"

  internal           = true
  load_balancer_type = "network"
  subnets            = [var.subnet_private[0], var.subnet_private[1]]

  
  tags = merge(var.global_tags, {
    Name = "${var.cluster_name}-traefik"
  })
}
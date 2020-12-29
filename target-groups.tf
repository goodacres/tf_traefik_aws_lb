resource "aws_lb_target_group" "workers_traefik_http" {
  name       = "${var.cluster_name}-traefik-http"
  port       = "80"
  protocol   = "TCP"
  vpc_id     = var.production_vpc_id

  tags = merge(var.global_tags, {
    Name = "${var.cluster_name}-traefik-http"
  })
}

resource "aws_lb_target_group" "workers_traefik_https" {
  name     = "${var.cluster_name}-traefik-https"
  port     = "443"
  protocol = "TCP"
  vpc_id   = var.production_vpc_id

  tags = merge(var.global_tags, {
    Name = "${var.cluster_name}-traefik-https"
  })
}
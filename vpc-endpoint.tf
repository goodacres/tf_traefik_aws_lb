resource "aws_vpc_endpoint_service" "aws-endpoint-service" {
  acceptance_required        = false
  network_load_balancer_arns = [ aws_lb.traefik.arn ]

  tags = merge(var.global_tags, {
    Name = "${var.cluster_name}-endpoint-service"
  })
} 
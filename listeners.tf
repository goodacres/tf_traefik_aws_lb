resource "aws_lb_listener" "traefik_http" {
  load_balancer_arn = aws_lb.traefik.arn
  port              = "80"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.workers_traefik_http.arn
  }
}

resource "aws_lb_listener" "traefik_https" {
  load_balancer_arn = aws_lb.traefik.arn
  port              = "443"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.workers_traefik_https.arn
  }
}

output "http_tg_arn" {
  value = aws_lb_target_group.workers_traefik_http.arn
}

output "https_tg_arn" {
  value = aws_lb_target_group.workers_traefik_https.arn
}
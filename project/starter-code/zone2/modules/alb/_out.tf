output "alb_dns_name" {
  value = aws_lb.udacity.dns_name
}

output "alb_sg" {
  value = aws_security_group.alb_sg.id
}
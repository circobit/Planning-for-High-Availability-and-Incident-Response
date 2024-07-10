resource "aws_lb" "udacity" {
  name               = "udacity-alb-${var.zone}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = var.public_subnet_ids

  enable_deletion_protection = false

  tags = {
    Name = "udacity_alb"
  }
}

resource "aws_lb_target_group" "udacity" {
  name        = "tf-udacity-lb-alb-tg"
  target_type = "ip"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
}

resource "aws_lb_target_group_attachment" "udacity" {
  for_each = {
    for private_ip, instance in var.ec2_instances :
    private_ip => instance
  }

  target_group_arn = aws_lb_target_group.udacity.arn
  target_id        = each.value.private_ip
  port             = 80
}

resource "aws_lb_listener" "udacity" {
  load_balancer_arn = aws_lb.udacity.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.udacity.arn
  }
}

resource "aws_security_group" "alb_sg" {
  name        = "alb_sg"
  vpc_id      = var.vpc_id

  ingress {    
    description = "web port"
    from_port   = 80    
    to_port     = 80
    protocol    = "tcp"    
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alb_sg"
  }
}
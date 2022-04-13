# Add output variables
output "lb_id" {
  description = "load balancer ID"
  value       = concat(aws_lb.alb.*.id, [""])[0]
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = concat(aws_lb.alb.*.dns_name, [""])[0]
}

output "lb_arn" {
  description = "load balancer ARN"
  value       = concat(aws_lb.alb.*.arn, [""])[0]
}
output "target_group_names" {
  description = "Name of the target group"
  value       = aws_lb_target_group.target_group.*.name
}
output "target_group_arns" {
  description = "the target groups ARN"
  value       = aws_lb_target_group.target_group.*.arn
}
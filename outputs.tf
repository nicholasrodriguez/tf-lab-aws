output "public_dns_name" {
  description = "Public DNS names of the load balancer for this project"
  value       = module.elb_http.this_elb_dns_name
}

output "azs" {
  description = "AWS region"
  value       = data.aws_availability_zones.available.names
}

output "aws_region" {
  description = "AWS region"
  value       = data.aws_region.current.name
}

output "lb_security_group_ids" {
  description = "Security group IDs for load balancer"
  value       = [module.lb_security_group.this_security_group_id]
}

output "app_security_group_ids" {
  description = "Security group IDs for application servers"
  value       = [module.app_security_group.this_security_group_id]
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnets
}

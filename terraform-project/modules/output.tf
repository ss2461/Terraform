output "security_group_id" {
  description = "ID of the security group created"
  value       = module.web_sg.security_group_id
}
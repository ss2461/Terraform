output "security_group_id" {
  description = "ID of the security group created"
  value       = module.web_sg.security_group_id
}
output "s3_bucket_id" {
  description = "S3 bucket ID"
  value       = module.my_s3_bucket.s3_bucket_id
}
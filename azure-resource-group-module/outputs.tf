output "resource_group_id" {
  description = "Resource Group ID returned by the child module"
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
  description = "Resource Group Name returned by the child module"
  value       = module.resource_group.resource_group_name
}

output "resource_group_location" {
  description = "Resource Group Location returned by the child module"
  value       = module.resource_group.resource_group_location
}

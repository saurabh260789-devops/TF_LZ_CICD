variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where the Resource Group should be created."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the Resource Group."
  type        = map(string)
  default     = {}
}

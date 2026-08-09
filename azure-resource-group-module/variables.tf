variable "rg_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "rg-example-parent-child"
}

variable "rg_location" {
  description = "Azure Region for the Resource Group"
  type        = string
  default     = "East US"
}

variable "rg_tags" {
  description = "Tags for the Resource Group"
  type        = map(string)
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
    Project     = "Azure-Demo"
  }
}

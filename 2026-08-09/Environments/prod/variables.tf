variable "location" { type = string }
variable "rg_name" { type = string }
variable "vnet_name" { type = string }
variable "vnet_address_space" { type = list(string) }
variable "subnet_name" { type = string }
variable "subnet_prefixes" { type = list(string) }

variable "tags" {
	type    = map(string)
	default = {}
}

variable "admin_username" { type = string }
variable "admin_password" { type = string }

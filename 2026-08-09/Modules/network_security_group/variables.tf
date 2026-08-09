variable "name" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }

variable "allow_ssh" {
	type    = bool
	default = true
}

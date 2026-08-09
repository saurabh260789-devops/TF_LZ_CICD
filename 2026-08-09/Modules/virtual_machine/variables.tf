variable "name" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
variable "subnet_id" { type = string }

variable "public_ip_id" {
	type    = string
	default = null
}

variable "vm_size" {
	type    = string
	default = "Standard_B1ms"
}

variable "admin_username" { type = string }
variable "admin_password" { type = string }

variable "image_publisher" {
	type    = string
	default = "Canonical"
}

variable "image_offer" {
	type    = string
	default = "UbuntuServer"
}

variable "image_sku" {
	type    = string
	default = "18.04-LTS"
}

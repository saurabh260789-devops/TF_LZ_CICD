This folder contains Terraform child modules and environment configurations (dev/prod).

Usage:

1. Configure Azure credentials as environment variables (`ARM_SUBSCRIPTION_ID`, `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`).
2. Initialize and plan in an environment folder, e.g. `cd Environments/dev` then `terraform init` and `terraform plan -var-file=terraform.tfvars`.

Customize variables in the `terraform.tfvars` files per environment.

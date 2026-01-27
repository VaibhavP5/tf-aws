## **What is Terraform?**
**Terraform is an open-source Infrastructure as Code tool that allows you to define, provision, and manage infrastructure using declarative configuration files.**
> #### How Terraform Works:
- **Write Terraform files → Run Terraform commands → Call AWS APIs through Terraform Provider**
> ### Terraform Workflow Phases:
- **`terraform init`** - Initialize the working directory.
- **`terraform validate`** - Validate the configuration files.
- **`terraform plan`** - Create an execution plan.
- **`terraform apply`** - Apply the changes to reach desired state.
- **`terraform destroy`** - Destroy the infrastructure when needed.
#### Install Terraform:
Follow the installation guide: https://developer.hashicorp.com/terraform/install
#### Setup Commands:
> - **`terraform -install-autocomplete`**
> - **`alias tf=terraform`**
> -  **`tf version`**
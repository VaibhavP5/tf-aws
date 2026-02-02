## File Structure
### Terraform File Loading
- Terraform loads all `.tf` files in the current directory
- Files are loaded in lexicographical order (alphabetical)
- File names don't affect functionality, only organization
- All `.tf` files are merged into a single configuration
**Recommended File Structure**
```bash
project-root/
├── backend.tf           # Backend configuration
├── provider.tf          # Provider configurations
├── variables.tf         # Input variable definitions
├── locals.tf           # Local value definitions
├── main.tf             # Main resource definitions
├── vpc.tf              # VPC-related resources
├── security.tf         # Security groups, NACLs
├── compute.tf          # EC2, Auto Scaling, etc.
├── storage.tf          # S3, EBS, EFS resources
├── database.tf         # RDS, DynamoDB resources
├── outputs.tf          # Output definitions
├── terraform.tfvars   # Variable values
└── README.md           # Documentation
```
#### File Organization Principles
- **Separation of Concerns:** Group related resources together
- **Logical Grouping:** Organize by service or function
- **Consistent Naming:** Use clear, descriptive file names
- **Modular Approach:** Keep files focused on specific areas
- **Documentation:** Include README and comments
### Advanced File Organization Patterns
##### **Environment-Specific Structure**
```bash
environments/
├── dev/
│   ├── backend.tf
│   ├── terraform.tfvars
│   └── main.tf
├── staging/
│   ├── backend.tf
│   ├── terraform.tfvars
│   └── main.tf
└── production/
    ├── backend.tf
    ├── terraform.tfvars
    └── main.tf

modules/
├── vpc/
├── security/
└── compute/

shared/
├── variables.tf
├── outputs.tf
└── locals.tf
```
##### **Service-Based Structure**
```bash
infrastructure/
├── networking/
│   ├── vpc.tf
│   ├── subnets.tf
│   └── routing.tf
├── security/
│   ├── security-groups.tf
│   ├── nacls.tf
│   └── iam.tf
├── compute/
│   ├── ec2.tf
│   ├── autoscaling.tf
│   └── load-balancers.tf
├── storage/
│   ├── s3.tf
│   ├── ebs.tf
│   └── efs.tf
└── data/
    ├── rds.tf
    ├── dynamodb.tf
    └── elasticache.tf
```
#### Best Practices
- **Consistent Naming**
    - Use clear, descriptive file names
    - Follow team conventions
    - Use lowercase with hyphens or underscores
- **Logical Grouping**
    - Group related resources together
    - Separate by AWS service or function
    - Consider dependencies when organizing
- **Size Management**
    - Keep files manageable (< 500 lines)
    - Split large files by functionality
    - Use modules for reusable components
- **Dependencies**
    - Place provider and backend configs first
    - Define variables before using them
    - Output values at the end
- **Documentation**
    - Include README.md
    - Comment complex configurations
    - Document variable purposes
#### Commands for Testing
```bash
# Validate the reorganized structure
terraform validate

# Format all files consistently
terraform fmt -recursive

# Plan to ensure no changes
terraform plan

# Apply if everything looks good
terraform apply
```
#### Common File Organization Mistakes
- **Everything in main.tf** - Makes code hard to navigate
- **Inconsistent naming** - Confuses team members
- **Mixed concerns** - Resources that don't belong together
- **No documentation** - Difficult for others to understand
- **Overly complex structure** - Simple is often better
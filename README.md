# terraform-aws-module-s3
Terraform module for creating a basic AWS S3 bucket with essential configurations. Designed for simplicity and reusability.

### Structure

```bash
terraform-aws-module-s3/
├── main.tf
├── variables.tf
├── terraform.tfvars
└── module/
    └── s3/
        ├── s3.tf          
        └── variables.tf
```

### Key points:
Here, I want to write something related to **modules**:

- **The variables.tf that is in module directory, we declare variables.**

- **The variables.tf that is in main directory, we declare variables.**

- **In main.tf, we tell in a module block; for these, we have choosen these variables.** 

- **In terraform.tfvars , we initialize variable.**

  


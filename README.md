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

### ✅ Key Concepts About Terraform Modules

- The `variables.tf` file inside the **module directory** is used to **declare input variables** that the module expects.

- The `variables.tf` file in the **main (root) directory** is used to **declare variables** used across the root configuration.

- The `main.tf` file in the root directory contains the **module block**, where we **connect root variables to module variables**.

- In a `module` block:
  - The **left side** of the `=` must match the **variable name defined inside the module** (`modules/vpc/variables.tf`).
  - The **right side** of the `=` is the **variable declared in the root module** (`root variables.tf`).

- The `terraform.tfvars` file is used to **initialize (assign values to) the variables** declared in the root's `variables.tf`.

- Values flow like this:
```bash
terraform.tfvars → root variables.tf → module block (main.tf) → module variables.tf → resources
```



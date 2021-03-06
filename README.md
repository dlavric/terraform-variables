# Repository for learning Terraform
This repository has been created for learning the variables in Terraform

## This Repository will provide the output of the value of a variable

## Instructions

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/terraform-variables.git
```

- Go to the directory where the repo is stored and make sure the `main.tf` file is there too:
```shell
cd terraform-variables
```

- Initialize Terraform by running `terraform init` to download any external dependencies
```shell
terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/random...
- Installing hashicorp/random v3.1.0...
- Installed hashicorp/random v3.1.0 (signed by HashiCorp)

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with `terraform apply`
```shell
terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.var will be created
  + resource "random_pet" "var" {
      + id        = (known after apply)
      + length    = 1
      + separator = "-"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + var = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_pet.var: Creating...
random_pet.var: Creation complete after 0s [id=griffon]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

var = "griffon"
```

- To confirm the resources that have been created we can use `terraform state list`
```shell
terraform state list

random_pet.var
```


- Destroy the instance b running `terraform destroy`
```shell
terraform destroy

random_pet.var: Refreshing state... [id=griffon]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # random_pet.var will be destroyed
  - resource "random_pet" "var" {
      - id        = "griffon" -> null
      - length    = 1 -> null
      - separator = "-" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Changes to Outputs:
  - var = "griffon" -> null

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

random_pet.var: Destroying... [id=griffon]
random_pet.var: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```

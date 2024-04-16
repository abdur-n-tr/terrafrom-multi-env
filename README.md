# Terrafrom-Multi-Env

- You need to create `s3 bucket` and `dynamodb table` before running this project either manually or through some other terraform project.

- To setup, multi-env terraform project, we need to setup workspace for each environment.

```bash
terraform workspace new <workspace-name>    (to create new workspace)
terraform workspace select <workspace-name>     (to select existing workspace)
```

- When using `map type variable` in case of workspace, we can not explicitly create the same variable in `terraform.tfvars`, otherwise terraform will give error.

- Once created and selected a workspace, now you can run terraform commands as usual,

```bash
terraform init
terraform plan
terraform apply
```
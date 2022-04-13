# azuererm-api-gateway
Create an Azure API Gateway with Terraform

### Steps to run this repository,

- Login to Azure

```
$ az login
```
**Expected result:** 
```
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Subscription",
    "state": "Enabled",
    "tenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    "user": {
      "name": "namea@email.com",
      "type": "user"
    }
  }
]
```
- Run the first terraform command:
```
$ terraform init
```
**Expected result:** 
```
Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Validate your scripts: 
```
terraform validate
```
**Expected result:** 
```
$ terraform validate
Success! The configuration is valid.
```

- Run the *plan* command
```
$ terraform plan
```
**Expected result:** 
```
Plan: x to add, x to change, x to destroy.
```

- Apply your terraform plan:
```
$ terraform apply
```
**You are expected to enter ```yes```, at this prompt:**
```
Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

```
**Expected result:** 
```
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:
[values specified in the output file]
```

- To delete all provisioned resources, run:
```
$ terraform destroy
```
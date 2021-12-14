# Terraform Lumigo Module

Supports the creation of the required IAM role for [Lumigo] serverless integration

## How to use

```terraform
# -----------------------------------------------------------------------------
# Lumigo
# -----------------------------------------------------------------------------
module "lumigo" {
  source            = "github.com/waracle/tf-lumigo?ref=v1.0.0"
}

# This is the role_arn to add to lumigo when adding a new project
output "lumigo_role_arn" {
  value = module.lumigo.lumigo_role_arn
}
```

---

[Lumigo]: https://lumigo.io/


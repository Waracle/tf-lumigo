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
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Authors

Module managed by [Nick Hammond](https://github.com/nhammond101) on behalf of the Waracle team

Please reach out to [Waracle](https://waracle.com) if you are looking to build enterprise applications, especially in highly regulated industries.

## License

MIT Licensed. See [LICENSE](https://github.com/waracle/tf-lumigo/tree/main/LICENSE) for full details.

---

[Lumigo]: https://lumigo.io/


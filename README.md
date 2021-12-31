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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.27 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.27 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.lumigo_integration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.lumigo_integration_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.lumigo_integration_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.lumigo_integration_policies](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lumigo_role_arn"></a> [lumigo\_role\_arn](#output\_lumigo\_role\_arn) | The ARN of the generated Lumigo role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## Authors

Module managed by [Nick Hammond](https://github.com/nhammond101) on behalf of the Waracle team

Please reach out to [Waracle](https://waracle.com) if you are looking to build enterprise applications, especially in highly regulated industries.

## License

MIT Licensed. See [LICENSE](https://github.com/waracle/tf-lumigo/tree/main/LICENSE) for full details.

---

[Lumigo]: https://lumigo.io/


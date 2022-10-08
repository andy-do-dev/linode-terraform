# linode-terraform
Linode instance creation using Terraform.

Edit var_template to reflect account/indentity/dns variables, and rename
{something}.tf

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_linode"></a> [linode](#requirement\_linode) | 1.29.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_linode"></a> [linode](#provider\_linode) | 1.29.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [linode_domain.domain](https://registry.terraform.io/providers/linode/linode/1.29.2/docs/resources/domain) | resource |
| [linode_domain_record.arecord](https://registry.terraform.io/providers/linode/linode/1.29.2/docs/resources/domain_record) | resource |
| [linode_instance.terraform-web](https://registry.terraform.io/providers/linode/linode/1.29.2/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_authorized_keys"></a> [authorized\_keys](#input\_authorized\_keys) | my public key | `string` | `"{sensitive}"` | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | domain name | `string` | `"{sensitive}"` | yes |
| <a name="input_email"></a> [email](#input\_email) | required for DNS SOA | `string` | `"{sensitive}"` | yes |
| <a name="input_root_pass"></a> [root\_pass](#input\_root\_pass) | root password for generated instance | `string` | `"{sensitive}"` | yes |
| <a name="input_token"></a> [token](#input\_token) | linode api token | `string` | `"{sensitive}"` | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | Public IP of linode instance |

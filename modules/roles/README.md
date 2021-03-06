## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_instance\_profiles | Controls whether to create IAM instance profiles | string | `"false"` | no |
| create\_policies | Controls whether to create IAM policies; when false, `policy` must be an ARN | string | `"true"` | no |
| create\_roles | Controls whether to create IAM roles | string | `"true"` | no |
| max\_session\_duration | The maximum session duration (in seconds) for each role, value must be between 60 to 43200 seconds | string | `"43200"` | no |
| roles | Schema list of IAM roles, consisting of name, policy template, and trust template | list | `<list>` | no |
| tags | Map of tags to apply to the IAM roles | map | `<map>` | no |
| template\_paths | Paths to the directories containing the templates for IAM policies and trusts | list | n/a | yes |
| template\_vars | Map of input variables for IAM trust and policy templates. | map | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| role\_arns | Returns a map of role names and role arns |
| role\_ids | Returns a map of role names and role ids |

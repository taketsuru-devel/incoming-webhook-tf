variable "project_name" {
  description = "to name of resource"
}

variable "source_file" {
  description = "source path of lambda, single file"
}

variable "output_path" {
  description = "output path and filename of code of lambda, must be .zip"
}

variable "lambda_layers" {
  description = "array of lambda layer arn"
  type = list(string)
  default = []
}

variable "addditional_policy_for_lambda_iam" {
  description = "array of policy_arn for lambda_iam"
  type = list(string)
  default = []
}

variable "runtime" {
  description = "runtime name, e.g. python3.6"
}

variable "handler" {
  description = "entrypoint of source code, e.g. index.lambda_handler"
}

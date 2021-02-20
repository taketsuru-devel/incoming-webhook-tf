data "archive_file" "source_code" {
  type        = "zip"
  #source_file = "./src/index.py"
  #output_path = "./dist/source.zip"
  source_file = var.source_file
  output_path = var.output_path
}

resource "aws_lambda_function" "this" {
  function_name    = format("%s-lambda", var.project_name)
  role             = aws_iam_role.this.arn
  runtime          = var.runtime
  handler          = var.handler
  timeout          = 10
  layers           = var.lambda_layers
  filename         = data.archive_file.source_code.output_path
  source_code_hash = data.archive_file.source_code.output_base64sha256
}

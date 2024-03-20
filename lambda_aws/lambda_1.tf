resource "aws_lambda_function" "lambda_1" {
  function_name    = "lambda_1"
  description      = "Verifica o status_code do google"
  role             =  aws_iam_role.lambda_role_lambda_1.arn
  handler          = "lambda_1.lambda_handler"
  runtime          = "python3.10"
  timeout          = 300
  memory_size      = 256
  publish          = true
  source_code_hash = filebase64sha256("./files/zip/lambda_1.zip")
  tags             = var.tags
  filename         = "./files/zip/lambda_1.zip"
  layers = [
    "arn:aws:lambda:us-east-1:523616670904:layer:kidboo_layer:2"
  ]
}
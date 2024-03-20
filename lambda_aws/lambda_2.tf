resource "aws_lambda_function" "lambda_2" {
  function_name    = "lambda_2"
  description      = "Apenas Chama o metodo compartilhado"
  role             =  aws_iam_role.lambda_role_lambda_2.arn
  handler          = "lambda_2.lambda_handler"
  runtime          = "python3.10"
  timeout          = 300
  memory_size      = 256
  publish          = true
  source_code_hash = filebase64sha256("./files/zip/lambda_2.zip")
  tags             = var.tags
  filename         = "./files/zip/lambda_2.zip"
  layers = [
    "arn:aws:lambda:us-east-1:523616670904:layer:kidboo_layer:2"
  ]
}
resource "aws_scheduler_schedule" "call_lambda_1" {
  name       = "call_lambda_1"
  group_name = "default"

  flexible_time_window {
    mode = "OFF"
  }
  schedule_expression_timezone = "America/Sao_Paulo"
  schedule_expression = "cron(37 08 * * ? *)"

  target {
    arn      = aws_lambda_function.lambda_1.arn
    role_arn = aws_iam_role.scheduler_reset.arn
    
    input = jsonencode({
      host = "https://google.com"
    })
  }
}
resource "aws_iam_role" "lambda_role_lambda_1" {
  name                = "iam_role_lambda_1"
  tags                = var.tags
  assume_role_policy  = data.aws_iam_policy_document.lambda_1_policy.json
  managed_policy_arns = [aws_iam_policy.lambda_policy_lambda_1.arn]
}

resource "aws_iam_policy" "lambda_policy_lambda_1" {
  name        = "iam_policy_lambda_1"
  path        = "/"
  description = "AWS IAM Policy for managing aws lambda role"
  tags        = var.tags
  policy      = data.aws_iam_policy_document.lambda_1_log_policy.json
}

###
resource "aws_iam_role" "lambda_role_lambda_2" {
  name                = "iam_role_lambda_2"
  tags                = var.tags
  assume_role_policy  = data.aws_iam_policy_document.lambda_2_policy.json
  managed_policy_arns = [aws_iam_policy.lambda_policy_lambda_2.arn]
}

resource "aws_iam_policy" "lambda_policy_lambda_2" {
  name        = "iam_policy_lambda_2"
  path        = "/"
  description = "AWS IAM Policy for managing aws lambda role"
  tags        = var.tags
  policy      = data.aws_iam_policy_document.lambda_2_log_policy.json
}

###

resource "aws_iam_role" "scheduler_reset" {
  name = "cron-scheduler-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = ["scheduler.amazonaws.com"]
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
  tags             = var.tags
}

resource "aws_iam_role_policy_attachment" "scheduler_reset" {
  policy_arn = aws_iam_policy.scheduler_reset.arn
  role       = aws_iam_role.scheduler_reset.name
}

###

resource "aws_iam_policy" "scheduler_reset" {
  name = "cron-scheduler-policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "lambda:InvokeFunction"
        ]
        Resource = [aws_lambda_function.lambda_1.arn]
      },
      { 
        Effect = "Allow",
        Action = [
          "iam:PassRole"
        ]
        Resource = [aws_iam_role.lambda_role_lambda_1.arn]
      },
    ]
  })
  tags = var.tags
}
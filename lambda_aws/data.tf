data "aws_iam_policy_document" "lambda_1_policy" {
  statement {
    sid    = "RestartPulsePolicy"
    effect = "Allow"

    actions = [
      "sts:AssumeRole"

    ]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "lambda_1_log_policy" {
  statement {
    sid    = "RestartPulsePolicyLambdaLogPermissions"
    effect = "Allow"

    actions = [
      "logs:PutLogEvents",
      "logs:CreateLogStream",
      "logs:CreateLogGroup",
      "logs:DescribeLogStreams",
      "lambda:*",
      "sns:Publish*"
    ]

    resources = ["*"]
  }
  statement {
    effect = "Allow"

    actions = [
      "ec2:DescribeVpcEndpoints",
      "ec2:DescribeRouteTables",
      "ec2:CreateNetworkInterface",
      "ec2:DeleteNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSubnets",
      "ec2:DescribeVpcAttribute",
      "ec2:CreateTags",
      "ec2:DeleteTag",
      "secretsmanager:GetSecretValue"
    ]

    resources = [
      "*"
    ]
  }
}

data "aws_iam_policy_document" "lambda_2_policy" {
  statement {
    sid    = "RestartPulsePolicy"
    effect = "Allow"

    actions = [
      "sts:AssumeRole"

    ]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "lambda_2_log_policy" {
  statement {
    sid    = "RestartPulsePolicyLambdaLogPermissions"
    effect = "Allow"

    actions = [
      "logs:PutLogEvents",
      "logs:CreateLogStream",
      "logs:CreateLogGroup",
      "logs:DescribeLogStreams",
      "lambda:*",
      "sns:Publish*"
    ]

    resources = ["*"]
  }
  statement {
    effect = "Allow"

    actions = [
      "ec2:DescribeVpcEndpoints",
      "ec2:DescribeRouteTables",
      "ec2:CreateNetworkInterface",
      "ec2:DeleteNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSubnets",
      "ec2:DescribeVpcAttribute",
      "ec2:CreateTags",
      "ec2:DeleteTag",
      "secretsmanager:GetSecretValue"
    ]

    resources = [
      "*"
    ]
  }
}
resource "aws_lambda_function" "mixfast_lambda_authorizer" {
  function_name    = "${var.name}_lambda_authorizer"
  filename         = "mixfast_lambda.zip"
  source_code_hash = filebase64sha256("mixfast_lambda.zip")
  handler          = "index.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs18.x"

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.mixfast_security_group.id]
  }

  tags = var.tags
}
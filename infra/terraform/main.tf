resource "aws_lambda_function" "mixfast_lambda_authorizer" {
  function_name    = "${var.name}_lambda_authorizer"
  filename         = "mixfast_lambda.zip"
  source_code_hash = filebase64sha256("mixfast_lambda.zip")
  handler          = "index.handler"
  role             = "arn:aws:iam::022874923015:role/mixfast_lambda_role"
  runtime          = "nodejs18.x"

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [var.security_group]
  }

  tags = var.tags
}

resource "aws_lambda_permission" "mixfast_lambda_permission" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.mixfast_lambda_authorizer.function_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "arn:aws:execute-api:us-east-2:022874923015:w1bsr9aw46/*/*/*"
}
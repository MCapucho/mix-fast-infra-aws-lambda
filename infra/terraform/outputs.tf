output "lambda_invoke" {
  value = aws_lambda_function.mixfast_lambda_authorizer.invoke_arn
}
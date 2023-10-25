output "lambda_invoke" {
  value = aws_lambda_function.mixfast_lambda_authorizer.invoke_arn
}

output "lambda_invoke_create" {
  value = aws_lambda_function.mixfast_authorizer_cognito_create.invoke_arn
}

output "lambda_invoke_confirm" {
  value = aws_lambda_function.mixfast_authorizer_cognito_confirm.invoke_arn
}

output "lambda_invoke_login" {
  value = aws_lambda_function.mixfast_authorizer_cognito_login.invoke_arn
}
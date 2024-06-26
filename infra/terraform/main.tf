resource "aws_lambda_function" "mixfast_lambda_authorizer" {
  function_name    = "${var.name}_lambda_authorizer"
  filename         = "mixfast_lambda.zip"
  source_code_hash = filebase64sha256("mixfast_lambda.zip")
  handler          = "index.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs18.x"
  timeout          = 20
  memory_size      = 512

  depends_on = [
    aws_iam_role.lambda_role
  ]

  tags = var.tags
}

resource "aws_lambda_function" "mixfast_authorizer_cognito_triggers" {
  function_name    = "${var.name}_authorizer_cognito_triggers"
  filename         = "mixfast_authorizer_cognito_triggers.zip"
  source_code_hash = filebase64sha256("mixfast_authorizer_cognito_triggers.zip")
  handler          = "index.handler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "nodejs18.x"
  timeout          = 20
  memory_size      = 512

  depends_on = [
    aws_iam_role.lambda_role
  ]

  tags = var.tags
}

resource "aws_lambda_function" "mixfast_authorizer_cognito_create" {
  function_name    = "${var.name}_authorizer_cognito_create"
  filename         = "mixfast_authorizer_cognito.jar"
  source_code_hash = filebase64sha256("mixfast_authorizer_cognito.jar")
  handler          = "br.com.postech.mixfastauthorizer.CreateUserHandler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "java17"
  timeout          = 20
  memory_size      = 512

  environment {
    variables = {
      MY_COGNITO_POOL_APP_CLIENT_ID = var.client_id
    }
  }

  depends_on = [
    aws_iam_role.lambda_role
  ]

  tags = var.tags
}

resource "aws_lambda_function" "mixfast_authorizer_cognito_confirm" {
  function_name    = "${var.name}_authorizer_cognito_confirm"
  filename         = "mixfast_authorizer_cognito.jar"
  source_code_hash = filebase64sha256("mixfast_authorizer_cognito.jar")
  handler          = "br.com.postech.mixfastauthorizer.ConfirmUserHandler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "java17"
  timeout          = 20
  memory_size      = 512

  environment {
    variables = {
      MY_COGNITO_POOL_APP_CLIENT_ID = var.client_id
    }
  }

  depends_on = [
    aws_iam_role.lambda_role
  ]

  tags = var.tags
}

resource "aws_lambda_function" "mixfast_authorizer_cognito_login" {
  function_name    = "${var.name}_authorizer_cognito_login"
  filename         = "mixfast_authorizer_cognito.jar"
  source_code_hash = filebase64sha256("mixfast_authorizer_cognito.jar")
  handler          = "br.com.postech.mixfastauthorizer.LoginUserHandler"
  role             = aws_iam_role.lambda_role.arn
  runtime          = "java17"
  timeout          = 20
  memory_size      = 512

  environment {
    variables = {
      MY_COGNITO_POOL_APP_CLIENT_ID = var.client_id
    }
  }

  depends_on = [
    aws_iam_role.lambda_role
  ]

  tags = var.tags
}
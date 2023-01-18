
resource "aws_lambda_function" "terraformTest" {
  function_name    = "terraformTest"
  filename         = data.archive_file.lambda.output_path
  source_code_hash = data.archive_file.lambda.output_base64sha256
  role             = aws_iam_role.terraformTest-role-k2tv2t7m.arn
  handler          = "index.main"
  runtime          = "nodejs16.x"
}


resource "aws_lambda_function" "envriptPGP" {
  function_name    = "envriptPGP"
  filename         = data.archive_file.encript.output_path
  source_code_hash = data.archive_file.encript.output_base64sha256
  role             = aws_iam_role.terraformTest-role-k2tv2t7m.arn
  handler          = "encript.envriptPGP"
  runtime          = "nodejs16.x"
  layers           = [aws_lambda_layer_version.pgp_layer.arn]

}
resource "aws_lambda_layer_version" "pgp_layer" {
  filename   = "pgp.zip"
  layer_name = "pgp_layer"

  compatible_runtimes = ["nodejs16.x"]
}
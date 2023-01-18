data "archive_file" "lambda" {
  type        = "zip"
  source_dir  = "${path.module}/src/lambda/index"
  output_path = "${path.module}/lambda.zip"
}

data "archive_file" "encript" {
  type        = "zip"
  source_dir  = "${path.module}/src/lambda/encript"
  output_path = "${path.module}/encript.zip"
}

# data "archive_file" "pgpModules" {
#   type        = "zip"
#   source_dir  = "${path.module}/node_modules/openpgp"
#   output_path = "${path.module}/pgpModules.zip"
# }


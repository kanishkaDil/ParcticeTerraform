resource "aws_iam_role" "terraformTest-role-k2tv2t7m" {
  assume_role_policy = data.aws_iam_policy_document.lambdas.json
}


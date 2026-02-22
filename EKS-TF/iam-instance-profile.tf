data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

resource "aws_iam_instance_profile" "instance-profile" {
  name = "Jenkins-instance-profile"
  role = data.aws_iam_role.lab_role.name
}
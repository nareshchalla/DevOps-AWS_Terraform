provider "aws" {
    region = "us-east-2"
}

resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_policy" "S3-policy" {
  name        = "S3-policy"
  description = "A test policy"
  policy      = "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        }
    ]
}

resource "aws_iam_group_policy_attachment" "S3-policy" {
  group      = "${aws_iam_group.group.name}"
  policy_arn = "${aws_iam_policy.policy.arn}"
}

}

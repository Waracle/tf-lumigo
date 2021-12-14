data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    sid = ""
    actions = [
    "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["599735196807"]
      type        = "AWS"
    }

  }

  statement {
    sid = ""
    actions = [
    "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["114300393969"]
      type        = "AWS"
    }

  }

  statement {
    sid = ""
    actions = [
    "sts:AssumeRole"
    ]
    effect = "Allow"
    principals {
      identifiers = ["appsync.amazonaws.com"]
      type        = "Service"
    }

  }

  version = "2012-10-17"
}

resource "aws_iam_role" "lumigo_integration_role" {

  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess",
    "arn:aws:iam::aws:policy/service-role/AWSAppSyncPushToCloudWatchLogs",
    "arn:aws:iam::aws:policy/AWSAppSyncAdministrator"
  ]
  path = "/"
}

data "aws_iam_policy_document" "lumigo_integration_policies" {
  statement {
    actions = [
      "lambda:UpdateFunctionConfiguration"
    ]
    effect = "Allow"
    resources = [
      "arn:aws:lambda:*:*:function:*"
    ]
  }

  statement {
    actions = [
      "ce:GetCostAndUsageWithResources",
      "ce:GetCostAndUsage"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "cloudwatch:DeleteAlarms",
      "cloudwatch:DeleteDashboards",
      "cloudwatch:DeleteMetricStream",
      "cloudwatch:PutDashboard",
      "cloudwatch:PutMetricAlarm",
      "cloudwatch:PutMetricData",
      "cloudwatch:PutMetricStream",
      "cloudwatch:StartMetricStreams",
      "cloudwatch:StopMetricStreams",
      "logs:DeleteSubscriptionFilter",
      "logs:DescribeSubscriptionFilters",
      "logs:PutSubscriptionFilter"
    ]
    effect = "Allow"
    resources = [
      "*"
    ]
  }
}

resource "aws_iam_policy" "lumigo_integration" {
  policy = data.aws_iam_policy_document.lumigo_integration_policies.json
}

resource "aws_iam_role_policy_attachment" "lumigo_integration_policy_attachment" {
  policy_arn = aws_iam_policy.lumigo_integration.arn
  role       = aws_iam_role.lumigo_integration_role.name
}

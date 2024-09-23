output "system_managed_policies" {
  value = [
    for policy in data.kion_aws_iam_policy.all_policies.list :
    policy if policy.system_managed_policy
  ]
}

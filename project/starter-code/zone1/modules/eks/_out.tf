output "cluster_id" {
  value = aws_eks_cluster.cluster.id
}

# output "eks_node_instance_policy" {
#   value = aws_iam_policy.eks_node_instance_policy.arn
# }
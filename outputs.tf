output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "private_subnet_ids" {
  value = aws_subnet.private.*.id
}

output "private_route_table" {
  value = aws_route_table.private.*.id
}

output "public_subnet_ids" {
  value = aws_subnet.public.*.id
}

output "public_route_table" {
  value = aws_route_table.public.*.id
}

output "node_role" {
  value = aws_iam_role.node
}

output "node_security_group_id" {
  value = aws_security_group.node.id
}

output "redis_elasticache_subnet_group_name" {
  value = aws_elasticache_subnet_group.default.name
}

output "eks_endpoint_helm_provider" {
  value = aws_eks_cluster.cluster.endpoint
}

output "eks_ca_cert_helm_provider" {
  value = base64decode(aws_eks_cluster.cluster.certificate_authority.0.data)
}

output "eks_token_helm_provider" {
  value = data.aws_eks_cluster_auth.cluster.token
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.gw.*.id
}
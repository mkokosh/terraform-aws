# --- networking/outputs.tf ---

output "vpc_id" {
    value = aws_vpc.vnet_vpc.id
}


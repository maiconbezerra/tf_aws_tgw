
#  Transit Gateway
resource "aws_ec2_transit_gateway" "virginia_tgw" {
  for_each = {for k, v in local.virginia_tgw : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  description = each.value.description
  default_route_table_association = each.value.default_route_table_association
  default_route_table_propagation = each.value.default_route_table_propagation
  transit_gateway_cidr_blocks     = each.value.transit_gateway_cidr_blocks
  amazon_side_asn   = each.value.amazon_side_asn
  multicast_support = each.value.multicast_support
  dns_support = each.value.dns_support
  auto_accept_shared_attachments = each.value.auto_accept_shared_attachments
  vpn_ecmp_support = each.value.vpn_ecmp_support

  tags = {
    Name = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }
}


#  Transit Gateway Peer Attachments
resource "aws_ec2_transit_gateway_peering_attachment" "virginia_tgw_peer_attach" {
  for_each = {for k, v in local.virginia_tgw_peer_attach : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  peer_account_id         = each.value.peer_account_id
  peer_region             = each.value.peer_region
  peer_transit_gateway_id = each.value.peer_transit_gateway_id
  transit_gateway_id      = each.value.transit_gateway_id

  tags = {
    Name = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.virginia_tgw]
}


#  Transit Gateway VPC Attachments
resource "aws_ec2_transit_gateway_vpc_attachment" "virginia_tgw_vpc_attach" {
  for_each = {for k, v in local.virginia_tgw_vpc_attach : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  subnet_ids         = each.value.subnet_ids
  transit_gateway_id = each.value.transit_gateway_id
  vpc_id             = each.value.vpc_id
  dns_support        = each.value.dns_support
  ipv6_support       = each.value.ipv6_support
  transit_gateway_default_route_table_association = each.value.tgw_default_route_table_association
  transit_gateway_default_route_table_propagation = each.value.tgw_default_route_table_propagation
  appliance_mode_support = each.value.appliance_mode_support

  tags = {
    Name = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.virginia_tgw]
}


#  Transit Gateway Route table
resource "aws_ec2_transit_gateway_route_table" "virginia_tgw_route_table" {
  for_each = {for k, v in local.virginia_tgw_route_table : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  transit_gateway_id = each.value.tgw_id

  tags = {
    Name = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.virginia_tgw]
}


#  Transit Gateway Route Table Association
resource "aws_ec2_transit_gateway_route_table_association" "virginia_rtb_assoc" {
  for_each = {for k, v in local.virginia_tgw_rtb_association : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  transit_gateway_attachment_id  = each.value.transit_gateway_attachment_id
  transit_gateway_route_table_id = each.value.transit_gateway_route_table_id

  depends_on = [aws_ec2_transit_gateway_route_table.virginia_tgw_route_table, aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach, aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach]
}


# Add TGW Routes
resource "aws_ec2_transit_gateway_route" "virginia_tgw_routes" {
  for_each = {for k, v in local.virginia_tgw_routes : k => v if terraform.workspace == local.context.will-dev.workspace_label}

  destination_cidr_block         = each.value.destination_cidr_block
  transit_gateway_attachment_id  = each.value.transit_gateway_attachment_id
  transit_gateway_route_table_id = each.value.transit_gateway_route_table_id
  blackhole = each.value.blackhole

  depends_on = [aws_ec2_transit_gateway_route_table.virginia_tgw_route_table, aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach, aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach]
}

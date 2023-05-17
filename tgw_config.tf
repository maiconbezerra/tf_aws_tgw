
#  Transit Gateway
resource "aws_ec2_transit_gateway" "tgw" {
  for_each = { for k, v in local.tgw : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  description                     = each.value.description
  default_route_table_association = each.value.default_route_table_association
  default_route_table_propagation = each.value.default_route_table_propagation
  transit_gateway_cidr_blocks     = each.value.transit_gateway_cidr_blocks
  amazon_side_asn                 = each.value.amazon_side_asn
  multicast_support               = each.value.multicast_support
  dns_support                     = each.value.dns_support
  auto_accept_shared_attachments  = each.value.auto_accept_shared_attachments
  vpn_ecmp_support                = each.value.vpn_ecmp_support

  tags = {
    Name        = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }
}


#  Transit Gateway Peer Attachments
resource "aws_ec2_transit_gateway_peering_attachment" "tgw_peer_attach" {
  for_each = { for k, v in local.tgw_peer_attach : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  peer_account_id         = each.value.peer_account_id
  peer_region             = each.value.peer_region
  peer_transit_gateway_id = each.value.peer_tgw_id
  transit_gateway_id      = aws_ec2_transit_gateway.tgw["${each.value.tgw}"].id

  tags = {
    Name        = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.tgw]
}


#  Transit Gateway VPC Attachments
resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_vpc_attach" {
  for_each = { for k, v in local.tgw_vpc_attach : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  subnet_ids                                      = each.value.subnet_ids
  transit_gateway_id                              = aws_ec2_transit_gateway.tgw["${each.value.tgw}"].id
  vpc_id                                          = each.value.vpc_id
  dns_support                                     = each.value.dns_support
  ipv6_support                                    = each.value.ipv6_support
  transit_gateway_default_route_table_association = each.value.tgw_default_route_table_association
  transit_gateway_default_route_table_propagation = each.value.tgw_default_route_table_propagation
  appliance_mode_support                          = each.value.appliance_mode_support

  tags = {
    Name        = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.tgw]
}


#  Transit Gateway Route table
resource "aws_ec2_transit_gateway_route_table" "tgw_route_table" {
  for_each = { for k, v in local.tgw_rtb : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  transit_gateway_id = aws_ec2_transit_gateway.tgw["${each.value.tgw}"].id

  tags = {
    Name        = each.key
    Environment = local.environment
    Management  = local.management
    Circle      = local.circle
    Product     = each.value.tag_product
    Repository  = local.repository
    WhenCreated = each.value.tag_whencreated
  }

  depends_on = [aws_ec2_transit_gateway.tgw]
}


#  Transit Gateway Route Table Association
resource "aws_ec2_transit_gateway_route_table_association" "rtb_assoc" {
  for_each = { for k, v in local.tgw_rtb_association : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  transit_gateway_attachment_id  = startswith(each.value.tgw_attachment, "tgw-attach-") && length(each.value.tgw_attachment) == 28 ? each.value.tgw_attachment : aws_ec2_transit_gateway_vpc_attachment.tgw_vpc_attach["${each.value.tgw_attachment}"].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_route_table["${each.value.tgw_rtb}"].id

  depends_on = [aws_ec2_transit_gateway_route_table.tgw_route_table, aws_ec2_transit_gateway_vpc_attachment.tgw_vpc_attach, aws_ec2_transit_gateway_peering_attachment.tgw_peer_attach]
}


# Add TGW Routes
resource "aws_ec2_transit_gateway_route" "tgw_routes" {
  for_each = { for k, v in local.tgw_routes : k => v if terraform.workspace == local.context.will-prod.workspace_label }

  destination_cidr_block         = each.value.destination_cidr_block
  transit_gateway_attachment_id  = each.value.attachment_type == "peering" ? aws_ec2_transit_gateway_peering_attachment.tgw_peer_attach["${each.value.tgw_attachment}"].id : aws_ec2_transit_gateway_vpc_attachment.tgw_vpc_attach["${each.value.tgw_attachment}"].id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_route_table["${each.value.tgw_rtb}"].id
  blackhole                      = each.value.blackhole

  depends_on = [aws_ec2_transit_gateway_route_table.tgw_route_table, aws_ec2_transit_gateway_vpc_attachment.tgw_vpc_attach, aws_ec2_transit_gateway_peering_attachment.tgw_peer_attach]
}

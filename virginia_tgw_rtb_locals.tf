
#  Transit Gateway Route Table
locals {
  virginia_tgw_route_table = {
    rt-dev = {
      tag_whencreated = "20230330"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
    }
    rt-default = {
      tag_whencreated = "20230330"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
    }
    rt-teleport-vpc69 = {
      tag_whencreated = "20230330"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
    }
    rt-confluent-nv01 = {
      tag_whencreated = "20230330"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
    }

  }
}


#  Transit Gateway Route Table Association
locals {

  virginia_tgw_rtb_association = {

    rt-confluent-nv01_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-confluent-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-confluent-nv01"].id : ""
    }
    rt-teleport-vpc69_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-willsec-vpc69"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
    }

  }

}

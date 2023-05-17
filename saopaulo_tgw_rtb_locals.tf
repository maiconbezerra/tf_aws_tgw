
#  Transit Gateway Route Table
locals {
  saopaulo_tgw_route_table = {

    rt-prod-vpc98 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    rt-confluent-sp01 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    rt-default = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    rt-teleport-vpc68 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    rt-oracle-on-premise-via-fw = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }


  }
}


#  Transit Gateway Route Table Association
locals {

  saopaulo_tgw_rtb_association = {

    #  rt-prod-vpc98
    rt-prod-vpc98_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willprod-vpc98"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
    }


    #  rt-confluent-sp01
    rt-confluent-sp01_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-confluent-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-confluent-sp01"].id : ""
    }


    #  rt-teleport-vpc68
    rt-teleport-vpc68_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willsec-vpc68"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
    }


    #  rt-oracle-on-premise-via-fw
    rt-oracle-on-premise-via-fw_assoc-001 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? "tgw-attach-0160ab4af1c3d54fc" : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-oracle-on-premise-via-fw"].id : ""
    }
    rt-oracle-on-premise-via-fw_assoc-002 = {
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? "tgw-attach-071da8a5940e8e70e" : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-oracle-on-premise-via-fw"].id : ""
    }

  }

}

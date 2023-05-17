locals {
  virginia_tgw_routes = {

    #  Route Table rt-confluent-nv01
    rt-confluent-nv01_route-001 = {
      destination_cidr_block = "10.110.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-willdev-vpc110"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-confluent-nv01"].id : ""
      blackhole = false
    }
    rt-confluent-nv01_route-002 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-confluent-nv01"].id : ""
      blackhole = false
    }
    rt-confluent-nv01_route-003 = {
      destination_cidr_block = "10.28.134.0/23"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-confluent-nv01"].id : ""
      blackhole = false
    }



    #  Route Table rt-teleport-vpc69
    rt-teleport-vpc69_route-001 = {
      destination_cidr_block = "10.103.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }
    rt-teleport-vpc69_route-002 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }
    rt-teleport-vpc69_route-003 = {
      destination_cidr_block = "10.110.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-willdev-vpc110"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }
    rt-teleport-vpc69_route-004 = {
      destination_cidr_block = "10.191.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-pagsandbox-vpc191"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }
    rt-teleport-vpc69_route-005 = {
      destination_cidr_block = "10.204.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-analytics-vpc204"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }
    rt-teleport-vpc69_route-006 = {
      destination_cidr_block = "10.85.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-cfidev-vpc85"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-teleport-vpc69"].id : ""
      blackhole = false
    }



    #  Route Table rt-default
    rt-default_route-001 = {
      destination_cidr_block = "10.0.0.0/8"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-002 = {
      destination_cidr_block = "10.28.134.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-003 = {
      destination_cidr_block = "10.84.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-004 = {
      destination_cidr_block = "172.17.1.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-005 = {
      destination_cidr_block = "200.160.161.198/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_peering_attachment.virginia_tgw_peer_attach["tgw-att-networking-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-006 = {
      destination_cidr_block = "10.204.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.virginia_tgw_vpc_attach["tgw-att-analytics-vpc204"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway_route_table.virginia_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }

  }
}
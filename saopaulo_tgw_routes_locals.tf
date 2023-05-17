locals {
  saopaulo_tgw_routes = {

    #  Route Table rt-prod-vpc98
    rt-prod-vpc98_route-001 = {
      destination_cidr_block = "10.1.8.0/22"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-002 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-003 = {
      destination_cidr_block = "10.26.0.4/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-004 = {
      destination_cidr_block = "10.28.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-005 = {
      destination_cidr_block = "10.40.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-006 = {
      destination_cidr_block = "10.50.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-007 = {
      destination_cidr_block = "10.60.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }
    rt-prod-vpc98_route-008 = {
      destination_cidr_block = "192.168.138.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-prod-vpc98"].id : ""
      blackhole = false
    }



    #  Route Table rt-confluent-sp01
    rt-confluent-sp01_route-001 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-confluent-sp01"].id : ""
      blackhole = false
    }
    rt-confluent-sp01_route-002 = {
      destination_cidr_block = "10.28.134.0/23"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-confluent-sp01"].id : ""
      blackhole = false
    }
    rt-confluent-sp01_route-003 = {
      destination_cidr_block = "10.96.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willprod-vpc96"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-confluent-sp01"].id : ""
      blackhole = false
    }



    #  Route Table rt-default
    rt-default_route-001 = {
      destination_cidr_block = "10.26.0.5/32"
      transit_gateway_attachment_id   = null
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = true
    }
    rt-default_route-002 = {
      destination_cidr_block = "10.103.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-oh01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-003 = {
      destination_cidr_block = "10.110.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-004 = {
      destination_cidr_block = "10.112.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-005 = {
      destination_cidr_block = "10.113.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-oh01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-006 = {
      destination_cidr_block = "10.128.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-007 = {
      destination_cidr_block = "10.130.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-008 = {
      destination_cidr_block = "10.150.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-009 = {
      destination_cidr_block = "10.191.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-010 = {
      destination_cidr_block = "10.196.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-oh01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-011 = {
      destination_cidr_block = "10.204.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-012 = {
      destination_cidr_block = "10.214.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-013 = {
      destination_cidr_block = "10.227.0.160/28"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-014 = {
      destination_cidr_block = "10.69.4.0/22"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-015 = {
      destination_cidr_block = "10.70.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-016 = {
      destination_cidr_block = "10.85.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-017 = {
      destination_cidr_block = "10.95.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-oh01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-018 = {
      destination_cidr_block = "200.160.160.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-019 = {
      destination_cidr_block = "200.160.161.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-020 = {
      destination_cidr_block = "200.160.163.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-021 = {
      destination_cidr_block = "10.1.8.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-022 = {
      destination_cidr_block = "10.10.1.1/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-023 = {
      destination_cidr_block = "10.10.28.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-024 = {
      destination_cidr_block = "10.10.50.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-025 = {
      destination_cidr_block = "10.10.60.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-026 = {
      destination_cidr_block = "10.140.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-pagprod-vpc140"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-027 = {
      destination_cidr_block = "10.192.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-analytics-vpc192"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-028 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-029 = {
      destination_cidr_block = "10.221.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-030 = {
      destination_cidr_block = "10.255.255.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-031 = {
      destination_cidr_block = "10.26.0.4/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-032 = {
      destination_cidr_block = "10.28.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-033 = {
      destination_cidr_block = "10.40.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-034 = {
      destination_cidr_block = "10.50.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-035 = {
      destination_cidr_block = "10.60.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-036 = {
      destination_cidr_block = "10.96.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willprod-vpc96"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-037 = {
      destination_cidr_block = "172.17.1.0/24"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }
    rt-default_route-038 = {
      destination_cidr_block = "192.168.132.87/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-default"].id : ""
      blackhole = false
    }



    #  Route Table rt-teleport-vpc68
    rt-teleport-vpc68_route-001 = {
      destination_cidr_block = "10.128.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-cfi-prod-sp01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
      blackhole = false
    }
    rt-teleport-vpc68_route-002 = {
      destination_cidr_block = "10.150.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_peering_attachment.saopaulo_tgw_peer_attach["tgw-att-networking-nv01"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
      blackhole = false
    }
    rt-teleport-vpc68_route-003 = {
      destination_cidr_block = "10.140.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-pagprod-vpc140"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
      blackhole = false
    }
    rt-teleport-vpc68_route-004 = {
      destination_cidr_block = "10.208.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc210"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
      blackhole = false
    }
    rt-teleport-vpc68_route-005 = {
      destination_cidr_block = "10.96.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willprod-vpc96"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-teleport-vpc68"].id : ""
      blackhole = false
    }



    #  Route Table rt-oracle-on-premise-via-fw
    rt-oracle-on-premise-via-fw_route-001 = {
      destination_cidr_block = "10.211.1.248/32"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-networking-vpc211"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-oracle-on-premise-via-fw"].id : ""
      blackhole = false
    }
    rt-oracle-on-premise-via-fw_route-002 = {
      destination_cidr_block = "10.98.0.0/16"
      transit_gateway_attachment_id   = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_vpc_attachment.saopaulo_tgw_vpc_attach["tgw-att-willprod-vpc98"].id : ""
      transit_gateway_route_table_id  = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway_route_table.saopaulo_tgw_route_table["rt-oracle-on-premise-via-fw"].id : ""
      blackhole = false
    }

  }
}
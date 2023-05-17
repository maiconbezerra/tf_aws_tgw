
#  Transit Gateway Config
locals {

  saopaulo_tgw = {

    tgw-sp-01 = {
      tag_whencreated = "20230404"
      tag_product = "Transit Gateway"
      description = "TGW regiao sa-east-1"
      amazon_side_asn = "64512"
      default_route_table_association = "enable"
      default_route_table_propagation = "enable"
      transit_gateway_cidr_blocks = []
      multicast_support = "disable"
      dns_support = "enable"
      auto_accept_shared_attachments = "disable"
      vpn_ecmp_support = "enable"
    }

  }

}


#  Transit Gateway Peer Attachments Config
locals {

  saopaulo_tgw_peer_attach = {

    tgw-att-cfi-prod-sp01 = {
      tag_whencreated         = "20230404"
      tag_product             = "Transit Gateway"
      peer_account_id         = "756377333309"
      peer_region             = "sa-east-1"
      peer_transit_gateway_id = "tgw-058d703bd7a696ad9"
      transit_gateway_id      = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    tgw-att-networking-nv01 = {
      tag_whencreated         = "20230404"
      tag_product             = "Transit Gateway"
      peer_account_id         = "607150308374"
      peer_region             = "us-east-1"
      peer_transit_gateway_id = "tgw-0baa05693cf783cc0"
      transit_gateway_id      = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }
    tgw-att-networking-oh01 = {
      tag_whencreated         = "20230404"
      tag_product             = "Transit Gateway"
      peer_account_id         = "607150308374"
      peer_region             = "us-east-2"
      peer_transit_gateway_id = "tgw-0e8ddfb3db4914b77"
      transit_gateway_id      = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
    }

  }

}


#  Transit Gateway VPC Attachments Config
locals {

  saopaulo_tgw_vpc_attach = {

    tgw-att-confluent-sp01 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0da04404a6b108a32", "subnet-0ddaea77f0d63b4cc", "subnet-0251cc80866c08d55"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-05a5f290260855441"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-networking-vpc210 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-08e2d94fdc44340c4", "subnet-01733922939ac5e5e"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-0d1c68d3bc6a4cce7"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willprod-vpc98 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0a5c5cd3f3c719ed0", "subnet-027b01c5bc61b8e7d", "subnet-01105ea993b9c88f0"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-072136f1accfca093"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willprod-vpc96 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0e9ba51ab9f7a17a9", "subnet-047e65e590467c5f4", "subnet-027a2faa405b7ca77"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-0d5099dc7513610c9"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-networking-vpc211 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0e30b4d024e35c96b", "subnet-0f1a2b6ce0dd15ba3", "subnet-0b79eeff505f2aa89"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-09ff2860f140aad33"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-pagprod-vpc140 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-049810fb477d6a5bc", "subnet-0be2684657feb1826"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-0e68ba8bc95b4e563"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-sec-vpc64 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-05008d15b7984f8c4", "subnet-0c19ee07b9ea7e754", "subnet-011a48ed3ca5a8528"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-09eca9b9d282c8ac3"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-analytics-vpc192 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0dc345007cc85cdb0", "subnet-0e7eba7420314007b"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-00fb54e22aafbf2d0"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willsec-vpc68 = {
      tag_whencreated    = "20230404"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-021497c3e0430c57a"]
      transit_gateway_id = terraform.workspace == local.context.will-prod.workspace_label ? aws_ec2_transit_gateway.saopaulo_tgw["tgw-sp-01"].id : ""
      vpc_id             = "vpc-0542f2a583372e894"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }

  }

}


#  Transit Gateway VPN Attachments Config
locals {

  saopaulo_tgw_vpn_attach = {

    tgw-att-vpn-osa = {

    }

  }

}

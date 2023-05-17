
#  Transit Gateway Config
locals {

  virginia_tgw = {

    tgw-nv-01 = {
      tag_name = "tgw-nv-01"
      tag_whencreated = "20230330"
      tag_product = "Transit Gateway"
      description = "TGW regiao us-east-1"
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

  virginia_tgw_peer_attach = {

    tgw-att-networking-sp01 = {
      tag_whencreated         = "20230330"
      tag_product             = "Transit Gateway"
      peer_account_id         = "607150308374"
      peer_region             = "us-east-1"
      peer_transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      transit_gateway_id      = "tgw-05d413565d9effdb7"

    }

  }

}


#  Transit Gateway VPC Attachments Config
locals {

  virginia_tgw_vpc_attach = {

    tgw-att-willsec-vpc69 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-09216355073093845"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0459a6714a8bb1bdf"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willnetwork-vpc214 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0d8606fa3f932af42", "subnet-0df923873dd946651"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-083af4b76a116c1c9"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-cfiprod-vpc130 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0a3f285c66a1de68e", "subnet-04bebf0b8052db25e", "subnet-071dc95532619dc8b", "subnet-0c2c9a311dd5a738c"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0e04d9bf6c8038915"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-confluent-nv01 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-043c27fe10034aa21", "subnet-09f826b17e258a19e", "subnet-078bd8fd67942fe09"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0e6ea80404266bc9c"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-cfiprod-vpc150 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0a3b7ed3653c953f1", "subnet-0d2602bcb9955a4da"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0f0277896d95a33eb"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-cfidev-vpc85 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-04f49fa0f717a15c0", "subnet-07cfdb6ad97e9af0c"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-05ebfc349543574f8"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willdev-vpc221 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0f9bc6defde0d179d", "subnet-0b2bf4e9f738cf5e9"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-047cdaf01e248884c"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-pagprod-vpc70 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0e1eab5c89e984b0e", "subnet-054aeefef8fe57a63"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0b4c0f8fada5c948e"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-pagsandbox-vpc191 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-033194838699d32cf", "subnet-01bbaa2c0cc243c81"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-07f26b26026d76b96"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-willdev-vpc110 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-09a7af6493d1051c1", "subnet-03712397328b06118", "subnet-0477d50b8dd22d312"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-0fd4782f1596d64d3"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }
    tgw-att-analytics-vpc204 = {
      tag_whencreated    = "20230330"
      tag_product        = "Transit Gateway"
      subnet_ids         = ["subnet-0447df9c149830645", "subnet-038ca4a7d397d2614"]
      transit_gateway_id = terraform.workspace == local.context.will-dev.workspace_label ? aws_ec2_transit_gateway.virginia_tgw["tgw-nv-01"].id : ""
      vpc_id             = "vpc-082cfe8f08a775739"
      dns_support        = "enable"
      ipv6_support       = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support = "disable"
    }

  }

}
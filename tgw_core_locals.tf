
locals {

  #  Transit Gateway Config
  tgw = {

    tgw-name-01 = {
      tag_whencreated                 = "20230404"
      tag_product                     = "Transit Gateway"
      description                     = "TGW regiao sa-east-1"
      amazon_side_asn                 = "64512"
      multicast_support               = "disable"
      dns_support                     = "enable"
      vpn_ecmp_support                = "enable"
      auto_accept_shared_attachments  = "disable"
      transit_gateway_cidr_blocks     = []
      default_route_table_association = "enable"
      default_route_table_propagation = "enable"
    }

  }



  #  Transit Gateway Peer Attachments Config
  tgw_peer_attach = {

    tgw-att-peer-name1 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      peer_account_id = "777777777777"
      peer_region     = "sa-east-1"
      peer_tgw_id     = "tgw-00000000000000000"
      tgw             = "tgw-name1"
    }

  }



  #  Transit Gateway VPC Attachments Config
  tgw_vpc_attach = {

    tgw-att-vpc-name1 = {
      tag_whencreated                     = "20230404"
      tag_product                         = "Transit Gateway"
      subnet_ids                          = ["subnet-00000000000000000", "subnet-11111111111111111", "subnet-22222222222222222"]
      tgw                                 = "tgw-name1"
      vpc_id                              = "vpc-44444444444444444"
      dns_support                         = "enable"
      ipv6_support                        = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support              = "disable"
    }
    tgw-att-vpc-name2 = {
      tag_whencreated                     = "20230404"
      tag_product                         = "Transit Gateway"
      subnet_ids                          = ["subnet-55555555555555555", "subnet-66666666666666666"]
      tgw                                 = "tgw-name2"
      vpc_id                              = "vpc-77777777777777777"
      dns_support                         = "enable"
      ipv6_support                        = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support              = "disable"
    }
    tgw-att-vpc-name3 = {
      tag_whencreated                     = "20230404"
      tag_product                         = "Transit Gateway"
      subnet_ids                          = ["subnet-88888888888888888", "subnet-99999999999999999"]
      tgw                                 = "tgw-name3"
      vpc_id                              = "vpc-10101010101010101"
      dns_support                         = "enable"
      ipv6_support                        = "disable"
      tgw_default_route_table_association = true
      tgw_default_route_table_propagation = true
      appliance_mode_support              = "disable"
    }

  }

}

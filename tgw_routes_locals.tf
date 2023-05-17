locals {
  tgw_routes = {

    #  Route Table
    rtb-prod-vpc98_route-001 = {
      destination_cidr_block = "192.168.1.0/24"
      attachment_type        = "vpc"
      tgw_attachment         = "tgw-att-vpc-name1"
      tgw_rtb                = "rtb-name1"
      blackhole              = false
    }
    rt-prod-vpc98_route-002 = {
      destination_cidr_block = "10.0.0.0/16"
      attachment_type        = "vpc"
      tgw_attachment         = "tgw-att-vpc-name2"
      tgw_rtb                = "rtb-name2"
      blackhole              = false
    }
    rt-prod-vpc98_route-003 = {
      destination_cidr_block = "172.16.31.0/24"
      attachment_type        = "vpc"
      tgw_attachment         = "tgw-att-vpc-name3"
      tgw_rtb                = "rtb-name3"
      blackhole              = false
    }

  }
}
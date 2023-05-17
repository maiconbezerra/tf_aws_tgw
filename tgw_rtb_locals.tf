
locals {

  #  Transit Gateway Route Table Config
  tgw_rtb = {

    rtb-name1 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw             = "tgw-name-01"
    }
    rtb-name2 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw             = "tgw-name-01"
    }
    rtb-name3 = {
      tag_whencreated = "20230404"
      tag_product     = "Transit Gateway"
      tgw             = "tgw-name-01"
    }

  }



  #  Transit Gateway Route Table Association Config
  tgw_rtb_association = {

    #  rt-prod-vpc98
    rtb-assoc-name1 = {
      tgw_attachment = "tgw-att-vpc-name1"
      tgw_rtb        = "rtb-name1"
    }

    #  rt-confluent-sp01
    rtb-assoc-name2 = {
      tgw_attachment = "tgw-att-vpc-name2"
      tgw_rtb        = "rtb-name2"
    }

    #  rt-teleport-vpc68
    rtb-assoc-name3 = {
      tgw_attachment = "tgw-att-vpc-name3"
      tgw_rtb        = "rtb-name3"
    }

  }

}

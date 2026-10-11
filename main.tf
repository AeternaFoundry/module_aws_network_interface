resource "aws_network_interface" "network_interfaces" {
  for_each = var.network_interfaces

  subnet_id                 = each.value.subnet_id
  source_dest_check         = each.value.source_dest_check
  security_groups           = each.value.security_groups
  region                    = each.value.region
  private_ips_count         = each.value.private_ips_count
  private_ips               = each.value.private_ips
  private_ip_list_enabled   = each.value.private_ip_list_enabled
  private_ip_list           = each.value.private_ip_list
  private_ip                = each.value.private_ip
  ipv6_prefixes             = each.value.ipv6_prefixes
  ipv6_prefix_count         = each.value.ipv6_prefix_count
  ipv6_addresses            = each.value.ipv6_addresses
  ipv6_address_list_enabled = each.value.ipv6_address_list_enabled
  ipv6_address_list         = each.value.ipv6_address_list
  ipv6_address_count        = each.value.ipv6_address_count
  ipv4_prefixes             = each.value.ipv4_prefixes
  ipv4_prefix_count         = each.value.ipv4_prefix_count
  interface_type            = each.value.interface_type
  enable_primary_ipv6       = each.value.enable_primary_ipv6
  description               = each.value.description
  tags                      = each.value.tags
  tags_all                  = each.value.tags_all

  dynamic "attachment" {
    for_each = each.value.attachment != null ? each.value.attachment : []
    content {
      device_index       = attachment.value.device_index
      instance           = attachment.value.instance
      network_card_index = attachment.value.network_card_index
    }
  }

  dynamic "ena_srd_specification" {
    for_each = each.value.ena_srd_specification != null ? [each.value.ena_srd_specification] : []
    content {
      ena_srd_enabled = ena_srd_specification.value.ena_srd_enabled
      dynamic "ena_srd_udp_specification" {
        for_each = ena_srd_specification.value.ena_srd_udp_specification != null ? [ena_srd_specification.value.ena_srd_udp_specification] : []
        content {
          ena_srd_udp_enabled = ena_srd_udp_specification.value.ena_srd_udp_enabled
        }
      }
    }
  }
}


output "network_interfaces_id" {
  description = "Map of id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_interfaces_arn" {
  description = "Map of arn values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "network_interfaces_attachment" {
  description = "Map of attachment values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.attachment if v.attachment != null && length(v.attachment) > 0 }
}
output "network_interfaces_description" {
  description = "Map of description values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_interfaces_ena_srd_specification" {
  description = "Map of ena_srd_specification values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => one(v.ena_srd_specification) if v.ena_srd_specification != null && length(v.ena_srd_specification) > 0 }
}
output "network_interfaces_enable_primary_ipv6" {
  description = "Map of enable_primary_ipv6 values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.enable_primary_ipv6 if v.enable_primary_ipv6 != null }
}
output "network_interfaces_interface_type" {
  description = "Map of interface_type values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.interface_type if v.interface_type != null && length(v.interface_type) > 0 }
}
output "network_interfaces_ipv4_prefix_count" {
  description = "Map of ipv4_prefix_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv4_prefix_count if v.ipv4_prefix_count != null }
}
output "network_interfaces_ipv4_prefixes" {
  description = "Map of ipv4_prefixes values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv4_prefixes if v.ipv4_prefixes != null && length(v.ipv4_prefixes) > 0 }
}
output "network_interfaces_ipv6_address_count" {
  description = "Map of ipv6_address_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_address_count if v.ipv6_address_count != null }
}
output "network_interfaces_ipv6_address_list" {
  description = "Map of ipv6_address_list values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_address_list if v.ipv6_address_list != null && length(v.ipv6_address_list) > 0 }
}
output "network_interfaces_ipv6_address_list_enabled" {
  description = "Map of ipv6_address_list_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_address_list_enabled if v.ipv6_address_list_enabled != null }
}
output "network_interfaces_ipv6_addresses" {
  description = "Map of ipv6_addresses values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_addresses if v.ipv6_addresses != null && length(v.ipv6_addresses) > 0 }
}
output "network_interfaces_ipv6_prefix_count" {
  description = "Map of ipv6_prefix_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_prefix_count if v.ipv6_prefix_count != null }
}
output "network_interfaces_ipv6_prefixes" {
  description = "Map of ipv6_prefixes values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.ipv6_prefixes if v.ipv6_prefixes != null && length(v.ipv6_prefixes) > 0 }
}
output "network_interfaces_mac_address" {
  description = "Map of mac_address values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.mac_address if v.mac_address != null && length(v.mac_address) > 0 }
}
output "network_interfaces_outpost_arn" {
  description = "Map of outpost_arn values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.outpost_arn if v.outpost_arn != null && length(v.outpost_arn) > 0 }
}
output "network_interfaces_owner_id" {
  description = "Map of owner_id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "network_interfaces_private_dns_name" {
  description = "Map of private_dns_name values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_dns_name if v.private_dns_name != null && length(v.private_dns_name) > 0 }
}
output "network_interfaces_private_ip" {
  description = "Map of private_ip values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_ip if v.private_ip != null && length(v.private_ip) > 0 }
}
output "network_interfaces_private_ip_list" {
  description = "Map of private_ip_list values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_ip_list if v.private_ip_list != null && length(v.private_ip_list) > 0 }
}
output "network_interfaces_private_ip_list_enabled" {
  description = "Map of private_ip_list_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_ip_list_enabled if v.private_ip_list_enabled != null }
}
output "network_interfaces_private_ips" {
  description = "Map of private_ips values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_ips if v.private_ips != null && length(v.private_ips) > 0 }
}
output "network_interfaces_private_ips_count" {
  description = "Map of private_ips_count values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.private_ips_count if v.private_ips_count != null }
}
output "network_interfaces_region" {
  description = "Map of region values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.region if v.region != null && length(v.region) > 0 }
}
output "network_interfaces_security_groups" {
  description = "Map of security_groups values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.security_groups if v.security_groups != null && length(v.security_groups) > 0 }
}
output "network_interfaces_source_dest_check" {
  description = "Map of source_dest_check values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.source_dest_check if v.source_dest_check != null }
}
output "network_interfaces_subnet_id" {
  description = "Map of subnet_id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "network_interfaces_tags" {
  description = "Map of tags values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "network_interfaces_tags_all" {
  description = "Map of tags_all values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = { for k, v in aws_network_interface.network_interfaces : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}


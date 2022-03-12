# Copyright (c) 2020 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

/*/ --- Resident ---//
output "compartment_id" {
  description = "OCID for the network compartment"
  value = data.oci_identity_compartments.network.compartments[0].id
}
// --- Resident ---//

// --- Network Topology ---//
output "vcn_id" {
  description = "Identifier for the Virtual Cloud Network (VCN)"
  value       = length(oci_core_vcn.segment) > 0 ? oci_core_vcn.segment.id : null
}

output "gateways" {
  description = "A list of gateways for the Virtual Cloud Network (VCN)"
  value = local.gateway_ids
}

output "subnets" {
  description = "A list of subnets for the Virtual Cloud Network (VCN)"
  value       = {for network in oci_core_subnet.segment : network.display_name => network.id}
}
// --- Network Topology ---//

// --- Routing ---//
output "route_tables" {
  description = "A list of route_tables for the Virtual Cloud Network (VCN)"
  value       = local.route_tables
}
// --- Routing ---//

// --- Security ---//
output "security_lists" {
  description = "All security lists defined for the Virtual Cloud Network (VCN)"
  value       = local.security_lists
}

output "security_groups" {
  description = "Security Group"
  value       = length(oci_core_network_security_group.segment) > 0 ? oci_core_network_security_group.segment[*].id : null
}
// --- Security ---/*/


// --- Temp ---//
output "gateway_list" {
  value = local.gateway_list
}
output "routes" {
  value = local.routes
}
output "route_tables" {
  description = "A list of route_tables for the Virtual Cloud Network (VCN)"
  value       = var.network.route_tables
}
// --- Temp ---//
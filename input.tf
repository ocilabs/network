# Copyright (c) 2020 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "tenancy" {
    type = object({
        id      = string,
        class   = number,
        buckets = string,
        home_region  = map(string)
    })
    description = "Tenancy Configuration"
}

variable "resident" {
    type = object({
        owner          = string,
        name           = string,
        label          = string,
        stage          = number,
        region         = map(string)
        compartments   = map(number),
        repository     = string,
        groups         = map(string),
        policies       = map(any),
        notifications  = map(any),
        tag_namespaces = map(number),
        tags           = any
    })
    description = "Service Configuration"
}

variable "network" {
    type = object({
        name         = string,
        region       = string,
        display_name = string,
        dns_label    = string,
        compartment  = string,
        stage        = number,
        cidr         = string,
        ipv6         = bool,
        gateways     = any,
        route_tables = map(any),
        subnets      = map(any),
        security_lists = any
    })
    description = "Network Configuration"
}

variable "input" {
    type = object({
        resident     = any
    })
    description = "Resources identifier from resident module"
}

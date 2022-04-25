# Copyright (c) 2020 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

variable "account" {
  description = "Account parameter"
  type = object({
    tenancy_id = string,
    class      = bool
  })
}

variable "options" {
  type = object({
    internet = string,
    nat      = string,
    ipv6     = bool,
    osn      = string
  })
  description = "Input for database module"
}

variable "configuration" {
  type = object({
    resident = any,
    network  = any
  })
}

variable "assets" {
  type = object({
    encryption = any,
    resident   = any
  })
  description = "Retrieve asset identifier"
}
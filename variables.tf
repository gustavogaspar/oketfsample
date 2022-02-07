variable "region" {
  default = ""
}
variable "tenancy_ocid" {
  default = ""
}
variable "compartment_id" {
  default = ""
}
variable "node_pool_shape" {
  default     = "VM.Standard.E3.Flex"
  description = "A shape is a template that determines the number of OCPUs, amount of memory, and other resources allocated to a newly created instance for the Worker Node"
}
variable "node_pool_node_shape_config_ocpus" {
  default     = "1" 
  description = "You can customize the number of OCPUs to a flexible shape"
}
variable "node_pool_node_shape_config_memory_in_gbs" {
  default     = "16" 
  description = "You can customize the amount of memory allocated to a flexible shape"
}
variable "num_pool_workers" {
  default     = "3"
  description = "Amount of workernodes necessary for the nodepool"
}

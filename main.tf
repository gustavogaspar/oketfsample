module "vcn" {
  source = "./modules/vcn"
  tenancy_ocid      = var.tenancy_ocid
  compartment_ocid  = var.compartment_id
}


module "k8s" {
  source = "./modules/k8s"
  tenancy_ocid = var.tenancy_ocid
  compartment_ocid  = var.compartment_id
  node_pool_shape = var.node_pool_shape
  node_pool_node_shape_config_ocpus = var.node_pool_node_shape_config_ocpus
  node_pool_node_shape_config_memory_in_gbs = var.node_pool_node_shape_config_memory_in_gbs
  num_pool_workers = var.num_pool_workers
  vcn_id = module.vcn.oke_vcn_id
  enpoint_subnet_id = module.vcn.oke_k8s_endpoint_subnet_id
  lb_subnet_id = module.vcn.oke_lb_subnet_id
  nodes_subnet_id = module.vcn.oke_nodes_subnet_id
}



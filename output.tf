output "linux_vm_list" {
  value       = local.linux_vm_list
  description = "A map of all VMs created by this module."
}

output "linux_vm_ids" {
  value       = local.linux_vm_ids
  description = "Ids of all VMs created by this module."
}

output "linux_vm_releaser" {
  value = data.azurerm_client_config.current.client_id
}

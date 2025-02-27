locals {
  #Tags
  tags = merge(var.tags, {
    creation_mode                           = "terraform"
    terraform-azurerm-msci-compute-linux_vm = "True"
  })

  #VM List
  linux_vm_list = { for o in azurerm_linux_virtual_machine.linux_vm : o.name => {
    name : o.name,
    id : o.id,
    nic : { for v in module.nic["${o.name}"].nic_interface_list : v.name => v }
    }
  }
  #Linux VM Ids
  linux_vm_ids = values(azurerm_linux_virtual_machine.linux_vm)[*].id
}

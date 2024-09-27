package terraform.modules

import input.configuration as config

deny[msg] {
    modules := config.root_module.module_calls[_]
    module_source := modules.source
    not startswith(module_source, "terraform-")
    msg = sprintf("Module source not allowed: %v", [module_source])
}

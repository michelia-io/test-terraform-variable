
output "output_str" {
  value = var.str
}

output "output_num" {
  value = var.num
}

output "output_bool" {
  value = var.bool
}

output "output_list_number" {
  value = var.list_number
}

output "simple_object" {
  value = var.simple_object
}

output "object_with_default" {
  value = var.object_with_default
}

output "object_with_attr_default" {
  value = var.object_with_attr_default
}

output "object_with_nest_object" {
  value = var.object_with_nest_object
}

output "object_with_default_and_nest_object" {
  value = var.object_with_default_and_nest_object
}

output "object_with_default_and_nest_object2" {
  value = var.object_with_default_and_nest_object2
}

output "object_with_default_and_nest_object3" {
  value = var.object_with_default_and_nest_object3
}

## Simple object only with default

output "simple_object_only_default" {
  value = var.simple_object_only_default
}
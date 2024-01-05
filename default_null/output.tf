## ---- Simple ----------

output "str" {
  value = var.str
}

output "str_null" {
  value = var.str_null
}

output "num" {
  value = var.num
}

output "num_null" {
  value = var.num_null
}

output "bool" {
  value = var.bool
}

output "bool_null" {
  value = var.bool_null
}

## Simple only with default

output "def_str" {
  value = var.def_str
}

output "def_str_null" {
  value = var.def_str_null
}

## ---- List ----------

output "list_string" {
  value = var.list_string
}

output "list_string_null" {
  value = var.list_string_null
}

output "list_number" {
  value = var.list_number
}

output "list_number_null" {
  value = var.list_number_null
}

output "list_bool" {
  value = var.list_bool
}

output "list_bool_null" {
  value = var.list_bool_null
}

output "list_object" {
  value = var.list_object
}

output "list_list_str" {
  value = var.list_list_str
}

output "list_map_string" {
  value = var.list_map_string
}

output "list_map_any" {
  value = var.list_map_any
}

## ---- Map ----------

output "map_str" {
  value = var.map_str
}

output "map_number" {
  value = var.map_number
}

output "map_bool" {
  value = var.map_bool
}

output "map_any" {
  value = var.map_any
}

## Map only with default

output "def_map_str" {
  value = var.def_map_str
}

output "def_map_number" {
  value = var.def_map_number
}

## ---- Object ----------

output "object_with_default" {
  value = var.object_with_default
}

output "object_with_attr_default" {
  value = var.object_with_attr_default
}

output "list_object_with_default_and_nest_object" {
  value = var.list_object_with_default_and_nest_object
}

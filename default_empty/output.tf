## ---- List ----------

output "list_string" {
  value = var.list_string
}

output "list_number" {
  value = var.list_number
}

output "list_object" {
  value = var.list_object
}

## ---- Map ----------

output "map_str" {
  value = var.map_str
}

## ---- Object ----------

output "object_with_default" {
  value = var.object_with_default
}

output "object_with_attr_default" {
  value = var.object_with_attr_default
}

output "object_with_attr_null" {
  value = var.object_with_attr_null
}

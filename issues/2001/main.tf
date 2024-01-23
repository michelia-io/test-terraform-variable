variable "any" {
  type = any
}

variable "list_any" {
  type = list(any)
}

variable "list_map_any" {
  type = list(map(any))
}

variable "map_any" {
  type = map(any)
}

variable "object_with_any_attr" {
  type = object({
    name = string
    age  = any
  })
  default = {
    name = "value"
    age  = 1
  }
}

variable "object_with_any_optional_any" {
  type = object({
    name = optional(string, "Bob")
    age  = optional(any, 23)
  })
}

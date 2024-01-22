## ---- List ----------

variable "list_string" {
  type    = list(string)
  default = []
}

variable "list_number" {
  type    = list(number)
  default = []
}


variable "list_object" {
  type = list(object({
    name = string
    age  = optional(number, 10)
    email = optional(object({
      address = string
      domain  = optional(string, "test.com")
      }),
      {
        address : "example.com",
        domain : "test"
    })
  }))
  default = []
}

## ---- Map ----------

variable "map_str" {
  type    = map(string)
  default = {}
}

## ---- Object ----------

variable "object_with_default" {
  type = object({
    name = string
    age  = optional(number, 10)
  })
  default = {
    name = "Bob"
  }
}

variable "object_with_attr_default" {
  type = object({
    type = optional(string, "none")
    age  = optional(number, 1)
  })
  default = {}
}

variable "object_with_attr_null" {
  type = object({
    type = optional(string, "none")
    age  = optional(number, 1)
  })
  default = null
}

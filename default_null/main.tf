## ---- Simple ----------

variable "str" {
  type    = string
  default = ""
}

variable "str_null" {
  type    = string
  default = null
}

variable "num" {
  type    = number
  default = 0
}

variable "num_null" {
  type    = number
  default = null
}

variable "bool" {
  type    = bool
  default = false
}

variable "bool_null" {
  type    = bool
  default = null
}

## Simple only with default

variable "def_str" {
  default = ""
}

variable "def_str_null" {
  default = null
}

## ---- List ----------

variable "list_string" {
  type    = list(string)
  default = []
}

variable "list_string_null" {
  type    = list(string)
  default = null
}

variable "list_number" {
  type    = list(number)
  default = []
}

variable "list_number_null" {
  type    = list(number)
  default = null
}

variable "list_bool" {
  type    = list(bool)
  default = []
}

variable "list_bool_null" {
  type    = list(bool)
  default = null
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
  default = null
}

variable "list_list_str" {
  type    = list(list(string))
  default = null
}

variable "list_map_string" {
  type        = list(map(string))
  description = "List of maps containing node pools"

  default = null
}

variable "list_map_any" {
  type        = list(map(any))
  description = "List of maps containing node pools"

  default = null
}

## ---- Map ----------

variable "map_str" {
  type = map(string)
  default = {
    name2  = "John"
    age2   = "30"
    email2 = null
  }
}

variable "map_number" {
  type = map(number)
  default = {
    port = null
  }
}

variable "map_bool" {
  type = map(bool)
  default = {
    isNow = null
  }
}

variable "map_any" {
  type = map(any)
  default = {
    name = null
  }
}

## Map only with default

variable "def_map_str" {
  default = {
    name2  = "John"
    age2   = "30"
    email2 = null
  }
}

variable "def_map_number" {
  default = {
    port = null
  }
}

## ---- Object ----------

variable "object_with_default" {
  type = object({
    name = string
    age  = optional(number, 10)
  })
  default = {
    name = "Bob"
    age  = null
  }
}

variable "object_with_attr_default" {
  type = object({
    name = optional(string, "Bob")
    age  = optional(number, null)
  })
  default = {
    name = "Bob parent"
    age  = 10
  }
}

variable "list_object_with_default_and_nest_object" {
  type = list(object({
    name = string
    age  = number
    email = optional(
      object({
        address = string
        domain  = optional(string, "attr.com")
      }),
      {
        address = "bob_nest",
        domain  = "nest.com"
    })
  }))
  default = null
}

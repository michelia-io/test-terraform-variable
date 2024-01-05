## ---- Simple ----------

variable "str" {
  type    = string
  default = "variable-test"
}

variable "num" {
  type    = number
  default = 123
}

variable "bool" {
  type    = bool
  default = false
}

## Simple only with default

variable "def_str" {
  default = "variable-test"
}

variable "def_num" {
  default = 123
}

variable "def_bool" {
  default = true
}

## ---- List ----------

variable "list_string" {
  type    = list(string)
  default = ["a1", "a2"]
}

variable "list_number" {
  type    = list(number)
  default = [80, 443]
}

variable "list_bool" {
  type    = list(bool)
  default = [true, false]
}

variable "list_object" {
  type = list(object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(string, "test.com")
    }))
  }))
  default = [{
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
      domain  = "example.com"
    }
  }]
}

variable "list_list_str" {
  type    = list(list(string))
  default = [["a1"]]
}

variable "list_map_string" {
  type        = list(map(string))
  description = "List of maps containing node pools"

  default = [
    {
      name = "default-node-pool"
    }
  ]
}

variable "list_map_any" {
  type        = list(map(any))
  description = "List of maps containing node pools"

  default = [
    {
      name = "default-node-pool"
    }
  ]
}

variable "list_any" {
  type    = list(any)
  default = [["a1"]]
}

## List only with default

variable "def_list_string" {
  default = ["a1", "a2"]
}

variable "def_list_number" {
  default = [80, 443]
}

variable "def_list_bool" {
  type    = list(bool)
  default = [true, false]
}

variable "def_list_object" {
  default = [{
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
      domain  = "example.com"
    }
  }]
}

variable "def_list_list_str" {
  default = [["a1"]]
}

variable "def_list_map_string" {
  description = "List of maps containing node pools"
  default = [
    {
      name = "default-node-pool"
    }
  ]
}

variable "def_list_map_any" {
  description = "List of maps containing node pools"
  default = [
    {
      name = "default-node-pool"
    }
  ]
}

variable "def_list_any" {
  default = [["a1"]]
}

## ---- Map ----------

variable "map_str" {
  type = map(string)
  default = {
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }
}

variable "map_number" {
  type = map(number)
  default = {
    port = 80
  }
}

variable "map_bool" {
  type = map(bool)
  default = {
    isNow = true
  }
}

variable "map_any" {
  type = map(any)
  default = {
    name = "John"
  }
}

## Map only with default

variable "def_map_str" {
  default = {
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }
}

variable "def_map_number" {
  default = {
    port = 80
  }
}

variable "def_map_bool" {
  default = {
    isNow = true
  }
}

variable "def_map_any" {
  default = {
    name = "John"
  }
}

## ---- Object ----------

variable "simple_object" {
  type = object({
    name = string
    age  = number
  })
}

variable "object_with_default" {
  type = object({
    name = string
    age  = number
  })
  default = {
    name = "Bob"
    age  = 23
  }
}

variable "object_with_attr_default" {
  type = object({
    name = optional(string, "Bob")
    age  = optional(number, 23)
  })
}

variable "object_with_nest_object" {
  type = object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(string, "test.com")
    }))
  })
}

variable "object_with_default_and_nest_object" {
  type = object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(string, "test.com")
    }))
  })
  default = {
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
      domain  = "example.com"
    }
  }
}

variable "object_with_default_and_nest_object2" {
  type = object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(string, "test.com")
    }))
  })
  default = {
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
    }
  }
}

variable "object_with_default_and_nest_object3" {
  type = object({
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
  })
  default = {
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
      domain  = "example.com"
    }
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
  default = [{
    name = "Bob"
    age  = 23
    email = {
      address = "bob"
      domain  = "example.com"
    }
  }]
}

variable "map_object_with_default_and_nest_object" {
  type = map(object({
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
  default = {
    "ab" : {
      name = "Bob"
      age  = 23
      email = {
        address = "bob"
        domain  = "example.com"
      }
    }
  }
}

## Simple object only default

variable "simple_object_only_default" {
  default = {
    name = "Bob"
    age  = 23
  }
}
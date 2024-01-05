## ---- Simple ----------

variable "any_str" {
  type    = any
  default = "variable-test"
}

# UI：缺少了default
variable "any_num" {
  type    = any
  default = 123
}

# UI：缺少了default
variable "any_bool" {
  type    = any
  default = false
}

variable "any_object" {
  type = any
  default = {
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }
}

variable "any_list" {
  type = any
  default = [{
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }]
}

variable "any_map" {
  type = any
  default = {
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }
}


variable "list_any" {
  type    = list(any)
  default = ["a1", "a2"]
}

variable "map_any" {
  type = map(any)
  default = {
    name2  = "John"
    age2   = "30"
    email2 = "john@example.com"
  }
}

# UI：现在UI展示成了一个name字段是string是string输入框
#     另一个age是yaml
variable "simple_object_any" {
  type = object({
    name = string
    age  = any
  })
}

# UI：缺少了default
variable "list_map_any" {
  type        = list(map(any))
  description = "List of maps containing node pools"

  default = [
    {
      name = "default-node-pool"
    }
  ]
}





# UI：现在UI展示成了一个name字段是string是string输入框，另一个age是yaml，name包含了default，但是输入框没有
variable "object_with_default_any" {
  type = object({
    name = string
    age  = any
  })
  default = {
    name = "Bob"
    age  = 23
  }
}

# UI：现在UI展示成了一个name字段是string是string输入框，另一个age是yaml，name包含了default，但是输入框没有
variable "object_with_attr_default_any" {
  type = object({
    name = optional(string, "Bob")
    age  = optional(any, 23)
  })
}

# UI：现在UI展示成了一个name字段是string是string输入框，另一个age是number输入框，email是object，domain又是yaml输入框
variable "object_with_nest_object" {
  type = object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(any, "test.com")
    }))
  })
}

# UI：现在UI展示成了一个name字段是string是string输入框，另一个age是number输入框，email是object，domain又是yaml输入框
# NOTE: 这里考虑展示叶子节点的default值需要完整构造这个对象，所以针对any类型，这里要展示只取根节点的default，忽略叶子节点
variable "object_with_default_and_nest_object" {
  type = object({
    name = string
    age  = number
    email = optional(object({
      address = string
      domain  = optional(any, "test.com")
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

# 这里后端生成也缺少了根default
variable "object_with_default_and_nest_object3" {
  type = object({
    name = string
    age  = number
    email = optional(
      any,
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

# 这里后端生成也缺少了根default
variable "list_object_with_default_and_nest_object" {
  type = list(object({
    name = string
    age  = number
    email = optional(
      any,
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

# 这里后端生成缺少了根default
variable "map_object_with_default_and_nest_object" {
  type = map(object({
    name = string
    age  = number
    email = optional(
      any,
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
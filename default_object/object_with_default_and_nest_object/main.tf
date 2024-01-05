variable "object_with_default_and_nest_object" {
  type = object({
    name = optional(string, "myname")
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
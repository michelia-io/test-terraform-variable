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
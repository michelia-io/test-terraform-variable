variable "map_bool" {
  type = map(bool)
  default = {
    isNow = true
  }
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

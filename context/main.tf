variable "any_str" {
  type    = any
  default = "variable-test"
}

# UI：缺少了default
variable "any_num" {
  type    = any
  default = 123
}

variable "context" {
  description = <<-EOF
Receive contextual information. When Walrus deploys, Walrus will inject specific contextual information into this field.

Examples:
```
context:
  project:
    name: string
    id: string
  environment:
    name: string
    id: string
  resource:
    name: string
    id: string
```
EOF
  type        = map(any)
  default     = {}
}

# https://www.youtube.com/watch?v=8otRWvlGLi8
#https://jhooq.com/terraform-for-and-for-each-loop/


# terraform init
# terraform apply

variable "names" {
    description = "list of names"
    type = list(string)
    default = [ "vm0","vm1","vm2" ]
}

output "vms_names" {
        value = [for name in var.names : "The name of vm is : ${name}"]
        # value = [for name in var.names : name]
        # value = [for name in var.names : { "name" = join(" : ", [name]) }]
}

output "count_arrs" {
        value = length(var.names)
        # value = [for name in var.names : { "name" = join(" : ", [name]) }]
}
# ----output-----
# count_arrs = 3
# vms_names = [
#   "The name of vm is : vm0",
#   "The name of vm is : vm1",
#   "The name of vm is : vm2",
# ]

//-------------------------------------------------------------------------------
# variable "iam_users" {
#   description = "map"
#   type        = map(string)
#   default     = {
#     user1      = "normal user"
#     user2  = "admin user"
#     user3 = "root user"
#   }
# }

# output "user_with_roles" {
#   value = [for name, role in var.iam_users : "${name} is the ${role}"]
# }
# ----output-----
# user_with_roles = [
#   "user1 is the normal user",
#   "user2 is the admin user",
#   "user3 is the root user",
# ]
//-------------------------------------------------------------------------------

module "group-membership" {
  source = "../module/iam/group-membership"
  group_memberships = {
    "admin" = [
      module.user.users["admin-miyahana"].name,
    ]
  }
}

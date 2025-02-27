#### Subscription ####
variable "subscription_id" {
  description = "ID of the Subscription"
  type        = string
  validation {
    condition     = can(regex("\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b", var.subscription_id))
    error_message = "Must be a valid subscription id. Ex: 9e4e50cf-5a4a-4deb-a466-9086cd9e365b."
  }
}

#### Resource Group ####
variable "resource_group_object" {
  description = "Resource Group Object"
  type        = any
}

#### Tags ####
variable "tags" {
  description = "BYO Tags, preferrable from a local on your side :D"
  type        = map(string)
}

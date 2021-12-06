// Required


variable "name" {
  description = "The name of the job."
  type        = string
}

variable "pubsub_topic_name" {
  description = "The full resource name for the Cloud Pub/Sub topic to which messages will be published when a job is delivered."
  type        = string
}
variable "app_engine_relative_uri" {
  description = "The relative URI."
  type        = string
}

variable "http_target_uri" {
  description = "The full URI path that the request will be sent to."
  type        = string
}

variable "project" {
  description = "The ID of the project in which the resource belongs."
  type        = string
}
 
// Optional

variable "description" {
  description = "A human-readable description for the job."
  type        = string
  default     = "the job seduler job created for the project"
}

variable "schedule" {
  description = "Describes the schedule on which the job will be executed."
  type        = string
  default     = "* * * * *"
}

variable "time_zone" {
  description = "Specifies the time zone to be used in interpreting schedule. "
  type        = string
  default     = "asia-south1-b"
}

variable "attempt_deadline" {
  description = "The deadline for job attempts."
  type        = string
  default     = "320s"
}

variable "retry_retry_count" {
  description = "The number of attempts that the system will make to run a job using the exponential backoff procedure described by maxDoublings."
  type        = number
  default     = 2
}

variable "retry_max_retry_duration" {
  description = "The time limit for retrying a failed job, measured from time when an execution was first attempted."
  type        = string
  default     = "1s"
}

variable "retry_min_backoff_duration" {
  description = "The minimum amount of time to wait before retrying a job after it fails."
  type        = string
  default     = "5s"
}

variable "retry_max_backoff_duration" {
  description = "The maximum amount of time to wait before retrying a job after it fails. "
  type        = string
  default     = "3600s"
}

variable "retry_max_doublings" {
  description = "The time between retries will double maxDoublings times."
  type        = number
  default     = 5
}

variable "pubsub_data" {
  description = "The message payload for PubsubMessage. "
  type        = string
  default     = "base64-encoded()"
}

variable "pubsub_attributes" {
  description = " Attributes for PubsubMessage. "
  type        = map(string)
  default     = {"mass":"1.3kg"}
}

variable "app_engine_http_method" {
  description = "Which HTTP method to use for the request."
  type        = string
  default     = "GET"
}

variable "app_engine_routing_service" {
  description = "App service."
  type        = string
  default     = "default"
}

variable "app_engine_routing_version" {
  description = "App version. "
  type        = string
  default     = "default"
}

variable "app_engine_routing_instance" {
  description = "App instance."
  type        = string
  default     = "default"
}

variable "http_target_http_method" {
  description = "Which HTTP method to use for the request."
  type        = string
  default     = "POST"
}

variable "region" {
  description = "Region where the scheduler job resides."
  type        = string
  default     = ""
}


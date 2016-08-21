# outputs produced at the end of a terraform apply: id of storage service
output "demo_storage_id"       { value = "${azure_storage_service.demo-storage.id}" }

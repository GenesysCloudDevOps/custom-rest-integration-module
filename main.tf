resource "genesyscloud_integration" "integration" {
    integration_type = "custom-rest-actions"
    intended_state   = "ENABLED"

    config {
        name = var.integration_name
        credentials = {
            basicAuth = genesyscloud_integration_credential.credential.id
        }
    }
}
    
resource "genesyscloud_integration_credential" "credential" {
    name                 = "Custom Rest Credentials"
    credential_type_name = "basicAuth"

    fields = {
        userName = var.integration_creds_username
        password = var.integration_creds_password
    }
}
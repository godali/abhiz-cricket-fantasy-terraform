provider "google" {
    credentials = "${file("guttu/gcp_service_account.json")}"
    project     = "abhiz-cricket-fantasy"
    region      = "us-east1-b"
}

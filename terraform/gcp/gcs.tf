resource "google_project_iam_policy" "project" {
  project     = "your-project-id"
  policy_data = data.google_iam_policy.admin.policy_data
}

data "google_iam_policy" "admin" {
  "bindings": [
    {
      "role": "roles/owner",
      "members": [
        "user:janedoe@example.com"
      ]
    },
    {
      "role": "roles/editor",
      "members": [
        "user:johndoe@example.com"
      ]
    }
  ]
}

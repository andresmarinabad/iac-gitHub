resource "github_repository" "agapes" {
  provider = github.comu

  name        = "agapes"
  description = "Static web project to share the agapes groups"

  visibility = "public"

  allow_auto_merge            = true
  allow_merge_commit          = false
  allow_rebase_merge          = true
  allow_squash_merge          = true
  allow_update_branch         = false
  archived                    = false
  auto_init                   = true
  delete_branch_on_merge      = false
  has_discussions             = false
  has_downloads               = false
  has_issues                  = false
  has_projects                = false
  has_wiki                    = false

  archive_on_destroy = false
  vulnerability_alerts = true

  license_template = "mit"

  pages {
    build_type = "workflow"

    source {
        branch = "master"
        path   = "/"
    }
  }


  topics = ["terraform", "github", "html", "css"]

  lifecycle {
    prevent_destroy = true
  }
}
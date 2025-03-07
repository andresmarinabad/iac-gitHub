resource "github_repository" "iac-github" {
  provider = github.andres

  name        = "iac-gitHub"
  description = "My terraform repo to manage all my repos"

  visibility = "public"

  has_issues        = false
  has_projects      = false
  has_wiki          = false
  is_template       = false
  auto_init         = true
  allow_merge_commit = false
  allow_squash_merge = true
  allow_rebase_merge = true
  allow_auto_merge   = true
  delete_branch_on_merge = true

  archive_on_destroy = false
  vulnerability_alerts = true

  # Licencia
  license_template = "mit"

  # Página web desde GitHub Pages
  /**pages {
    source {
      branch = "master"
      path   = "/"
    }
  }
**/
  topics = ["terraform", "github", "repo"]

  lifecycle {
    prevent_destroy = true
  }

}
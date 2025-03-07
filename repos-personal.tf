resource "github_repository" "iac-github" {
  provider = github.andres

  name        = "iac-gitHub"
  description = "My terraform repo to manage all my repos"

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

resource "github_repository" "fotosblog" {
  provider = github.andres

  name = "fotosblog"
  description = "Download at once all kids pictures from Jesuites blog"

  visibility = "private"

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

  license_template = "mit"

  is_template                 = true
  merge_commit_message        = "PR_TITLE"
  merge_commit_title          = "MERGE_MESSAGE"

  squash_merge_commit_message = "COMMIT_MESSAGES"
  squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"

  lifecycle {
    prevent_destroy = true
  }

  topics                      = ["terraform", "python", "webscraping"]

}
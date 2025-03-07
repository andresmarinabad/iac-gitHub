# iac-github

![Static Badge](https://img.shields.io/badge/terraform-v1.11-purple)


## Overview

`iac-github` is a Terraform project that integrates with the GitHub provider to create and manage repositories both in your personal account and a shared account. It utilizes a GitHub personal access token (PAT) for authentication and resource management.

By leveraging Infrastructure as Code (IaC) principles, this project allows for efficient, scalable, and repeatable management of GitHub repositories, ensuring consistency and reducing manual work.

## Advantages

- **Automation**: Easily create, modify, and delete repositories through Terraform code instead of manual operations.
- **Consistency**: Maintain the same repository configurations across different accounts.
- **Scalability**: Manage multiple repositories with minimal effort.
- **Version Control**: Track changes in repository configurations using Terraform state management.
- **Reproducibility**: Quickly recreate repositories in the same or different GitHub accounts.

## Prerequisites

Before setting up this project, ensure you have the following installed:

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- A [GitHub personal access token (PAT)](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)
- Access to the GitHub accounts where you want to manage repositories

## Setup and Installation

1. **Clone this repository**
   ```sh
   git clone https://github.com/your-username/iac-github.git
   cd iac-github
   ```

2. **Create a `terraform.tfvars` file** in the root of the project and add your GitHub token:
   ```hcl
   github_token = "your_personal_access_token"
   ```

3. **Initialize Terraform**
   ```sh
   terraform init
   ```

4. **Plan the changes** (optional step to preview what Terraform will do):
   ```sh
   terraform plan
   ```

5. **Apply the changes** to create or modify repositories:
   ```sh
   terraform apply
   ```
   Confirm the execution by typing `yes` when prompted.

6. **Verify** the repositories have been created in GitHub.

## Usage

Modify the Terraform configuration files (`.tf` files) to manage additional repositories or update existing configurations. Then, re-run `terraform apply` to apply the changes.

## Notes

- The project does not include CI/CD integration.
- The personal access token must have the appropriate permissions to manage repositories (`repo` scope for private repositories, `public_repo` for public ones).
- Make sure not to commit sensitive information (e.g., `terraform.tfvars`) to version control.

## License

This project is open-source and licensed under the [MIT License](LICENSE).


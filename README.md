# azure-bootstrap-infra
Azure Infrastructure Repo

# Azure Bootstrap Infrastructure

## Overview
This repository contains Terraform code to bootstrap an Azure Service Principal for managing your infrastructure securely. It also includes a GitHub Actions workflow for fully automated deployment.

## Structure
- `modules/service_principal`: Terraform module to create Service Principals.
- `environments/dev`: Example configuration for the development environment.
- `.github/workflows/bootstrap.yml`: CI/CD pipeline to automate the process.

## Usage
1. Update `variables.tf` with your Azure Subscription ID.
2. Add the following secrets to your GitHub repository:
   - `ARM_CLIENT_ID`
   - `ARM_CLIENT_SECRET`
   - `ARM_SUBSCRIPTION_ID`
   - `ARM_TENANT_ID`
3. Push changes to the `main` branch to trigger the workflow.

## Outputs
After deployment, you will get:
- `Client ID`
- `Client Secret`
- `Tenant ID`

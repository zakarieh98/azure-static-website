# Azure Static Website with Terraform

This project shows you how to create a simple static website on Microsoft Azure using Terraform. Terraform helps you set up and manage your cloud resources with code — no need to click around in the Azure portal!

---

## What You Will Learn

- How to use Terraform to create Azure resources
- How to set up an Azure Storage Account that hosts a static website
- How to keep your cloud setup saved in code
- How to use Git and GitHub to keep track of your project files

---

## What This Project Does

The Terraform files here create:

- An **Azure Resource Group** (a container for resources)
- An **Azure Storage Account** with static website hosting enabled

You can then upload your website files (like HTML and images) to the storage account and it will be available on the internet!

---

## What You Need Before Starting

- An [Azure account](https://azure.microsoft.com/free) (you can get a free one)
- [Terraform installed](https://www.terraform.io/downloads)
- [Git installed](https://git-scm.com/downloads)
- [GitHub account](https://github.com/)
- [Azure CLI installed](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) — helps with login

---

How to Use This Project
1. Download the project code
Open your terminal (Command Prompt or PowerShell) and run:

bash
Copy
Edit
git clone https://github.com/your-username/azure-static-website.git
cd azure-static-website
2. Log in to your Azure account
If you have Azure CLI installed, run:

bash
Copy
Edit
az login
A browser window will open for you to sign in.

3. Prepare Terraform
Initialize Terraform in your project folder:

bash
Copy
Edit
terraform init
4. See what Terraform will create
Run:

bash
Copy
Edit
terraform plan
This shows you what resources will be created on Azure.

5. Create the resources
Apply the plan:

bash
Copy
Edit
terraform apply
Confirm by typing yes when prompted.

6. Upload your website files
After resources are created, upload your website files (HTML, CSS, images) to the Azure Storage Account’s $web container.

You can do this via the Azure Portal or using the Azure CLI.
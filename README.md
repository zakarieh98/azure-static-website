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
- (Optional) [Azure CLI installed](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) — helps with login

---

## How to Use This Project

1. **Download the project code**

   Open your terminal (command prompt or PowerShell) and type:

   ```bash
   git clone https://github.com/zakarieh98/azure-static-website.git
   cd azure-static-website
   ```

2. **Log in to your Azure account**

   If you have Azure CLI installed, run:

   ```bash
   az login
   ```

   A browser window will open for you to sign in.

3. **Prepare Terraform**

   Initialize Terraform in your project folder:

   ```bash
   terraform init
   ```

4. **See what Terraform will create**

   Run:

   ```bash
   terraform plan
   ```

   This shows you what resources will be created on Azure.

5. **Create the resources**

   Apply the plan:

   ```bash
   terraform apply
   ```

   Confirm by typing `yes` when prompted.

6. **Upload your website files**

   After resources are created, upload your website files (HTML, CSS, images) to the Azure Storage Account’s `$web` container (you can do this via Azure portal or Azure CLI).

---

## 🧹 Clean Up

To delete all resources created by Terraform:

```bash
terraform destroy
```

Confirm with `yes` when prompted.

---

## 📚 Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Azure Static Website Hosting](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website)
- [Azure CLI Reference](https://learn.microsoft.com/en-us/cli/azure/)

---

## 📄 License

This project is open source under the [MIT License](LICENSE).

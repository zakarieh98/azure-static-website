# 🌐 Azure Static Website Deployment with Terraform

This project helps you deploy a static website to Microsoft Azure using **Terraform**. It's beginner-friendly and guides you through the process step-by-step.

---

## 📦 What This Project Does

- Provisions Azure resources using Terraform  
- Hosts a static site using Azure Storage  
- Automates deployment of HTML/CSS/JS files  

---

## ✅ Requirements

Make sure these tools are installed before starting:

- [Git](https://git-scm.com/)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

---

## 🚀 How to Use This Project

### 1. Download the Project Code

Open your terminal (Command Prompt or PowerShell) and run:

```bash
git clone https://github.com/your-username/azure-static-website.git
cd azure-static-website
```

---

### 2. Log in to Azure

If you have Azure CLI installed, run:

```bash
az login
```

A browser window will open for you to sign in.

---

### 3. Prepare Terraform

Initialize Terraform in your project folder:

```bash
terraform init
```

---

### 4. See What Terraform Will Create

Run:

```bash
terraform plan
```

This shows you what resources will be created on Azure.

---

### 5. Create the Resources

Apply the plan:

```bash
terraform apply
```

Confirm by typing `yes` when prompted.

---

### 6. Upload Your Website Files

After resources are created, upload your website files (HTML, CSS, images) to the Azure Storage Account’s `$web` container.

#### Option A: Use the Azure Portal

- Go to the Azure Portal.
- Navigate to your Storage Account.
- Find the `$web` container.
- Upload your files manually.

#### Option B: Use Azure CLI

```bash
az storage blob upload-batch -s ./site-content -d '$web' --account-name <your-storage-account-name>
```

Replace `<your-storage-account-name>` with the name of your Storage Account.

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

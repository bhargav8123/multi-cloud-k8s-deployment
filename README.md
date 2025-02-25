# 🌍 Multi-Cloud Kubernetes Deployment 🚀

A fully automated multi-cloud Kubernetes setup using Terraform, deploying clusters on AWS (EKS), Azure (AKS), and GCP (GKE) with CI/CD, monitoring, and security best practices.

### 📌 Features

✅ Multi-Cloud Deployment – AWS, Azure, GCP Kubernetes clusters managed with Terraform  
✅ Infrastructure as Code (IaC) – Using Terraform for reproducible and scalable cloud setups  
✅ CI/CD Pipeline – Automates cluster provisioning & app deployment via GitHub Actions  
✅ Monitoring & Logging – Integrated Prometheus & Grafana for observability  
✅ Security – Implements RBAC and Network Policies for access control  

## 📂Project Structure
```
multi-cloud-k8s/
│── terraform/                   # Terraform for cloud infrastructure
│   ├── aws/                     # AWS EKS setup
│   ├── azure/                   # Azure AKS setup
│   ├── gcp/                     # Google GKE setup
│   ├── main.tf                   # Terraform entry point
│   ├── variables.tf              # Terraform variables
│   ├── outputs.tf                # Terraform outputs
│── k8s/                          # Kubernetes manifests
│   ├── deployments/              # Application deployments
│   ├── services/                 # Kubernetes services
│   ├── monitoring/               # Prometheus & Grafana
│   ├── security/                 # RBAC & Network Policies
│── .github/workflows/            # CI/CD pipeline with GitHub Actions
│── README.md                     # Project documentation
```

## 🚀 Deployment Guide  
## 1️⃣ Prerequisites  
Ensure you have the following installed:  

- Terraform  
- kubectl  
- AWS CLI  
- Azure CLI  
- Google Cloud SDK  
- Docker  

## 2️⃣ Clone the Repository  
```
git clone https://github.com/Cyber-Cloud-Pro/multi-cloud-k8s-deployment.git
cd multi-cloud-k8s-deployment
```
## 🛠️ Deploying Kubernetes Clusters  
AWS (EKS)
```
cd terraform/aws
terraform init
terraform apply -auto-approve
```  
Azure (AKS)  
```
cd terraform/azure
terraform init
terraform apply -auto-approve
```  
GCP (GKE)   
```
cd terraform/gcp
terraform init
terraform apply -auto-approve
```  

## 🔧 Configure kubectl   
After the clusters are created, configure kubectl to interact with them:  

AWS (EKS)  
```
aws eks --region us-east-1 update-kubeconfig --name multi-cloud-eks
```  
Azure (AKS)  
```
az aks get-credentials --resource-group multi-cloud-rg --name multi-cloud-aks
```  
GCP (GKE)  
```
gcloud container clusters get-credentials multi-cloud-gke --region us-central1
```

## 🚀 Deploy the Web Application  
```
kubectl apply -f k8s/deployments/web-app.yaml
kubectl apply -f k8s/services/web-app-service.yaml
```
Check if the pods and services are running:
```
kubectl get pods
kubectl get svc
```

## 📊 Monitoring & Logging  
Deploy Prometheus & Grafana  
```
kubectl apply -f k8s/monitoring/prometheus.yaml
kubectl apply -f k8s/monitoring/grafana.yaml
```
Access Grafana Dashboard
```
kubectl port-forward svc/grafana 3000:3000
Open http://localhost:3000 in your browser.
```

## 🔒 Security Best Practices  
✅ RBAC (Role-Based Access Control) – Restricts access based on roles  
✅ Network Policies – Ensures only specific traffic is allowed  

Apply security policies:
```
kubectl apply -f k8s/security/rbac.yaml
kubectl apply -f k8s/security/network-policy.yaml
```

## 🚀 CI/CD Pipeline  
This project uses GitHub Actions to automate deployment.  
Whenever you push a new commit to the main branch, the pipeline will:  

Apply Terraform – Deploy infrastructure  
Deploy Kubernetes manifests – Deploy app to clusters  
CI/CD workflow is located in .github/workflows/deploy.yml.  


## 🛑 Cleanup  
To delete infrastructure and prevent extra costs:  

```
terraform destroy -auto-approve
```

## 🎯 Future Enhancements
🔹 Implement Istio Service Mesh for advanced traffic management  
🔹 Add Terraform modules for better reusability  
🔹 Improve security with OIDC authentication  



# ⚠️ Disclaimer
This project is intended for reference and learning purposes only. The provided files and configurations serve as a high-level example of a multi-cloud Kubernetes deployment using Terraform.

# 🚨 Important Notes:

This setup is not production-ready and may require modifications to align with specific security, networking, and compliance requirements.
Before deploying to a real environment, review and customize the Terraform scripts, Kubernetes manifests, and security policies to fit your needs.
Use this project at your own risk, and ensure you test changes in a controlled environment before applying them to production.
💡 Feel free to explore, modify, and improve the configurations as per your requirements! 🚀

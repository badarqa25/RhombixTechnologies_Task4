🚀 **Scalable Web Application Deployment on AWS with Terraform**

This project demonstrates how to deploy a highly available and scalable web application on AWS using Terraform. The infrastructure includes:

Auto Scaling Group (ASG) for automatic instance scaling

Application Load Balancer (ALB) for distributing traffic

EC2 instances running a simple web app

S3 bucket + CloudFront CDN for hosting and serving static assets

Terraform for Infrastructure as Code (IaC)

📂 **Project Structure**

├── main.tf              # Terraform configuration for AWS resources
├── variables.tf         # Input variables for Terraform
├── userdata.sh          # Bootstrapping script for EC2 instances
├── static-site/
│   ├── index.html       # Static homepage
│   └── error.html       # Error page
└── README.md            # Project documentation

🛠️ **AWS Resources Created**

VPC + Subnets + Internet Gateway + Route Table

Provides networking for EC2 instances.

Security Group

Allows inbound HTTP (80) and SSH (22).

Launch Template + Auto Scaling Group (ASG)

Launches EC2 instances with the userdata.sh script.

Automatically scales between 1–3 instances.

Application Load Balancer (ALB)

Routes HTTP traffic to EC2 instances.

S3 Static Website Hosting

Hosts static pages (index.html and error.html).

CloudFront Distribution

Serves static site globally with caching.

⚙️ **Prerequisites**

AWS Account

Terraform
 installed

AWS CLI configured with credentials (aws configure)

🚀** Deployment Steps**

Clone the repository

git clone https://github.com/your-username/scalable-webapp-aws.git
cd scalable-webapp-aws


Initialize Terraform

terraform init


Validate configuration

terraform validate


Plan the deployment

terraform plan


Apply configuration

terraform apply -auto-approve

📊** Outputs**

After successful deployment, Terraform will display:

ALB DNS Name → URL of the load balancer for the EC2 web app

CloudFront URL → CDN endpoint for the static site

📝 **File Explanations**

main.tf → Defines all AWS resources

variables.tf → Stores reusable variables (region, AMI ID, instance type, S3 bucket name)

userdata.sh → Bootstraps EC2 (installs & runs a web server)

index.html & error.html → Static site pages hosted in S3 + CloudFront

🔍 **Example Outputs**
alb_dns_name     = web-alb-1234567890.us-east-1.elb.amazonaws.com
cloudfront_url   = d12345abcdef.cloudfront.net


Open the ALB DNS name in a browser → View the dynamic app from EC2.

Open the CloudFront URL → View the static site served globally.

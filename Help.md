**Prerequisites**
AWS Account: Ensure access to an AWS account.
Terraform: Terraform must be installed on your local machine.
GitHub Account: Required for repository management and to use GitHub Actions for automation.
AWS CLI: Configured with appropriate access credentials.


**Infrastructure Setup with Terraform**
AWS infrastructure includes the following components:

VPC (Virtual Private Cloud): Isolates the cloud network, enhancing security.
Subnets: Distributes resources across multiple Availability Zones to ensure high availability.
Internet Gateway (IGW): Provides access to the internet for resources within the VPC.
S3 Bucket: Hosts the static React application, configured for public access and website hosting.
Security Groups: Restrict access to resources based on defined rules.
The Terraform configuration is modularized for maintainability and scalability. Each AWS resource type is defined in its module, facilitating reusability and clear structure.

**Terraform Module Structure**
VPC Module: Sets up the VPC, subnets, and associated routing.
S3 Module: Configures the S3 bucket for static website hosting.
Continuous Integration and Deployment (CI/CD)
CI/CD is handled via GitHub Actions. The workflow automates the process of building the React application and deploying it to the configured S3 bucket upon any push to the main branch.

**Key Steps in the CI/CD Workflow:**
Checkout Code: Clones the repository to the GitHub Actions runner.
Setup Node.js: Ensures the runner has the correct Node.js environment for building the application.
Install Dependencies: Runs npm install to fetch the project dependencies.
Build Application: Executes npm run build to create a production build of the React application.
Deploy to AWS S3: Uses the s3-sync-action GitHub Action to synchronize the build directory with the S3 bucket, making the application accessible online.

**Getting Started**
Clone the Repository: Fork and clone the repository to get started with your own version of the application.
Terraform Initialization: Navigate to the directory containing the Terraform configuration and run Terraform init to prepare your Terraform workspace.
Apply Terraform Configuration: Execute Terraform apply to create the infrastructure on AWS.
GitHub Actions: The CI/CD pipeline is triggered automatically upon commits to the main branch, deploying updates to the S3 bucket.

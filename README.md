# Two-Tier Web application Automation with Terraform 

Terraform module which creates Auto Scaling resources on AWS and Application Load Balancer resources on AWS.

# Requirements
<table><th> Name</th> <th> Version </th>
  <tr><td>aws</td><td>>= 3.72r</td></tr>
  <tr><td>terraform</td><td>>= 0.13.1</td></tr>
  </table>
  
# Providers
<table><th> Name</th> <th> Version </th>
  <tr><td>aws</td><td>>= 3.72r</td></tr>
   </table>

# Prerequisite

Create following S3 buckets

<table><th>Command</th><th>Description</th>
   <tr><td>aws s3 mb s3://dev-acs730-final-project</td><td>To store Terraform State of development Enviroment</td></tr>
  <tr><td>aws s3 mb s3://staging-acs730-final-project</td><td>To store Terraform State of Staging Enviroment</td></tr>
   <tr><td>aws s3 mb s3://prod-acs730-final-project</td><td>To store Terraform State of production Enviroment</td></tr>
     <tr><td>aws s3 mb s3://webimg-acs730-final-project</td><td>To store web images</td></tr>
   </table>
   
   Create SSH Keys
   
   <table><th>Command </th> <th> Description  </th>
  <tr><td>ssh-keygen -t rsa -f Dev-key</td><td>To generate Key-pair for staging enviroment </td></tr>
    <tr><td>ssh-keygen -t rsa -f Staging-key</td><td>To Key-pair for generate staging enviroment</td></tr>
    <tr><td>ssh-keygen -t rsa -f Prod-key</td><td>To generate Key-pair for Prod enviroment </td></tr>
  </table>
  
  # Deployment Guide
  
<b>Development Enviroment</b>

   Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/dev/network
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
    

   Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/dev/webserver
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
   
 <b>Staging Enviroment</b>

   Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/staging/network
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
    

  Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/staging/webserver
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
    
    
 <b>Production Enviroment</b>

   Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/prod/network
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
    

  Navigate to dev folder -> cd /Final-Project-Group24/terraform/Project-Enviromrnt/prod/webserver
  
    terraform init
    terraform fmt
    terraform validate
    terraform plan
    terraform apply --auto-approve
    

 # Authors
 
  <ul>
<li>Sneha Pillay</li>
<li>Sneha Mudavath</li>
<li>Arun Bains</li>
<li>Varnika Bassi</li>
</ul>
 
# Acknowledgement
 
<b>Prof. Irina Geiman for her kind guidance and timely help :-)</b>

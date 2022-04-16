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

<table><th>Bucket Name</th><th>Description</th><th>Description</th><th>Access</th>
  <tr><td>dev-acs730-final-project</td><td>To store Terraform State of development Enviroment</td><td> Private</d></tr>
  <tr><td>staging-acs730-final-project</td><td>To store Terraform State of Staging Enviroment</td><td> Private</d></tr>
   <tr><td>prod-acs730-final-project</td><td>To store Terraform State of production Enviroment</td><td> Private</d></tr>

     <tr><td>acs-webimg<td>To store images for website</td><td>Public<br> Note: please make objects of S3 public by permissions -> Make Public using ACL-> Make Public<br> Permission-> ACL-> Everyone (public access) -> Read </d></tr>

   </table>
   
   Create SSH Keys
   
   <table><th>Command </th> <th> Description  </th> 
  <tr><td>ssh-keygen -t rsa -f Dev-key</td><td>To generate Key-pair for staging enviroment </td></tr>
    <tr><td>ssh-keygen -t rsa -f Staging-key</td><td>To Key-pair for generate staging enviroment</td></tr>
    <tr><td>ssh-keygen -t rsa -f Prod-key</td><td>To generate Key-pair for Prod enviroment </td></tr>
  </table>
  
  # Deployment Guide
  
<b>Clone Prod branch</b>
  
   git clone -b Prod https://github.com/ACS730/Final-Project-Group24.git
    
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
 
<b>Prof. Irina Geiman for her kind guidance and timely help  &#128512;</b>



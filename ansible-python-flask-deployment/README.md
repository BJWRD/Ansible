# ansible-python-flask-deployment
Python Flask Web App deployment using Ansible for automation on an EC2 AWS Instance.

# Prerequisites
**Warning: this will create AWS resources that costs money**
* An AWS Account with an IAM user capable of creating resources – `AdminstratorAccess`
* A locally configured AWS profile for the above IAM user
* AWS EC2 key pair - [steps](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)
* Python3 installation - [steps](https://www.python.org/downloads/)
* Ansible installation - [steps](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* Provisioned EC2 (Amazon Linux) Instance - with permissive Security Groups to allow SSH Port 22 access. 

# How to Apply/Destroy
This section details the deployment of the Python Flask Docker Container using Ansible. 

## Deployment Steps

#### 1.	Clone the repo
    git clone https://github.com/BJWRD/ansible-python-flask-deployment && cd ansible-python-flask-deployment
    
#### 2. Update the inventory details to match your details accordingly -
    [ec2:vars]
    ansible_ssh_private_key_file=/path/to/.pem_file

    [ec2]
    x.x.x.x
    
#### 3. Ensure you are able to ping the EC2 instance via Ansible 
    ansible -i inventory ec2 -m ping -u ec2-user
    
### 4. Deploy the application 
    ansible-playbook -i inventory main.yml -u ec2-user
    
## Verification Steps 

<img width="889" alt="image" src="https://github.com/BJWRD/ansible-python-flask-deployment/assets/83971386/30683cb2-25f5-47fe-a44c-b28086a7ea87">



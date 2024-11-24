# TERRAFORM

## DEPLOY EC2 
## Environment variable
~~~sh
export TF_VAR_aws_access_key="your_access_key"
export TF_VAR_aws_secret_key="your_secret_key"
export TF_VAR_aws_region="your_region"
~~~
## Workflow
### Init
cd /projet/folder
~~~sh
terraform init
~~~

### changes
Check changes
~~~sh
terraform plan
~~~
### Deploy
~~~sh
terraform deploy
~~~
### Destroy
~~~sh
terraform destroy
~~~
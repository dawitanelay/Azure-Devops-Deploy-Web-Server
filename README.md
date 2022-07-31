
# Azure Infrastructure Operations Project: Deploying a scalable IaaS web server in Azure

![alt text](diagram/Architectur-Diagram.png)

## Introduction
Infrastructure as code is one of the five practices that we consider the heart of DevOps. Infrastructure as code provides a significant
benefit in terms of creating, deploying, upgrading, and deleting infrastructure. Infrastructure as code make the deployment procedure as simple
as pressing a button.

[Packer]( https://www.packer.io/docs_) a server templating software written in JSON, will be used to create virtual machine images containing our application for repeatable deployments.
[Terraform](https://www.terraform.io/) is a provisioning tool that creates infrastructure according to a configuration file that you create.
This file can be saved and reused which enables you to safely and predictably create, change, and improve infrastructure.

For this project, you will write a Packer template and a Terraform template to deploy a customizable, scalable web server in Azure.

## Getting Started
1. Clone this repository

2. Create your infrastructure as code

3. Create your tagging-policy in Azure

4. Create your resource group in Azure

## Dependencies
1. Create an [Azure Account](https://portal.azure.com)
2. Install  latest version  [Azure command line interface](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install  latest version [Packer](https://www.packer.io/downloads)
4. Install latest version [Terraform](https://www.terraform.io/downloads.html)

## Instructions
Once you've gathered your dependencies, we'll need the following steps to deploy the scalable web server on Azure:
1. Deploy the packer image
2. Deploy the infrastructure with Terraform template

#### :red_circle:  Deploy the Packer Image :red_circle:
Using packer we will deploy  virtual machines images. Before that set the environment variable as following
#### ::pencil::  Config Environment Variables ::pencil::

Go to the setEnv.sh script and set the environment variables like below.

```bash

export ARM_CLIENT_ID=d12050fc-42aa-4e02-84ed-3b7663b17b6f
export ARM_CLIENT_SECRET=bbR8Q~vWk2Qwg4yrsov2piwWXwaJSwEnlQ~yWc5O
export ARM_SUBSCRIPTION_ID=13e7b74b-ca4b-405f-9015-8032555cec7c
export ARM_TENANT_ID=f958e84a-92b8-439f-a62d-4f45996b6d07
```
Then run the following command
```bash
chmod a+x setEnv.sh
sources setEnv.sh
```
After you have set the environment variables, use 'printenv ' to ensure that they are correctly configured.
```bash
printenv | grep "ARM_CLIENT_ID"
```

#### :ballot_box_with_check: Get Client ID

* Login into your azure account
* Search and click "Azure Active Directory"
* Click "App registrations" under the Manage tab
* Click the application that you own
* Copy the client ID


#### :ballot_box_with_check: Get Client Secret

* Login into your azure account
* Search and click "Azure Active Directory"
* Click "App registrations" under the Manage tab
* Click the application that you own
* Click the "Certificates & Secrets" under the Manage tab
* Create a client secret as you need.

#### :ballot_box_with_check: Get Subscription ID

* Login into your azure account
* Search and click "Subscriptions"
* Choose the subscriptions that are required.
* Click on the overview
* Copy the Subscription Id

Please check the link for more clear visualization [a link](https://docs.lacework.com/onboarding/gather-the-required-azure-client-id-tenant-id-and-client-secret)

#### :red_circle:  Deploy the Packer Image :red_circle:  

Run the following command to deploy the packer image.

```bash
packer build server.json
```
This can take quite a while so feel free to get your self a drink :coffee:

![packer output](./images/packerBuild.png)
Then we can access (i.e. list or delete) this image using the CLI:
To delete image at the end use the following (skip it for our case )
```bash
az image list
az image delete -g packer-rg -n myPackerImage
```

#### :red_circle: Deploy the infrastructure with Terraform template :red_circle:
To use variables for your main.tf, you can specify your variables like below in your variables.tf file.

```tf
variable "prefix" {
  description = "The prefix which should be used for all resources in this example"
  default = "udacity"
}

```

And in your main.tf, you can call the variables like

```tf
var.prefix
```

<<<<<<< HEAD
### Import resource group
=======
### Import resource group 
>>>>>>> 16a4a9d8317213a79585917c29a6485736842715

We've previously established the resources group for our PackerImage, hence we can't deploy the same resource group.
We must import the existing resource group before it can determine which resource group to install.
```bash
cd /terraform-provider-azurerm/web-server
terraform init
terraform import azurerm_resource_group.main /subscriptions/{subsriptionId}/resourceGroups/{resourceGroupName}
```
```bash
az login -u your-user-name -p your-password
```
To deploy our configuration, run the following commands:
```bash
cd /terraform-provider-azurerm/web-server

terraform plan -out solution.plan
```
![terraform Plan](./images/terraformPlan.png)

```bash
cd /terraform-provider-azurerm/web-server

terraform apply
```
## Output
If you were successful in deploying the resources, it would look like this:

![tarraform Apply ](./images/tarraformApply.png)

You may also check the Azure site to see if these resources have been delivered. The end outcome will be as follows.

![Azrue-portal-output1 ](./images/Azrue-portal-output1.png)
![Azrue-portal-output2 ](./images/Azure-portal-outout2.png)

In the terminal, type `terraform show` to check the resources

```bash
cd /terraform-provider-azurerm/web-server
terraform show
```

After the deployment, remember to destroy the resources.

``` bash
cd /terraform-provider-azurerm/web-server
terraform destroy
```
Please see the report for more [Report](Report .pdf)

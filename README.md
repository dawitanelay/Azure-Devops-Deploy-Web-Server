
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
**Your words here**
Once you've gathered your dependencies, we'll need the following steps to deploy the scalable web server on Azure:
1. Deploy the packer image
2. Deploy the infrastructure with Terraform template

#### ::pencil::  Config Environment Variables ::pencil::

Go to the setEnv.sh script and set the environment variables like below.

```bash
export ARM_CLIENT_ID=4685768f-1912-4c9a-8226-b670918xxxxfakeclientid
export ARM_CLIENT_SECRET=6GNB5c5p_5H.-odi_zffakesecret
export ARM_SUBSCRIPTION_ID=59ce2236-a139-4c5fakesubsribtionid
```
Then run the following command
```bash
chmod a+x setEnv.sh
sources setEnv.sh
```
After you have exported and set the environment variables, use 'printenv | grep "ARM_CLIENT_ID" ' to ensure that they are correctly configured.

## Output
**Your words here**

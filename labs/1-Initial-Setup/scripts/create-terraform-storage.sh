#!/bin/sh

RESOURCE_GROUP_NAME="Devops"
STORAGE_ACCOUNT_NAME="devopsjourneystorageacct"
LOCATION="SouthEastAsia"

# Create Resource Group
# az group create -l $LOCATION -n $RESOURCE_GROUP_NAME   ##already created when devops pipline authenticate with Azure

# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $LOCATION --sku Standard_LRS

# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME
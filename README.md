# Terraform
attributes can help in resuing of creating multiple things by changing the values of keys 
and also we can maintain the document what options we used for building the infra if we do version control{any modifications everything will be maintain as version and records are up to the mark} maintain the records and validate the resorces how effieciently we are using.
infra changes granular changes are maintainedand stable the infra with perfect version.
who wrote the code who did modified

##Pipeline###
1.from github we will pull code it will create the required nfrastrcture with terraform/ we can use packer for custom images converting into ami 
2.that artifacts will convert into docker image by using docker build -t d push to registry
3.k8s mainfests define and run docker
====================================================================
Pre-Configuration:
###### it is possible since use k8s>> mainfests
###### for infra we are use >>terraform file 
###### for docker we use >>docker file
everything is code store in hub  we are defining one by one in pipeline and executing through ci cd
=====================================================================
post configuration:
## ansible specifically vm's machines releated with there applications configuration we use ansible 
=====================================================================

Basic compoments of terraform

Provider >> My infra which cloud it should use like aws /azure / gcp{vendor specific plugin which downloads as exe file}
Resource >>are the data block of our infra which compoment we want to build will define like >>vnet,subnet,vm,n.s.g
data block>> existing infra we want to update to our code
functions meta data
count
local variables
state file >> granular changes to be updated 
resource "azurerm_virtual_network" "vnet"{
    name : "vent1" ## defining the attributes as key:"value" if it is string best pratices use "
}
# ConnectWise::InvoiceEmailTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**service_survey** | [**ServiceSurveyReference**](ServiceSurveyReference.md) |  | [optional] 
**use_sender_flag** | **BOOLEAN** |  | [optional] 
**first_name** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false | [optional] 
**last_name** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false | [optional] 
**email_address** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false | [optional] 
**subject** | **String** |  | 
**body** | **String** |  | [optional] 
**copy_sender_flag** | **BOOLEAN** |  | [optional] 
**invoice_status** | [**BillingStatusReference**](BillingStatusReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



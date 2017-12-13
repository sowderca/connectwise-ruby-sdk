# ConnectWise::ServiceEmailTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**type** | **String** |  | 
**service_survey** | [**ServiceSurveyReference**](ServiceSurveyReference.md) |  | [optional] 
**service_board** | [**BoardReference**](BoardReference.md) |  | [optional] 
**use_sender_flag** | **BOOLEAN** |  | [optional] 
**first_name** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false. | [optional] 
**last_name** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false. | [optional] 
**email_address** | **String** | From fields (first name, last name, email address) are required if useSenderFlag is false. | [optional] 
**subject** | **String** |  | [optional] 
**body** | **String** |  | [optional] 
**copy_sender_flag** | **BOOLEAN** |  | [optional] 
**tasks_flag** | **BOOLEAN** |  | [optional] 
**resource_records_flag** | **BOOLEAN** |  | [optional] 
**external_contact_notifications** | **BOOLEAN** |  | [optional] 
**internal_contact_notifications** | **BOOLEAN** |  | [optional] 
**service_status** | [**ServiceStatusReference**](ServiceStatusReference.md) | serviceStatus is required if the email template type is \&quot;Specific\&quot;. | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



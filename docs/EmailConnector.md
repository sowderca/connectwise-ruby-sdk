# ConnectWise::EmailConnector

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**imap_setup** | [**ImapSetupReference**](ImapSetupReference.md) |  | 
**service_board** | [**BoardReference**](BoardReference.md) |  | 
**default_company** | [**CompanyReference**](CompanyReference.md) |  | 
**default_member** | [**MemberReference**](MemberReference.md) |  | 
**location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**email_notify_from** | **String** |  | [optional] 
**bcc_email_to** | **String** |  | [optional] 
**email_errors_to** | **String** |  | 
**set_email_to_default_contact_flag** | **BOOLEAN** |  | [optional] 
**no_response_flag** | **BOOLEAN** |  | [optional] 
**never_respond_flag** | **BOOLEAN** |  | [optional] 
**discard_duplicates_flag** | **BOOLEAN** |  | [optional] 
**post_replies_to_ticket_flag** | **BOOLEAN** |  | [optional] 
**create_contact_flag** | **BOOLEAN** |  | [optional] 
**response_email_for_new** | **String** |  | [optional] 
**response_email_for_existing** | **String** |  | [optional] 
**source_override** | [**ServiceSourceReference**](ServiceSourceReference.md) |  | [optional] 
**priority_override** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**type_override** | [**ServiceTypeReference**](ServiceTypeReference.md) |  | [optional] 
**sub_type_override** | [**ServiceSubTypeReference**](ServiceSubTypeReference.md) |  | [optional] 
**item_override** | [**ServiceItemReference**](ServiceItemReference.md) |  | [optional] 
**status_override** | [**ServiceStatusReference**](ServiceStatusReference.md) |  | [optional] 
**add_cc_flag** | **BOOLEAN** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



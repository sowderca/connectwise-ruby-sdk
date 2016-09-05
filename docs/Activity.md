# Connectwise::Activity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**type** | [**ActivityTypeReference**](ActivityTypeReference.md) |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**phone_number** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**status** | [**ActivityStatusReference**](ActivityStatusReference.md) |  | 
**opportunity** | [**OpportunityReference**](OpportunityReference.md) |  | [optional] 
**ticket** | [**TicketReference**](TicketReference.md) |  | [optional] 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**campaign** | [**CampaignReference**](CampaignReference.md) |  | [optional] 
**notes** | **String** |  | [optional] 
**date_start** | **DateTime** |  | [optional] 
**date_end** | **DateTime** |  | [optional] 
**assigned_by** | [**MemberReference**](MemberReference.md) |  | [optional] 
**assign_to** | [**MemberReference**](MemberReference.md) |  | 
**schedule_status** | [**ScheduleStatusReference**](ScheduleStatusReference.md) |  | [optional] 
**reminder** | [**ReminderReference**](ReminderReference.md) |  | [optional] 
**where** | [**ServiceLocationReference**](ServiceLocationReference.md) |  | [optional] 
**notify_flag** | **BOOLEAN** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**custom_fields** | [**Array&lt;CustomFieldValue&gt;**](CustomFieldValue.md) |  | [optional] 



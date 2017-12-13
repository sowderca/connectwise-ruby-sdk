# ConnectWise::RmaStatusNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**notify_who** | [**NotificationRecipientReference**](NotificationRecipientReference.md) |  | 
**status** | [**RmaStatusReference**](RmaStatusReference.md) |  | [optional] 
**member** | [**MemberReference**](MemberReference.md) | RMA Status Notification member must be entered if the notify type is \&quot;Specific Member\&quot; | [optional] 
**email** | **String** | RMA Status Notification sendEmail must be entered if the notify type is \&quot;Email Address\&quot; | [optional] 
**workflow_step** | **Integer** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



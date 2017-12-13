# ConnectWise::OrderStatusNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**notify_who** | [**NotificationRecipientReference**](NotificationRecipientReference.md) |  | 
**status** | [**OrderStatusReference**](OrderStatusReference.md) |  | [optional] 
**member** | [**MemberReference**](MemberReference.md) | Order Status Notification member must be entered if the notify type is \&quot;Specific Member\&quot; | [optional] 
**email** | **String** | Order Status Notification sendEmail must be entered if the notify type is \&quot;Email Address\&quot; | [optional] 
**workflow_step** | **Integer** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



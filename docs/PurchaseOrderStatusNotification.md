# ConnectWise::PurchaseOrderStatusNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**notify_who** | [**NotificationRecipientReference**](NotificationRecipientReference.md) |  | 
**status** | [**PurchaseOrderStatusReference**](PurchaseOrderStatusReference.md) |  | [optional] 
**member** | [**MemberReference**](MemberReference.md) | Purchase Order Status Notification member must be entered if the notify type is \&quot;Specific Member\&quot; | [optional] 
**email** | **String** | Purchase Order Status Notification email must be entered if the notify type is \&quot;Email Address\&quot; | [optional] 
**workflow_step** | **Integer** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



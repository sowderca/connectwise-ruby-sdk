# ConnectWise::ManagedDevicesIntegrationNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**managed_devices_integration** | [**ManagedDevicesIntegrationReference**](ManagedDevicesIntegrationReference.md) |  | [optional] 
**notify_who** | [**NotificationRecipientReference**](NotificationRecipientReference.md) |  | 
**member** | [**MemberReference**](MemberReference.md) | Required if notifyWho/identifier &#x3D;&#x3D; &#39;M&#39; (Specific Member) | [optional] 
**log_type** | **String** |  | 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



# ConnectWise::WorkflowAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**notify_type** | [**NotifyTypeReference**](NotifyTypeReference.md) |  | 
**notify_who** | [**NotificationRecipientReference**](NotificationRecipientReference.md) | Required when notifyType is set to: \&quot;Create Activity\&quot;, \&quot;Send Email\&quot;, \&quot;Add Follower\&quot;, \&quot;Assign Resource\&quot;, \&quot;Close Survey\&quot; | [optional] 
**specific_member_to** | [**MemberReference**](MemberReference.md) | Required when notifyWho is set to: \&quot;Specific Member\&quot;, \&quot; | [optional] 
**email_recipient** | **String** | Required when notifyWho is set to: \&quot;Email Address\&quot; | [optional] 
**notify_from** | [**NotificationRecipientReference**](NotificationRecipientReference.md) | Required when notifyType is set to: \&quot;Create Activity\&quot;, \&quot;Send Email\&quot;, \&quot;Assign Resource\&quot; | [optional] 
**specific_member_from** | [**MemberReference**](MemberReference.md) | Required when notifyFrom is set to: \&quot;Specific Member\&quot; | [optional] 
**email_from** | **String** | Required when notifyFrom is set to: \&quot;Email Address\&quot; | [optional] 
**cc_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**bcc_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**subject** | **String** | Required when notifyType is set to: \&quot;Create Activity\&quot;, \&quot;Send Email\&quot;, \&quot;Assign Resource\&quot; | [optional] 
**notes** | **String** |  | [optional] 
**activity_status** | [**ActivityStatusReference**](ActivityStatusReference.md) | Required when notifyType is set to: \&quot;Create Activity\&quot; | [optional] 
**activity_type** | [**ActivityTypeReference**](ActivityTypeReference.md) | Required when notifyType is set to: \&quot;Create Activity\&quot; | [optional] 
**attached_track** | [**TrackReference**](TrackReference.md) | Required when notifyType is set to: \&quot;Attach Track\&quot; | [optional] 
**days_to_execute** | **Integer** |  | [optional] 
**board** | [**BoardReference**](BoardReference.md) | Required when notifyType is set to: \&quot;Change Board\&quot; | [optional] 
**board_status** | [**ServiceStatusReference**](ServiceStatusReference.md) | Required when notifyType is set to: \&quot;Change Board\&quot;, \&quot;Change Ticket Status\&quot; | [optional] 
**service_type** | [**ServiceTypeReference**](ServiceTypeReference.md) |  | [optional] 
**group** | [**GroupReference**](GroupReference.md) | Required when notifyType is set to: \&quot;Add to Group\&quot; | [optional] 
**service_template** | [**ServiceTemplateReference**](ServiceTemplateReference.md) | Required when notifyType is set to: \&quot;Create a Service Ticket\&quot; | [optional] 
**invoice_min_days** | **Integer** |  | [optional] 
**automate_script** | [**AutomateScriptReference**](AutomateScriptReference.md) | Required when notifyType is set to: \&quot;Run Connectwise Automate Script\&quot; | [optional] 
**script_success_status** | [**ServiceStatusReference**](ServiceStatusReference.md) | Required when notifyType is set to: \&quot;Run Connectwise Automate Script\&quot; | [optional] 
**script_fail_status** | [**ServiceStatusReference**](ServiceStatusReference.md) | Required when notifyType is set to: \&quot;Run Connectwise Automate Script\&quot; | [optional] 
**detail_notes_flag** | **BOOLEAN** |  | [optional] 
**internal_notes_flag** | **BOOLEAN** |  | [optional] 
**audit_notes_flag** | **BOOLEAN** |  | [optional] 
**service_priority** | [**PriorityReference**](PriorityReference.md) | Required when notifyType is set to: \&quot;Change Ticket Priority\&quot; | [optional] 
**update_owner_flag** | **BOOLEAN** |  | [optional] 
**sales_order_status** | [**OrderStatusReference**](OrderStatusReference.md) | Required when notifyType is set to: \&quot;Change Sales Order Status\&quot; | [optional] 
**project_status** | [**ProjectStatusReference**](ProjectStatusReference.md) | Required when notifyType is set to: \&quot;Change Project Status\&quot; | [optional] 
**company_status** | [**CompanyStatusReference**](CompanyStatusReference.md) | Required when notifyType is set to: \&quot;Change Company Status\&quot; | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



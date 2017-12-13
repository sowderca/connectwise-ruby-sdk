# ConnectWise::TimeEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) | If chargeToId is not specified, we asume you enter time against the company specified | [optional] 
**charge_to_id** | **Integer** | If chargeToId is not specified, we asume you enter time against the company specified | [optional] 
**charge_to_type** | **String** | If chargeToId is not specified, we asume you enter time against the company specified | [optional] 
**member** | [**MemberReference**](MemberReference.md) |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**work_type** | [**WorkTypeReference**](WorkTypeReference.md) |  | [optional] 
**work_role** | [**WorkRoleReference**](WorkRoleReference.md) |  | [optional] 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**time_start** | **DateTime** |  | 
**time_end** | **DateTime** |  | [optional] 
**hours_deduct** | **Float** |  | [optional] 
**actual_hours** | **Float** |  | [optional] 
**billable_option** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**internal_notes** | **String** |  | [optional] 
**add_to_detail_description_flag** | **BOOLEAN** |  | [optional] 
**add_to_internal_analysis_flag** | **BOOLEAN** |  | [optional] 
**add_to_resolution_flag** | **BOOLEAN** |  | [optional] 
**email_resource_flag** | **BOOLEAN** | This is an action flag. To update this value use the /service/tickets endpoint automaticEmailResourceFlag field | [optional] 
**email_contact_flag** | **BOOLEAN** | This is an action flag. To update this value use the /service/tickets endpoint automaticEmailContactFlag field | [optional] 
**email_cc_flag** | **BOOLEAN** | This is an action flag. To update this value use the /service/tickets endpoint automaticEmailCcFlag field | [optional] 
**email_cc** | **String** | To update this value use the /service/tickets endpoint automaticEmailCc field | [optional] 
**hours_billed** | **Float** |  | [optional] 
**entered_by** | **String** |  | [optional] 
**date_entered** | **DateTime** |  | [optional] 
**invoice** | [**InvoiceReference**](InvoiceReference.md) |  | [optional] 
**mobile_guid** | [**Guid**](Guid.md) |  | [optional] 
**hourly_rate** | **Float** | This field may only be Updated, it is defaulted on Create | [optional] 
**time_sheet** | [**TimeSheetReference**](TimeSheetReference.md) |  | [optional] 
**status** | **String** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**custom_fields** | [**Array&lt;CustomFieldValue&gt;**](CustomFieldValue.md) |  | [optional] 



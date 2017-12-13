# ConnectWise::ScheduleEntry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**object_id** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 
**member** | [**MemberReference**](MemberReference.md) | Activity schedule requires a member | [optional] 
**where** | [**ServiceLocationReference**](ServiceLocationReference.md) |  | [optional] 
**date_start** | **DateTime** |  | [optional] 
**date_end** | **DateTime** |  | [optional] 
**reminder** | [**ReminderReference**](ReminderReference.md) |  | [optional] 
**status** | [**ScheduleStatusReference**](ScheduleStatusReference.md) |  | [optional] 
**type** | [**ScheduleTypeReference**](ScheduleTypeReference.md) |  | 
**span** | [**ScheduleSpanReference**](ScheduleSpanReference.md) |  | [optional] 
**done_flag** | **BOOLEAN** |  | [optional] 
**acknowledged_flag** | **BOOLEAN** |  | [optional] 
**owner_flag** | **BOOLEAN** |  | [optional] 
**allow_schedule_conflicts_flag** | **BOOLEAN** |  | [optional] 
**add_member_to_project_flag** | **BOOLEAN** |  | [optional] 
**project_role_id** | **Integer** |  | [optional] 
**mobile_guid** | [**Guid**](Guid.md) |  | [optional] 
**close_date** | **DateTime** |  | [optional] 
**hours** | **Float** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



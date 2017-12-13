# ConnectWise::SLA

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**based_on** | **String** |  | 
**custom_calendar** | [**CalendarReference**](CalendarReference.md) | customCalendar is a required reference if basedOn SLA Hours Type is Custom | [optional] 
**default_flag** | **BOOLEAN** |  | [optional] 
**application_order** | **Integer** |  | [optional] 
**hi_impact_hi_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**hi_impact_med_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**hi_impact_low_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**med_impact_hi_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**med_impact_med_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**med_impact_low_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**low_impact_hi_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**low_impact_med_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**low_impact_low_urgency** | [**PriorityReference**](PriorityReference.md) |  | [optional] 
**respond_hours** | **Float** |  | [optional] 
**respond_percent** | **Integer** |  | [optional] 
**plan_within** | **Float** |  | [optional] 
**plan_within_percent** | **Integer** |  | [optional] 
**resolution_hours** | **Float** |  | [optional] 
**resolution_percent** | **Integer** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



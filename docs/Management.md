# ConnectWise::Management

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**run_time** | **DateTime** |  | [optional] 
**added_configuration_status** | [**ConfigurationStatusReference**](ConfigurationStatusReference.md) |  | 
**deleted_configuration_status** | [**ConfigurationStatusReference**](ConfigurationStatusReference.md) |  | 
**integrator_login** | [**IntegratorLoginReference**](IntegratorLoginReference.md) |  | 
**schedule_executive_summary_report_flag** | **BOOLEAN** |  | 
**executive_summary_report_schedule_day** | **Integer** | This is only required when scheduleExecutiveSummaryReportFlag &#x3D; true | [optional] 
**executive_summary_report_schedule_hour** | **Integer** | This is only required when scheduleExecutiveSummaryReportFlag &#x3D; true. Input should be in 24 hour format, ie 2pm is 14 | [optional] 
**executive_summary_report_schedule_minute** | **Integer** | This is only required when scheduleExecutiveSummaryReportFlag &#x3D; true | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



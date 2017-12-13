# ConnectWise::Workflow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**table_type** | [**WorkflowTableTypeReference**](WorkflowTableTypeReference.md) |  | 
**location** | [**SystemLocationReference**](SystemLocationReference.md) | If a department is set, a location that contains it must be set | [optional] 
**department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) | Must belong to the specified location | [optional] 
**activate_flag** | **BOOLEAN** | Batches can not be turned on until after the workflow is created and it has atleast one event associated with it | [optional] 
**batch_interval** | **Integer** |  | [optional] 
**batch_frequency_unit** | **String** | If not specified, defaults to Minutes. Months is not supported as month length varies | [optional] 
**batch_last_ran** | **DateTime** |  | [optional] 
**batch_schedule** | **String** | If activateFlag is true, batchSchedule is required | [optional] 
**board** | [**BoardReference**](BoardReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



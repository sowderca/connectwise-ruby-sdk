# ConnectWise::WorkflowEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | [optional] 
**event_condition** | **String** |  | 
**frequency_unit** | **String** | Required when exectionTimes is set to MultipleTimes or Continuously | [optional] 
**frequency_of_execution** | **Integer** | Required when exectionTimes is set to MultipleTimes or Continuously | [optional] 
**max_number_of_execution** | **Integer** | Required when exectionTimes is set to MultipleTimes | [optional] 
**execution_time** | **String** | Defaults to Once when not specified | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



# ConnectWise::ChargeCode

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**company** | [**CompanyReference**](CompanyReference.md) |  | 
**location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**bill_time** | **String** |  | [optional] 
**expense_entry_flag** | **BOOLEAN** |  | [optional] 
**allow_all_expense_type_flag** | **BOOLEAN** |  | [optional] 
**time_entry_flag** | **BOOLEAN** |  | [optional] 
**work_type** | [**WorkTypeReference**](WorkTypeReference.md) | on UPDATE, if timeEntryFlag is set to true, workType will be required. | [optional] 
**work_role** | [**WorkRoleReference**](WorkRoleReference.md) |  | [optional] 
**integration_xref** | **String** |  | [optional] 
**expense_type_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



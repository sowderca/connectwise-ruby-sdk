# ConnectWise::CompanyManagementSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**management_solution** | [**ManagementSolutionReference**](ManagementSolutionReference.md) |  | [optional] 
**group_identifier** | **String** |  | 
**device_type** | **String** | deviceType is required if the managementSolution is Legacy | [optional] 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**snmp_machines** | **Integer** |  | [optional] 
**total_workstations** | **Integer** |  | [optional] 
**total_servers** | **Integer** |  | [optional] 
**total_windows_servers** | **Integer** |  | [optional] 
**total_windows_workstations** | **Integer** |  | [optional] 
**total_managed_machines** | **Integer** |  | [optional] 
**servers_offline** | **Integer** |  | [optional] 
**servers_disk_space_low** | **Integer** |  | [optional] 
**failed_backup_jobs** | **Integer** |  | [optional] 
**total_notifications** | **Integer** |  | [optional] 
**successful_backup_jobs** | **Integer** |  | [optional] 
**server_availability** | **Integer** |  | [optional] 
**viruses_removed** | **Integer** |  | [optional] 
**spyware_items_removed** | **Integer** |  | [optional] 
**windows_patches_installed** | **Integer** |  | [optional] 
**disk_cleanups** | **Integer** |  | [optional] 
**disk_defragmentations** | **Integer** |  | [optional] 
**fully_patched_machines** | **Integer** |  | [optional] 
**missing_one_two_patches_machines** | **Integer** |  | [optional] 
**missing_three_five_patches_machines** | **Integer** |  | [optional] 
**missing_more_five_patches_machines** | **Integer** |  | [optional] 
**missing_unscanned_patches_machines** | **Integer** |  | [optional] 
**alerts_generated** | **String** |  | [optional] 
**internet_connectivity** | **Float** |  | [optional] 
**disk_space_cleaned_mb** | **Integer** |  | [optional] 
**missing_security_patches** | **String** |  | [optional] 
**cpu_utilization** | **Float** |  | [optional] 
**memory_utilization** | **Float** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



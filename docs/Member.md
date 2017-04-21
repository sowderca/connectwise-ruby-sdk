# ConnectWise::Member

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin_flag** | **BOOLEAN** |  | [optional] 
**allow_expenses_entered_against_companies_flag** | **BOOLEAN** |  | [optional] 
**allow_in_cell_entry_on_time_sheet** | **BOOLEAN** |  | [optional] 
**billable_forecast** | **Float** |  | [optional] 
**calendar** | [**CalendarReference**](CalendarReference.md) |  | [optional] 
**calendar_sync_integration_flag** | **BOOLEAN** |  | [optional] 
**country** | [**CountryReference**](CountryReference.md) |  | [optional] 
**daily_capacity** | **Float** |  | [optional] 
**days_tolerance** | **Integer** |  | [optional] 
**default_department_id** | **Integer** |  | 
**default_email** | **String** |  | 
**default_location_id** | **Integer** |  | 
**default_phone** | **String** |  | 
**disable_online_flag** | **BOOLEAN** |  | [optional] 
**enable_ldap_authentication_flag** | **BOOLEAN** |  | [optional] 
**enable_mobile_flag** | **BOOLEAN** |  | [optional] 
**enable_mobile_gps_flag** | **BOOLEAN** |  | [optional] 
**enter_time_against_company_flag** | **BOOLEAN** |  | [optional] 
**expense_approver** | [**MemberReference**](MemberReference.md) |  | 
**first_name** | **String** |  | 
**hide_member_in_dispatch_portal_flag** | **BOOLEAN** |  | [optional] 
**hire_date** | **DateTime** |  | 
**home_email** | **String** |  | [optional] 
**home_extension** | **String** |  | [optional] 
**home_phone** | **String** |  | [optional] 
**hourly_cost** | **Float** |  | [optional] 
**hourly_rate** | **Float** |  | [optional] 
**id** | **Integer** |  | [optional] 
**identifier** | **String** |  | 
**inactive_date** | **DateTime** |  | [optional] 
**inactive_flag** | **BOOLEAN** |  | [optional] 
**include_in_utilization_reporting_flag** | **BOOLEAN** |  | [optional] 
**last_login** | **String** |  | [optional] 
**last_name** | **String** |  | 
**license_class** | **String** | F &#x3D; Regular Member, A &#x3D; API Member, C &#x3D; StreamlineIT Member, X &#x3D; Subcontractor Member | 
**mapi_name** | **String** |  | [optional] 
**middle_initial** | **String** |  | [optional] 
**minimum_hours** | **Float** |  | [optional] 
**mobile_email** | **String** |  | [optional] 
**mobile_extension** | **String** |  | [optional] 
**mobile_phone** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**office_email** | **String** |  | [optional] 
**office_extension** | **String** |  | [optional] 
**office_phone** | **String** |  | [optional] 
**project_default_board** | [**ProjectBoardReference**](ProjectBoardReference.md) |  | [optional] 
**project_default_department_id** | **Integer** |  | [optional] 
**project_default_location_id** | **Integer** |  | [optional] 
**reports_to** | [**MemberReference**](MemberReference.md) |  | [optional] 
**require_expense_entry_flag** | **BOOLEAN** |  | [optional] 
**require_start_and_end_time_on_time_entry_flag** | **BOOLEAN** |  | [optional] 
**require_time_sheet_entry_flag** | **BOOLEAN** |  | [optional] 
**restrict_default_sales_territory_flag** | **BOOLEAN** |  | [optional] 
**restrict_default_warehouse_bin_flag** | **BOOLEAN** |  | [optional] 
**restrict_default_warehouse_flag** | **BOOLEAN** |  | [optional] 
**restrict_department_flag** | **BOOLEAN** |  | [optional] 
**restrict_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_project_default_department_flag** | **BOOLEAN** |  | [optional] 
**restrict_project_default_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_schedule_flag** | **BOOLEAN** |  | [optional] 
**restrict_service_default_department_flag** | **BOOLEAN** |  | [optional] 
**restrict_service_default_location_flag** | **BOOLEAN** |  | [optional] 
**sales_default_location_id** | **Integer** |  | 
**schedule_capacity** | **Float** |  | [optional] 
**schedule_default_department_id** | **Integer** |  | [optional] 
**schedule_default_location_id** | **Integer** |  | [optional] 
**security_level** | **String** |  | [optional] 
**security_location_id** | **Integer** |  | [optional] 
**security_role** | [**SecurityRoleReference**](SecurityRoleReference.md) |  | [optional] 
**service_default_board** | [**BoardReference**](BoardReference.md) |  | [optional] 
**service_default_department_id** | **Integer** |  | [optional] 
**service_default_location_id** | **Integer** |  | [optional] 
**service_location** | [**ServiceLocationReference**](ServiceLocationReference.md) |  | [optional] 
**service_teams** | **Array&lt;Integer&gt;** |  | [optional] 
**time_approver** | [**MemberReference**](MemberReference.md) |  | 
**time_reminder_email_flag** | **BOOLEAN** |  | [optional] 
**time_sheet_start_date** | **DateTime** |  | [optional] 
**time_zone** | [**TimeZoneReference**](TimeZoneReference.md) |  | 
**title** | **String** |  | [optional] 
**type** | [**MemberTypeReference**](MemberTypeReference.md) |  | [optional] 
**vendor_number** | **String** |  | [optional] 
**warehouse** | [**WarehouseReference**](WarehouseReference.md) |  | [optional] 
**warehouse_bin** | [**WarehouseBinReference**](WarehouseBinReference.md) |  | [optional] 
**work_role** | [**WorkRoleReference**](WorkRoleReference.md) |  | 
**work_type** | [**WorkTypeReference**](WorkTypeReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**system_flag** | **BOOLEAN** |  | [optional] 



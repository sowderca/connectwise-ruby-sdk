# ConnectWise::Member

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**identifier** | **String** |  | 
**password** | **String** | ConditionallyRequired. API Member will get random password generated | [optional] 
**first_name** | **String** |  | 
**middle_initial** | **String** |  | [optional] 
**last_name** | **String** |  | 
**title** | **String** |  | [optional] 
**report_card** | [**ReportCardReference**](ReportCardReference.md) |  | [optional] 
**license_class** | **String** | F &#x3D; Full Member, A &#x3D; API Member, C &#x3D; StreamlineIT Member, X &#x3D; Subcontractor Member | 
**disable_online_flag** | **BOOLEAN** |  | [optional] 
**enable_mobile_flag** | **BOOLEAN** |  | [optional] 
**type** | [**MemberTypeReference**](MemberTypeReference.md) |  | [optional] 
**employee_identifer** | **String** |  | [optional] 
**vendor_number** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**time_zone** | [**TimeZoneSetupReference**](TimeZoneSetupReference.md) |  | 
**country** | [**CountryReference**](CountryReference.md) |  | [optional] 
**service_board_team_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**enable_mobile_gps_flag** | **BOOLEAN** |  | [optional] 
**inactive_date** | **DateTime** |  | [optional] 
**inactive_flag** | **BOOLEAN** |  | [optional] 
**last_login** | **String** |  | [optional] 
**photo** | [**DocumentReference**](DocumentReference.md) |  | [optional] 
**office_email** | **String** |  | [optional] 
**office_phone** | **String** |  | [optional] 
**office_extension** | **String** |  | [optional] 
**mobile_email** | **String** |  | [optional] 
**mobile_phone** | **String** |  | [optional] 
**mobile_extension** | **String** |  | [optional] 
**home_email** | **String** |  | [optional] 
**home_phone** | **String** |  | [optional] 
**home_extension** | **String** |  | [optional] 
**default_email** | **String** |  | 
**default_phone** | **String** |  | 
**security_role** | [**SecurityRoleReference**](SecurityRoleReference.md) |  | 
**admin_flag** | **BOOLEAN** |  | [optional] 
**structure_level** | [**StructureReference**](StructureReference.md) |  | 
**security_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | 
**default_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | 
**default_department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | 
**reports_to** | [**MemberReference**](MemberReference.md) |  | [optional] 
**restrict_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_department_flag** | **BOOLEAN** |  | [optional] 
**work_role** | [**WorkRoleReference**](WorkRoleReference.md) |  | 
**work_type** | [**WorkTypeReference**](WorkTypeReference.md) |  | [optional] 
**time_approver** | [**MemberReference**](MemberReference.md) |  | 
**expense_approver** | [**MemberReference**](MemberReference.md) |  | 
**billable_forecast** | **Float** |  | [optional] 
**daily_capacity** | **Float** |  | [optional] 
**hourly_cost** | **Float** |  | [optional] 
**hourly_rate** | **Float** |  | [optional] 
**include_in_utilization_reporting_flag** | **BOOLEAN** |  | [optional] 
**require_expense_entry_flag** | **BOOLEAN** |  | [optional] 
**require_time_sheet_entry_flag** | **BOOLEAN** |  | [optional] 
**require_start_and_end_time_on_time_entry_flag** | **BOOLEAN** |  | [optional] 
**allow_in_cell_entry_on_time_sheet** | **BOOLEAN** |  | [optional] 
**enter_time_against_company_flag** | **BOOLEAN** |  | [optional] 
**allow_expenses_entered_against_companies_flag** | **BOOLEAN** |  | [optional] 
**time_reminder_email_flag** | **BOOLEAN** |  | [optional] 
**days_tolerance** | **Integer** |  | [optional] 
**minimum_hours** | **Float** |  | [optional] 
**time_sheet_start_date** | **DateTime** |  | [optional] 
**hire_date** | **DateTime** |  | 
**service_default_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**service_default_department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**service_default_board** | [**BoardReference**](BoardReference.md) |  | [optional] 
**restrict_service_default_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_service_default_department_flag** | **BOOLEAN** |  | [optional] 
**excluded_service_board_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**project_default_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**project_default_department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**project_default_board** | [**ProjectBoardReference**](ProjectBoardReference.md) |  | [optional] 
**restrict_project_default_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_project_default_department_flag** | **BOOLEAN** |  | [optional] 
**excluded_project_board_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**schedule_default_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**schedule_default_department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**schedule_capacity** | **Float** |  | [optional] 
**service_location** | [**ServiceLocationReference**](ServiceLocationReference.md) |  | [optional] 
**restrict_schedule_flag** | **BOOLEAN** |  | [optional] 
**hide_member_in_dispatch_portal_flag** | **BOOLEAN** |  | [optional] 
**calendar** | [**CalendarReference**](CalendarReference.md) |  | [optional] 
**sales_default_location** | [**SystemLocationReference**](SystemLocationReference.md) |  | 
**restrict_default_sales_territory_flag** | **BOOLEAN** |  | [optional] 
**warehouse** | [**WarehouseReference**](WarehouseReference.md) |  | [optional] 
**warehouse_bin** | [**WarehouseBinReference**](WarehouseBinReference.md) |  | [optional] 
**restrict_default_warehouse_flag** | **BOOLEAN** |  | [optional] 
**restrict_default_warehouse_bin_flag** | **BOOLEAN** |  | [optional] 
**mapi_name** | **String** |  | [optional] 
**calendar_sync_integration_flag** | **BOOLEAN** |  | [optional] 
**enable_ldap_authentication_flag** | **BOOLEAN** |  | [optional] 
**ldap_configuration** | [**LdapConfigurationReference**](LdapConfigurationReference.md) |  | [optional] 
**ldap_user_name** | **String** |  | [optional] 
**company_activity_tab_format** | **String** |  | 
**invoice_time_tab_format** | **String** |  | 
**invoice_screen_default_tab_format** | **String** |  | 
**invoicing_display_options** | **String** |  | 
**agreement_invoicing_display_options** | **String** |  | 
**corelytics_username** | **String** |  | [optional] 
**corelytics_password** | **String** |  | [optional] 
**remote_package** | **String** |  | [optional] 
**remote_package_platform** | **String** |  | [optional] 
**remote_package_user_name** | **String** |  | [optional] 
**remote_package_password** | **String** |  | [optional] 
**remote_package_account** | **String** |  | [optional] 
**authentication_service_type** | **String** |  | [optional] 
**timebased_one_time_password_activated** | **BOOLEAN** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



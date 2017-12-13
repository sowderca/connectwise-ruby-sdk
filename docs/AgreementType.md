# ConnectWise::AgreementType

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**name** | **String** |  | 
**prefix_suffix_option** | **String** |  | [optional] 
**default_flag** | **BOOLEAN** |  | [optional] 
**inactive_flag** | **BOOLEAN** |  | [optional] 
**pre_payment_flag** | **BOOLEAN** |  | [optional] 
**invoice_pre_suffix** | **String** |  | [optional] 
**location** | [**SystemLocationReference**](SystemLocationReference.md) |  | [optional] 
**department** | [**SystemDepartmentReference**](SystemDepartmentReference.md) |  | [optional] 
**restrict_location_flag** | **BOOLEAN** |  | [optional] 
**restrict_department_flag** | **BOOLEAN** |  | [optional] 
**sla** | [**SLAReference**](SLAReference.md) |  | [optional] 
**application_units** | **String** |  | [optional] 
**application_limit** | **Float** |  | [optional] 
**application_cycle** | **String** |  | [optional] 
**application_unlimited_flag** | **BOOLEAN** |  | [optional] 
**one_time_flag** | **BOOLEAN** |  | [optional] 
**cover_agreement_time_flag** | **BOOLEAN** |  | [optional] 
**cover_agreement_product_flag** | **BOOLEAN** |  | [optional] 
**cover_agreement_expense_flag** | **BOOLEAN** |  | [optional] 
**cover_sales_tax_flag** | **BOOLEAN** |  | [optional] 
**carry_over_unused_flag** | **BOOLEAN** |  | [optional] 
**allow_overruns_flag** | **BOOLEAN** |  | [optional] 
**expired_days** | **Integer** |  | [optional] 
**limit** | **Integer** |  | [optional] 
**expire_when_zero** | **BOOLEAN** |  | [optional] 
**charge_to_firm_flag** | **BOOLEAN** |  | [optional] 
**employee_comp_rate** | **String** |  | 
**employee_comp_not_exceed** | **String** |  | 
**comp_hourly_rate** | **Float** |  | [optional] 
**comp_limit_amount** | **Float** |  | [optional] 
**billing_cycle** | [**BillingCycleReference**](BillingCycleReference.md) |  | [optional] 
**bill_one_time_flag** | **BOOLEAN** |  | [optional] 
**billing_terms** | [**BillingTermsReference**](BillingTermsReference.md) |  | [optional] 
**invoicing_cycle** | **String** |  | 
**bill_amount** | **Float** |  | [optional] 
**taxable_flag** | **BOOLEAN** |  | [optional] 
**restrict_down_payment_flag** | **BOOLEAN** |  | [optional] 
**invoice_description** | **String** |  | [optional] 
**top_comment_flag** | **BOOLEAN** |  | [optional] 
**bottom_comment_flag** | **BOOLEAN** |  | [optional] 
**work_role** | [**WorkRoleReference**](WorkRoleReference.md) |  | [optional] 
**work_type** | [**WorkTypeReference**](WorkTypeReference.md) |  | [optional] 
**project_type** | [**ProjectTypeReference**](ProjectTypeReference.md) |  | [optional] 
**invoice_template** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**bill_time** | **String** |  | 
**bill_expenses** | **String** |  | 
**bill_products** | **String** |  | 
**billable_time_invoice_flag** | **BOOLEAN** |  | [optional] 
**billable_expense_invoice_flag** | **BOOLEAN** |  | [optional] 
**billable_product_invoice_flag** | **BOOLEAN** |  | [optional] 
**copy_work_roles_flag** | **BOOLEAN** |  | [optional] 
**copy_work_types_flag** | **BOOLEAN** |  | [optional] 
**exclusion_work_role_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**add_all_work_role_exclusions** | **BOOLEAN** |  | [optional] 
**remove_all_work_role_exclusions** | **BOOLEAN** |  | [optional] 
**exclusion_work_type_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**add_all_work_type_exclusions** | **BOOLEAN** |  | [optional] 
**remove_all_work_type_exclusions** | **BOOLEAN** |  | [optional] 
**integration_x_ref** | **String** |  | [optional] 
**prorate_flag** | **BOOLEAN** |  | [optional] 
**email_template** | [**EmailTemplateReference**](EmailTemplateReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



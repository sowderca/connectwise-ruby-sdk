# ConnectWise::ExportAccountingBatchRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batch_identifier** | **String** |  | 
**gl_interface_identifier** | **String** |  | [optional] 
**thru_date** | **DateTime** |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**summarize_invoices** | **String** |  | [optional] 
**export_invoices_flag** | **BOOLEAN** | Batch export must include invoices, expenses, or products (procurement) | [optional] 
**included_invoice_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**excluded_invoice_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**export_expenses_flag** | **BOOLEAN** | Batch export must include invoices, expenses, or products (procurement) | [optional] 
**included_expense_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**excluded_expense_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**export_products_flag** | **BOOLEAN** | Batch export must include invoices, expenses, or products (procurement) | [optional] 
**included_product_ids** | **Array&lt;String&gt;** |  | [optional] 
**excluded_product_ids** | **Array&lt;String&gt;** |  | [optional] 



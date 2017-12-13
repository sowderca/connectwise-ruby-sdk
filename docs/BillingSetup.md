# ConnectWise::BillingSetup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**remit_name** | **String** |  | 
**location** | [**SystemLocationReference**](SystemLocationReference.md) |  | 
**address_one** | **String** |  | [optional] 
**address_two** | **String** |  | [optional] 
**city** | **String** |  | [optional] 
**state** | [**StateReference**](StateReference.md) |  | [optional] 
**zip** | **String** |  | [optional] 
**country** | [**CountryReference**](CountryReference.md) |  | [optional] 
**phone** | **String** |  | [optional] 
**invoice_title** | **String** |  | 
**payable_name** | **String** |  | 
**topcomment** | **String** |  | [optional] 
**invoice_footer** | **String** |  | [optional] 
**quote_footer** | **String** |  | [optional] 
**overall_invoice_default** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | 
**standard_invoice_actual** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**standard_invoice_fixed** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**progress_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**agreement_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**credit_memo_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**down_payment_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**misc_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**sales_order_invoice** | [**InvoiceTemplateReference**](InvoiceTemplateReference.md) |  | [optional] 
**exclude_do_not_bill_time_flag** | **BOOLEAN** |  | [optional] 
**exclude_do_not_bill_expense_flag** | **BOOLEAN** |  | [optional] 
**exclude_do_not_bill_product_flag** | **BOOLEAN** |  | [optional] 
**prefix_suffix_flag** | **String** |  | [optional] 
**prefix_suffix_text** | **String** |  | [optional] 
**charge_adj_to_firm_flag** | **BOOLEAN** |  | [optional] 
**no_watermark_flag** | **BOOLEAN** |  | [optional] 
**display_tax_flag** | **BOOLEAN** |  | [optional] 
**allow_restricted_dept_on_routing_flag** | **BOOLEAN** |  | [optional] 
**bill_ticket_separately_flag** | **BOOLEAN** |  | [optional] 
**bill_ticket_complete_flag** | **BOOLEAN** |  | [optional] 
**bill_ticket_unapproved_flag** | **BOOLEAN** |  | [optional] 
**bill_project_complete_flag** | **BOOLEAN** |  | [optional] 
**bill_project_unapproved_flag** | **BOOLEAN** |  | [optional] 
**progress_time_flag** | **BOOLEAN** |  | [optional] 
**restrict_project_downpayment_flag** | **BOOLEAN** |  | [optional] 
**bill_sales_order_complete_flag** | **BOOLEAN** |  | [optional] 
**bill_product_after_ship_flag** | **BOOLEAN** |  | [optional] 
**restrict_downpayment_flag** | **BOOLEAN** |  | [optional] 
**copy_non_service_products_flag** | **BOOLEAN** |  | [optional] 
**copy_service_products_flag** | **BOOLEAN** |  | [optional] 
**copy_agreement_products_flag** | **BOOLEAN** |  | [optional] 
**print_logo_flag** | **BOOLEAN** |  | [optional] 
**read_receipt_flag** | **BOOLEAN** |  | [optional] 
**delivery_receipt_flag** | **BOOLEAN** |  | [optional] 
**disable_routing_email_flag** | **BOOLEAN** |  | [optional] 
**email_template** | [**OrderStatusEmailTemplateReference**](OrderStatusEmailTemplateReference.md) |  | 
**localized_country** | [**CountryReference**](CountryReference.md) |  | [optional] 
**business_number** | **String** |  | [optional] 
**currency** | [**CurrencyReference**](CurrencyReference.md) |  | [optional] 
**custom_label** | **String** |  | [optional] 
**custom_text** | **String** |  | [optional] 
**company_code** | **String** |  | [optional] 
**exclude_avalara_flag** | **BOOLEAN** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



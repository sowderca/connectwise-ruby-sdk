# ConnectWise::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | 
**contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**phone** | **String** |  | [optional] 
**phone_ext** | **String** |  | [optional] 
**email** | **String** |  | [optional] 
**site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**status** | [**OrderStatusReference**](OrderStatusReference.md) |  | 
**opportunity** | [**OpportunityReference**](OpportunityReference.md) |  | [optional] 
**order_date** | **DateTime** |  | [optional] 
**due_date** | **DateTime** |  | [optional] 
**billing_terms** | [**BillingTermsReference**](BillingTermsReference.md) |  | [optional] 
**tax_code** | [**TaxCodeReference**](TaxCodeReference.md) |  | [optional] 
**po_number** | **String** |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**sales_rep** | [**MemberReference**](MemberReference.md) |  | 
**notes** | **String** |  | [optional] 
**bill_closed_flag** | **BOOLEAN** |  | [optional] 
**bill_shipped_flag** | **BOOLEAN** |  | [optional] 
**restrict_downpayment_flag** | **BOOLEAN** |  | [optional] 
**description** | **String** |  | [optional] 
**top_comment_flag** | **BOOLEAN** |  | [optional] 
**bottom_comment_flag** | **BOOLEAN** |  | [optional] 
**ship_to_company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**ship_to_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**ship_to_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**bill_to_company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**bill_to_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**bill_to_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**product_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**document_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**invoice_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**config_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**total** | **Float** |  | [optional] 
**tax_total** | **Float** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



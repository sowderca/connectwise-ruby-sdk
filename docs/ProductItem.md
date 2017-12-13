# ConnectWise::ProductItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**catalog_item** | [**CatalogItemReference**](CatalogItemReference.md) |  | 
**charge_to_id** | **Integer** |  | 
**charge_to_type** | **String** |  | 
**description** | **String** |  | [optional] 
**sequence_number** | **Float** |  | [optional] 
**quantity** | **Float** |  | [optional] 
**price** | **Float** |  | [optional] 
**cost** | **Float** |  | [optional] 
**discount** | **Float** |  | [optional] 
**price_method** | **String** |  | [optional] 
**billable_option** | **String** |  | 
**agreement** | [**AgreementReference**](AgreementReference.md) |  | [optional] 
**location_id** | **Integer** |  | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**vendor** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**vendor_sku** | **String** |  | [optional] 
**taxable_flag** | **BOOLEAN** |  | [optional] 
**dropship_flag** | **BOOLEAN** |  | [optional] 
**special_order_flag** | **BOOLEAN** |  | [optional] 
**phase_product_flag** | **BOOLEAN** |  | [optional] 
**cancelled_flag** | **BOOLEAN** |  | [optional] 
**quantity_cancelled** | **Float** |  | [optional] 
**cancelled_reason** | **String** |  | [optional] 
**customer_description** | **String** |  | [optional] 
**internal_notes** | **String** |  | [optional] 
**product_supplied_flag** | **BOOLEAN** |  | [optional] 
**sub_contractor_ship_to_id** | **Integer** |  | [optional] 
**sub_contractor_amount_limit** | **Float** |  | [optional] 
**recurring** | [**ProductRecurring**](ProductRecurring.md) |  | [optional] 
**sla** | [**SLAReference**](SLAReference.md) |  | [optional] 
**entity_type** | [**EntityTypeReference**](EntityTypeReference.md) |  | [optional] 
**forecast_detail_id** | **Integer** |  | [optional] 
**cancelled_by** | **Integer** |  | [optional] 
**cancelled_date** | **DateTime** |  | [optional] 
**warehouse** | **String** |  | [optional] 
**warehouse_bin** | **String** |  | [optional] 
**purchase_date** | **DateTime** |  | [optional] 
**integration_x_ref** | **String** |  | [optional] 
**list_price** | **Float** |  | [optional] 
**serial_number_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**forecast_status** | [**OpportunityStatusReference**](OpportunityStatusReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**bypass_forecast_update** | **BOOLEAN** |  | [optional] 
**custom_fields** | [**Array&lt;CustomFieldValue&gt;**](CustomFieldValue.md) |  | [optional] 



# ConnectWise::CatalogItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**identifier** | **String** |  | 
**description** | **String** |  | 
**inactive_flag** | **BOOLEAN** |  | [optional] 
**subcategory** | [**ProductSubCategoryReference**](ProductSubCategoryReference.md) |  | 
**type** | [**ProductTypeReference**](ProductTypeReference.md) |  | 
**product_class** | **String** | Defaults to Non-Inventory | [optional] 
**serialized_flag** | **BOOLEAN** |  | [optional] 
**serialized_cost_flag** | **BOOLEAN** |  | [optional] 
**phase_product_flag** | **BOOLEAN** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasureReference**](UnitOfMeasureReference.md) |  | [optional] 
**min_stock_level** | **Integer** |  | [optional] 
**price** | **Float** |  | [optional] 
**cost** | **Float** |  | [optional] 
**price_attribute** | **String** |  | [optional] 
**taxable_flag** | **BOOLEAN** |  | [optional] 
**customer_description** | **String** |  | 
**manufacturer** | [**ManufacturerReference**](ManufacturerReference.md) |  | [optional] 
**manufacturer_part_number** | **String** |  | [optional] 
**vendor** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**vendor_sku** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**integration_x_ref** | **String** |  | [optional] 
**date_entered** | **String** |  | [optional] 
**category** | [**ProductCategoryReference**](ProductCategoryReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**custom_fields** | [**Array&lt;CustomFieldValue&gt;**](CustomFieldValue.md) |  | [optional] 



# ConnectWise::PurchaseOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 
**business_unit_id** | **Integer** |  | [optional] 
**cancel_reason** | **String** |  | [optional] 
**closed_flag** | **BOOLEAN** |  | [optional] 
**customer_city** | **String** |  | [optional] 
**customer_company** | [**CompanyReference**](CompanyReference.md) |  | [optional] 
**customer_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**customer_country** | [**CountryReference**](CountryReference.md) |  | [optional] 
**customer_extension** | **String** |  | [optional] 
**customer_name** | **String** |  | [optional] 
**customer_phone** | **String** |  | [optional] 
**customer_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**customer_site_name** | **String** |  | [optional] 
**customer_state** | **String** |  | [optional] 
**customer_street_line1** | **String** |  | [optional] 
**customer_street_line2** | **String** |  | [optional] 
**customer_zip** | **String** |  | [optional] 
**date_closed** | **DateTime** |  | [optional] 
**drop_ship_customer_flag** | **BOOLEAN** |  | [optional] 
**entered_by** | **String** |  | [optional] 
**freight_cost** | **Float** |  | [optional] 
**freight_packing_slip** | **String** |  | [optional] 
**freight_tax_total** | **Float** |  | [optional] 
**internal_notes** | **String** |  | [optional] 
**location_id** | **Integer** |  | 
**po_date** | **DateTime** |  | [optional] 
**po_number** | **String** |  | [optional] 
**sales_tax** | **Float** |  | [optional] 
**shipment_date** | **DateTime** |  | [optional] 
**shipment_method** | [**ShipmentMethodReference**](ShipmentMethodReference.md) |  | [optional] 
**shipping_instructions** | **String** |  | [optional] 
**status** | [**PurchaseOrderStatusReference**](PurchaseOrderStatusReference.md) |  | 
**sub_total** | **Float** |  | [optional] 
**tax_code** | [**TaxCodeReference**](TaxCodeReference.md) |  | [optional] 
**tax_freight_flag** | **BOOLEAN** |  | [optional] 
**tax_po_flag** | **BOOLEAN** |  | [optional] 
**terms** | [**BillingTermsReference**](BillingTermsReference.md) |  | 
**total** | **Float** |  | [optional] 
**tracking_number** | **String** |  | [optional] 
**update_shipment_info** | **BOOLEAN** | Determines whether or not to update all of the shipment info for each associated line item when new shipment info is passed in | [optional] 
**update_vendor_order_number** | **BOOLEAN** | Determines whether or not to update vendor order number for each associated line item when new vendor order number is passed in | [optional] 
**vendor_company** | [**CompanyReference**](CompanyReference.md) |  | 
**vendor_contact** | [**ContactReference**](ContactReference.md) |  | [optional] 
**vendor_invoice_date** | **DateTime** |  | [optional] 
**vendor_invoice_number** | **String** |  | [optional] 
**vendor_order_number** | **String** |  | [optional] 
**vendor_site** | [**SiteReference**](SiteReference.md) |  | [optional] 
**warehouse** | [**WarehouseReference**](WarehouseReference.md) |  | [optional] 



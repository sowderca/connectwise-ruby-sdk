# ConnectWise::PurchaseOrderLineItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**backordered_flag** | **BOOLEAN** |  | [optional] 
**canceled_by** | **String** |  | [optional] 
**canceled_flag** | **BOOLEAN** |  | [optional] 
**canceled_reason** | **String** |  | [optional] 
**closed_flag** | **BOOLEAN** |  | [optional] 
**date_canceled** | **DateTime** |  | [optional] 
**date_canceled_utc** | **DateTime** |  | [optional] 
**description** | **String** |  | 
**display_internal_notes_flag** | **BOOLEAN** |  | [optional] 
**expected_ship_date** | **DateTime** |  | [optional] 
**internal_notes** | **String** |  | [optional] 
**line_number** | **Integer** |  | 
**packing_slip** | **String** |  | [optional] 
**product** | [**IvItemReference**](IvItemReference.md) |  | 
**purchase_order_id** | **Integer** |  | [optional] 
**quantity** | **Float** |  | 
**received_quantity** | **Integer** |  | [optional] 
**serial_numbers** | **String** |  | [optional] 
**ship_date** | **DateTime** |  | [optional] 
**shipment_method** | [**ShipmentMethodReference**](ShipmentMethodReference.md) |  | [optional] 
**tax** | **Float** |  | [optional] 
**tracking_number** | **String** |  | [optional] 
**unit_cost** | **Float** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasureReference**](UnitOfMeasureReference.md) |  | 
**vendor_order_number** | **String** |  | [optional] 
**warehouse** | [**WarehouseReference**](WarehouseReference.md) |  | [optional] 
**warehouse_bin** | [**WarehouseBinReference**](WarehouseBinReference.md) |  | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



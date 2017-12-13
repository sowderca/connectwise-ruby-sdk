# ConnectWise::UserDefinedField

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the custom user defined field | [optional] 
**pod_id** | **Integer** | Id of the Pod where the custom field will be placed | 
**caption** | **String** | Field caption | 
**sequence_number** | **Integer** | Must be between 1 and 50.  This defines the order in which the custom fields will appear | 
**help_text** | **String** | Help text to accompany the custom field | [optional] 
**field_type_identifier** | **String** |  | 
**number_decimals** | **Integer** | Only valid for Number or percent | [optional] 
**entry_type_identifier** | **String** |  | [optional] 
**required_flag** | **BOOLEAN** |  | [optional] 
**display_on_screen_flag** | **BOOLEAN** |  | [optional] 
**read_only_flag** | **BOOLEAN** |  | [optional] 
**list_view_flag** | **BOOLEAN** | Denotes that this custom field is included on a list view | [optional] 
**button_url** | **String** | Only available with Button Field Type. Required when entryTypeIdentifier is button | [optional] 
**options** | [**Array&lt;UserDefinedFieldOption&gt;**](UserDefinedFieldOption.md) |  | [optional] 
**business_unit_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**location_ids** | **Array&lt;Integer&gt;** |  | [optional] 
**add_all_business_units** | **BOOLEAN** |  | [optional] 
**remove_all_business_units** | **BOOLEAN** |  | [optional] 
**add_all_locations** | **BOOLEAN** |  | [optional] 
**remove_all_locations** | **BOOLEAN** |  | [optional] 
**date_created** | **DateTime** | Date in UTC the custom field was created | [optional] 
**_info** | [**Metadata**](Metadata.md) | Metadata of the entity | [optional] 



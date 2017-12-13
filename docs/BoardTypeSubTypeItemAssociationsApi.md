# ConnectWise::BoardTypeSubTypeItemAssociationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_type_sub_type_item_associations_count_get**](BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_count_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations/count | 
[**service_boards_id_type_sub_type_item_associations_get**](BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations | 
[**service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get**](BoardTypeSubTypeItemAssociationsApi.md#service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get) | **GET** /service/boards/{id}/typeSubTypeItemAssociations/{typeSubTypeItemAssociationId} | 


# **service_boards_id_type_sub_type_item_associations_count_get**
> Count service_boards_id_type_sub_type_item_associations_count_get(id, opts)



Get Board Type Sub Type Item Associations Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::BoardTypeSubTypeItemAssociationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_type_sub_type_item_associations_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypeSubTypeItemAssociationsApi->service_boards_id_type_sub_type_item_associations_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_type_sub_type_item_associations_get**
> Array&lt;BoardTypeSubTypeItemAssociation&gt; service_boards_id_type_sub_type_item_associations_get(id, opts)



Get Board Type Sub Type Item Associations

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::BoardTypeSubTypeItemAssociationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_id_type_sub_type_item_associations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypeSubTypeItemAssociationsApi->service_boards_id_type_sub_type_item_associations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;BoardTypeSubTypeItemAssociation&gt;**](BoardTypeSubTypeItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get**
> BoardTypeSubTypeItemAssociation service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get(id, type_sub_type_item_association_id)



Get Board Type Sub Type Item Association By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::BoardTypeSubTypeItemAssociationsApi.new

id = 56 # Integer | 

type_sub_type_item_association_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get(id, type_sub_type_item_association_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypeSubTypeItemAssociationsApi->service_boards_id_type_sub_type_item_associations_type_sub_type_item_association_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_sub_type_item_association_id** | **Integer**|  | 

### Return type

[**BoardTypeSubTypeItemAssociation**](BoardTypeSubTypeItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




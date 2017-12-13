# ConnectWise::BoardItemAssociationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_board_id_items_item_id_associations_association_id_get**](BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_association_id_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations/{associationId} | 
[**service_boards_board_id_items_item_id_associations_count_get**](BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_count_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations/count | 
[**service_boards_board_id_items_item_id_associations_get**](BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_get) | **GET** /service/boards/{boardId}/items/{itemId}/associations | 
[**service_boards_board_id_items_item_id_associations_id_put**](BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_id_put) | **PUT** /service/boards/{boardId}/items/{itemId}/associations/{id} | 
[**service_boards_board_id_items_item_id_associations_type_id_patch**](BoardItemAssociationsApi.md#service_boards_board_id_items_item_id_associations_type_id_patch) | **PATCH** /service/boards/{boardId}/items/{itemId}/associations/{typeId} | 


# **service_boards_board_id_items_item_id_associations_association_id_get**
> BoardItemAssociation service_boards_board_id_items_item_id_associations_association_id_get(board_id, item_id, association_id)



Get Board Item Association By Id

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

api_instance = ConnectWise::BoardItemAssociationsApi.new

board_id = 56 # Integer | 

item_id = 56 # Integer | 

association_id = 56 # Integer | 


begin
  result = api_instance.service_boards_board_id_items_item_id_associations_association_id_get(board_id, item_id, association_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemAssociationsApi->service_boards_board_id_items_item_id_associations_association_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **association_id** | **Integer**|  | 

### Return type

[**BoardItemAssociation**](BoardItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_items_item_id_associations_count_get**
> Count service_boards_board_id_items_item_id_associations_count_get(board_id, item_id, opts)



Get Board Item Association Count

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

api_instance = ConnectWise::BoardItemAssociationsApi.new

board_id = 56 # Integer | 

item_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_board_id_items_item_id_associations_count_get(board_id, item_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemAssociationsApi->service_boards_board_id_items_item_id_associations_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_items_item_id_associations_get**
> Array&lt;BoardItemAssociation&gt; service_boards_board_id_items_item_id_associations_get(board_id, item_id, opts)



Get Board Item Association

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

api_instance = ConnectWise::BoardItemAssociationsApi.new

board_id = 56 # Integer | 

item_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_board_id_items_item_id_associations_get(board_id, item_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemAssociationsApi->service_boards_board_id_items_item_id_associations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;BoardItemAssociation&gt;**](BoardItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_items_item_id_associations_id_put**
> BoardItemAssociation service_boards_board_id_items_item_id_associations_id_put(board_id, item_id, id, item_association)



Replace Board Item Association

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

api_instance = ConnectWise::BoardItemAssociationsApi.new

board_id = 56 # Integer | 

item_id = 56 # Integer | 

id = 56 # Integer | 

item_association = ConnectWise::BoardItemAssociation.new # BoardItemAssociation | 


begin
  result = api_instance.service_boards_board_id_items_item_id_associations_id_put(board_id, item_id, id, item_association)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemAssociationsApi->service_boards_board_id_items_item_id_associations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **item_id** | **Integer**|  | 
 **id** | **Integer**|  | 
 **item_association** | [**BoardItemAssociation**](BoardItemAssociation.md)|  | 

### Return type

[**BoardItemAssociation**](BoardItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_board_id_items_item_id_associations_type_id_patch**
> BoardItemAssociation service_boards_board_id_items_item_id_associations_type_id_patch(board_id, item_id, type_id, operations)



Update Board Item Association

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

api_instance = ConnectWise::BoardItemAssociationsApi.new

board_id = 56 # Integer | The recid of the Service/Project Board

item_id = 56 # Integer | 

type_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_board_id_items_item_id_associations_type_id_patch(board_id, item_id, type_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardItemAssociationsApi->service_boards_board_id_items_item_id_associations_type_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**| The recid of the Service/Project Board | 
 **item_id** | **Integer**|  | 
 **type_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardItemAssociation**](BoardItemAssociation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




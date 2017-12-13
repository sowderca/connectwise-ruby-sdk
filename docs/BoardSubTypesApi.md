# ConnectWise::BoardSubTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_subtypes_count_get**](BoardSubTypesApi.md#service_boards_id_subtypes_count_get) | **GET** /service/boards/{id}/subtypes/count | 
[**service_boards_id_subtypes_get**](BoardSubTypesApi.md#service_boards_id_subtypes_get) | **GET** /service/boards/{id}/subtypes | 
[**service_boards_id_subtypes_post**](BoardSubTypesApi.md#service_boards_id_subtypes_post) | **POST** /service/boards/{id}/subtypes | 
[**service_boards_id_subtypes_subtype_id_delete**](BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_delete) | **DELETE** /service/boards/{id}/subtypes/{subtypeId} | 
[**service_boards_id_subtypes_subtype_id_get**](BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_get) | **GET** /service/boards/{id}/subtypes/{subtypeId} | 
[**service_boards_id_subtypes_subtype_id_patch**](BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_patch) | **PATCH** /service/boards/{id}/subtypes/{subtypeId} | 
[**service_boards_id_subtypes_subtype_id_put**](BoardSubTypesApi.md#service_boards_id_subtypes_subtype_id_put) | **PUT** /service/boards/{id}/subtypes/{subtypeId} | 


# **service_boards_id_subtypes_count_get**
> Count service_boards_id_subtypes_count_get(id, opts)



Get Subtypes Count

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_subtypes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_count_get: #{e}"
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



# **service_boards_id_subtypes_get**
> Array&lt;BoardSubType&gt; service_boards_id_subtypes_get(id, opts)



Get Subtypes

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

api_instance = ConnectWise::BoardSubTypesApi.new

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
  result = api_instance.service_boards_id_subtypes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_get: #{e}"
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

[**Array&lt;BoardSubType&gt;**](BoardSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_subtypes_post**
> BoardSubType service_boards_id_subtypes_post(id, board_sub_type)



Create Subtype

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

board_sub_type = ConnectWise::BoardSubType.new # BoardSubType | 


begin
  result = api_instance.service_boards_id_subtypes_post(id, board_sub_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_sub_type** | [**BoardSubType**](BoardSubType.md)|  | 

### Return type

[**BoardSubType**](BoardSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_subtypes_subtype_id_delete**
> service_boards_id_subtypes_subtype_id_delete(id, subtype_id)



Delete Subtype By Id

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

subtype_id = 56 # Integer | 


begin
  api_instance.service_boards_id_subtypes_subtype_id_delete(id, subtype_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_subtype_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subtype_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_subtypes_subtype_id_get**
> BoardSubType service_boards_id_subtypes_subtype_id_get(id, subtype_id)



Get Subtype By Id

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

subtype_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_subtypes_subtype_id_get(id, subtype_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_subtype_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subtype_id** | **Integer**|  | 

### Return type

[**BoardSubType**](BoardSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_subtypes_subtype_id_patch**
> BoardSubType service_boards_id_subtypes_subtype_id_patch(id, subtype_id, operations)



Update Subtype

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

subtype_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_subtypes_subtype_id_patch(id, subtype_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_subtype_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subtype_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardSubType**](BoardSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_subtypes_subtype_id_put**
> BoardSubType service_boards_id_subtypes_subtype_id_put(id, subtype_id, board_sub_type)



Replace Subtype

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

api_instance = ConnectWise::BoardSubTypesApi.new

id = 56 # Integer | 

subtype_id = 56 # Integer | 

board_sub_type = ConnectWise::BoardSubType.new # BoardSubType | 


begin
  result = api_instance.service_boards_id_subtypes_subtype_id_put(id, subtype_id, board_sub_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardSubTypesApi->service_boards_id_subtypes_subtype_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subtype_id** | **Integer**|  | 
 **board_sub_type** | [**BoardSubType**](BoardSubType.md)|  | 

### Return type

[**BoardSubType**](BoardSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




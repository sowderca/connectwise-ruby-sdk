# ConnectWise::BoardTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_types_count_get**](BoardTypesApi.md#service_boards_id_types_count_get) | **GET** /service/boards/{id}/types/count | 
[**service_boards_id_types_get**](BoardTypesApi.md#service_boards_id_types_get) | **GET** /service/boards/{id}/types | 
[**service_boards_id_types_post**](BoardTypesApi.md#service_boards_id_types_post) | **POST** /service/boards/{id}/types | 
[**service_boards_id_types_type_id_delete**](BoardTypesApi.md#service_boards_id_types_type_id_delete) | **DELETE** /service/boards/{id}/types/{typeId} | 
[**service_boards_id_types_type_id_get**](BoardTypesApi.md#service_boards_id_types_type_id_get) | **GET** /service/boards/{id}/types/{typeId} | 
[**service_boards_id_types_type_id_patch**](BoardTypesApi.md#service_boards_id_types_type_id_patch) | **PATCH** /service/boards/{id}/types/{typeId} | 
[**service_boards_id_types_type_id_put**](BoardTypesApi.md#service_boards_id_types_type_id_put) | **PUT** /service/boards/{id}/types/{typeId} | 


# **service_boards_id_types_count_get**
> Count service_boards_id_types_count_get(id, opts)



Get Types Count

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_types_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_count_get: #{e}"
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



# **service_boards_id_types_get**
> Array&lt;BoardType&gt; service_boards_id_types_get(id, opts)



Get Types

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

api_instance = ConnectWise::BoardTypesApi.new

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
  result = api_instance.service_boards_id_types_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_get: #{e}"
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

[**Array&lt;BoardType&gt;**](BoardType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_types_post**
> BoardType service_boards_id_types_post(id, board_type)



Create Type

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

board_type = ConnectWise::BoardType.new # BoardType | 


begin
  result = api_instance.service_boards_id_types_post(id, board_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_type** | [**BoardType**](BoardType.md)|  | 

### Return type

[**BoardType**](BoardType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_types_type_id_delete**
> service_boards_id_types_type_id_delete(id, type_id)



Delete Type By Id

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 


begin
  api_instance.service_boards_id_types_type_id_delete(id, type_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_types_type_id_get**
> BoardType service_boards_id_types_type_id_get(id, type_id)



Get Type By Id

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_types_type_id_get(id, type_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 

### Return type

[**BoardType**](BoardType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_types_type_id_patch**
> BoardType service_boards_id_types_type_id_patch(id, type_id, operations)



Update Types

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_types_type_id_patch(id, type_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardType**](BoardType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_types_type_id_put**
> BoardType service_boards_id_types_type_id_put(id, type_id, board_type)



Replace Types

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

api_instance = ConnectWise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 

board_type = ConnectWise::BoardType.new # BoardType | 


begin
  result = api_instance.service_boards_id_types_type_id_put(id, type_id, board_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 
 **board_type** | [**BoardType**](BoardType.md)|  | 

### Return type

[**BoardType**](BoardType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




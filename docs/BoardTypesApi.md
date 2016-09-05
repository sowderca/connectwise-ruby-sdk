# Connectwise::BoardTypesApi

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
[**service_boards_id_types_type_id_sub_type_association_get**](BoardTypesApi.md#service_boards_id_types_type_id_sub_type_association_get) | **GET** /service/boards/{id}/types/{typeId}/subTypeAssociation | 


# **service_boards_id_types_count_get**
> Count service_boards_id_types_count_get(id, opts)



Get Types Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_types_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
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
> Array&lt;Type&gt; service_boards_id_types_get(id, opts)



Get Types

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_id_types_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Type&gt;**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_types_post**
> Type service_boards_id_types_post(id, type)



Create Type

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type = Connectwise::Type.new # Type | 


begin
  result = api_instance.service_boards_id_types_post(id, type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type** | [**Type**](Type.md)|  | 

### Return type

[**Type**](Type.md)

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
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 


begin
  api_instance.service_boards_id_types_type_id_delete(id, type_id)
rescue Connectwise::ApiError => e
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
> Type service_boards_id_types_type_id_get(id, type_id)



Get Type By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_types_type_id_get(id, type_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_types_type_id_patch**
> Type service_boards_id_types_type_id_patch(id, type_id, operations)



Update Types

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_types_type_id_patch(id, type_id, operations)
  p result
rescue Connectwise::ApiError => e
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

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_types_type_id_put**
> Type service_boards_id_types_type_id_put(id, type_id, type)



Replace Types

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 

type = Connectwise::Type.new # Type | 


begin
  result = api_instance.service_boards_id_types_type_id_put(id, type_id, type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 
 **type** | [**Type**](Type.md)|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_types_type_id_sub_type_association_get**
> Integer service_boards_id_types_type_id_sub_type_association_get(id, type_id)



Get Sub Type Association

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::BoardTypesApi.new

id = 56 # Integer | 

type_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_types_type_id_sub_type_association_get(id, type_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardTypesApi->service_boards_id_types_type_id_sub_type_association_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type_id** | **Integer**|  | 

### Return type

**Integer**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




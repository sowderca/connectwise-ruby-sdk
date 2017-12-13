# ConnectWise::OwnershipTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_ownership_types_count_get**](OwnershipTypesApi.md#company_ownership_types_count_get) | **GET** /company/ownershipTypes/count | 
[**company_ownership_types_get**](OwnershipTypesApi.md#company_ownership_types_get) | **GET** /company/ownershipTypes | 
[**company_ownership_types_id_delete**](OwnershipTypesApi.md#company_ownership_types_id_delete) | **DELETE** /company/ownershipTypes/{id} | 
[**company_ownership_types_id_get**](OwnershipTypesApi.md#company_ownership_types_id_get) | **GET** /company/ownershipTypes/{id} | 
[**company_ownership_types_id_patch**](OwnershipTypesApi.md#company_ownership_types_id_patch) | **PATCH** /company/ownershipTypes/{id} | 
[**company_ownership_types_id_put**](OwnershipTypesApi.md#company_ownership_types_id_put) | **PUT** /company/ownershipTypes/{id} | 
[**company_ownership_types_post**](OwnershipTypesApi.md#company_ownership_types_post) | **POST** /company/ownershipTypes | 


# **company_ownership_types_count_get**
> Count company_ownership_types_count_get(opts)



Get Ownership Type Count

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

api_instance = ConnectWise::OwnershipTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_ownership_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_ownership_types_get**
> Array&lt;OwnershipType&gt; company_ownership_types_get(opts)



Get Ownership Type

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

api_instance = ConnectWise::OwnershipTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_ownership_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;OwnershipType&gt;**](OwnershipType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_ownership_types_id_delete**
> company_ownership_types_id_delete(id)



Delete Ownership Type By Id

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

api_instance = ConnectWise::OwnershipTypesApi.new

id = 56 # Integer | 


begin
  api_instance.company_ownership_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_ownership_types_id_get**
> OwnershipType company_ownership_types_id_get(id)



Get Ownership Type By Id

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

api_instance = ConnectWise::OwnershipTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_ownership_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OwnershipType**](OwnershipType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_ownership_types_id_patch**
> OwnershipType company_ownership_types_id_patch(id, operations)



Update Ownership Type

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

api_instance = ConnectWise::OwnershipTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_ownership_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OwnershipType**](OwnershipType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_ownership_types_id_put**
> OwnershipType company_ownership_types_id_put(id, ownership_type)



Replace Ownership Type

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

api_instance = ConnectWise::OwnershipTypesApi.new

id = 56 # Integer | 

ownership_type = ConnectWise::OwnershipType.new # OwnershipType | 


begin
  result = api_instance.company_ownership_types_id_put(id, ownership_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **ownership_type** | [**OwnershipType**](OwnershipType.md)|  | 

### Return type

[**OwnershipType**](OwnershipType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_ownership_types_post**
> OwnershipType company_ownership_types_post(ownership_type)



Create Ownership Type

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

api_instance = ConnectWise::OwnershipTypesApi.new

ownership_type = ConnectWise::OwnershipType.new # OwnershipType | 


begin
  result = api_instance.company_ownership_types_post(ownership_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OwnershipTypesApi->company_ownership_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownership_type** | [**OwnershipType**](OwnershipType.md)|  | 

### Return type

[**OwnershipType**](OwnershipType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




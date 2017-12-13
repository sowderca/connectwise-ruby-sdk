# ConnectWise::RolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_roles_count_get**](RolesApi.md#sales_roles_count_get) | **GET** /sales/roles/count | 
[**sales_roles_get**](RolesApi.md#sales_roles_get) | **GET** /sales/roles | 
[**sales_roles_id_delete**](RolesApi.md#sales_roles_id_delete) | **DELETE** /sales/roles/{id} | 
[**sales_roles_id_get**](RolesApi.md#sales_roles_id_get) | **GET** /sales/roles/{id} | 
[**sales_roles_id_patch**](RolesApi.md#sales_roles_id_patch) | **PATCH** /sales/roles/{id} | 
[**sales_roles_id_put**](RolesApi.md#sales_roles_id_put) | **PUT** /sales/roles/{id} | 
[**sales_roles_post**](RolesApi.md#sales_roles_post) | **POST** /sales/roles | 


# **sales_roles_count_get**
> Count sales_roles_count_get(opts)



Get Role Count

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

api_instance = ConnectWise::RolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_roles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_count_get: #{e}"
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



# **sales_roles_get**
> Array&lt;Role&gt; sales_roles_get(opts)



Get Role

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

api_instance = ConnectWise::RolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_roles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_get: #{e}"
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

[**Array&lt;Role&gt;**](Role.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_roles_id_delete**
> sales_roles_id_delete(id)



Delete Role By Id

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

api_instance = ConnectWise::RolesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_roles_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_id_delete: #{e}"
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



# **sales_roles_id_get**
> Role sales_roles_id_get(id)



Get Role By Id

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

api_instance = ConnectWise::RolesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_roles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Role**](Role.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_roles_id_patch**
> Role sales_roles_id_patch(id, operations)



Update Role

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

api_instance = ConnectWise::RolesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_roles_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_roles_id_put**
> Role sales_roles_id_put(id, role)



Replace Role

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

api_instance = ConnectWise::RolesApi.new

id = 56 # Integer | 

role = ConnectWise::Role.new # Role | 


begin
  result = api_instance.sales_roles_id_put(id, role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **role** | [**Role**](Role.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_roles_post**
> Role sales_roles_post(role)



Create Role

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

api_instance = ConnectWise::RolesApi.new

role = ConnectWise::Role.new # Role | 


begin
  result = api_instance.sales_roles_post(role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RolesApi->sales_roles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




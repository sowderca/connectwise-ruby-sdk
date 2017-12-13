# ConnectWise::AuthAnvilsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_auth_anvils_count_get**](AuthAnvilsApi.md#system_auth_anvils_count_get) | **GET** /system/authAnvils/count | 
[**system_auth_anvils_get**](AuthAnvilsApi.md#system_auth_anvils_get) | **GET** /system/authAnvils | 
[**system_auth_anvils_id_get**](AuthAnvilsApi.md#system_auth_anvils_id_get) | **GET** /system/authAnvils/{id} | 
[**system_auth_anvils_id_patch**](AuthAnvilsApi.md#system_auth_anvils_id_patch) | **PATCH** /system/authAnvils/{id} | 
[**system_auth_anvils_id_put**](AuthAnvilsApi.md#system_auth_anvils_id_put) | **PUT** /system/authAnvils/{id} | 
[**system_auth_anvils_test_connection_get**](AuthAnvilsApi.md#system_auth_anvils_test_connection_get) | **GET** /system/authAnvils/testConnection | 


# **system_auth_anvils_count_get**
> Count system_auth_anvils_count_get(opts)



Get Auth Anvil Count

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

api_instance = ConnectWise::AuthAnvilsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_auth_anvils_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_count_get: #{e}"
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



# **system_auth_anvils_get**
> Array&lt;AuthAnvil&gt; system_auth_anvils_get(opts)



Get Auth Anvils

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

api_instance = ConnectWise::AuthAnvilsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_auth_anvils_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_get: #{e}"
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

[**Array&lt;AuthAnvil&gt;**](AuthAnvil.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_auth_anvils_id_get**
> AuthAnvil system_auth_anvils_id_get(id)



Get Auth Anvil By Id

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

api_instance = ConnectWise::AuthAnvilsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_auth_anvils_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AuthAnvil**](AuthAnvil.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_auth_anvils_id_patch**
> AuthAnvil system_auth_anvils_id_patch(id, operations)



Update Auth Anvil

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

api_instance = ConnectWise::AuthAnvilsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_auth_anvils_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AuthAnvil**](AuthAnvil.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_auth_anvils_id_put**
> AuthAnvil system_auth_anvils_id_put(id, auth_anvil)



Replace Auth Anvil

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

api_instance = ConnectWise::AuthAnvilsApi.new

id = 56 # Integer | 

auth_anvil = ConnectWise::AuthAnvil.new # AuthAnvil | 


begin
  result = api_instance.system_auth_anvils_id_put(id, auth_anvil)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auth_anvil** | [**AuthAnvil**](AuthAnvil.md)|  | 

### Return type

[**AuthAnvil**](AuthAnvil.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_auth_anvils_test_connection_get**
> SuccessResponse system_auth_anvils_test_connection_get



Validate Auth Anvil Url Connectivity

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

api_instance = ConnectWise::AuthAnvilsApi.new

begin
  result = api_instance.system_auth_anvils_test_connection_get
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AuthAnvilsApi->system_auth_anvils_test_connection_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




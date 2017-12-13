# ConnectWise::WorkRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_work_roles_count_get**](WorkRolesApi.md#time_work_roles_count_get) | **GET** /time/workRoles/count | 
[**time_work_roles_get**](WorkRolesApi.md#time_work_roles_get) | **GET** /time/workRoles | 
[**time_work_roles_id_delete**](WorkRolesApi.md#time_work_roles_id_delete) | **DELETE** /time/workRoles/{id} | 
[**time_work_roles_id_get**](WorkRolesApi.md#time_work_roles_id_get) | **GET** /time/workRoles/{id} | 
[**time_work_roles_id_patch**](WorkRolesApi.md#time_work_roles_id_patch) | **PATCH** /time/workRoles/{id} | 
[**time_work_roles_id_put**](WorkRolesApi.md#time_work_roles_id_put) | **PUT** /time/workRoles/{id} | 
[**time_work_roles_post**](WorkRolesApi.md#time_work_roles_post) | **POST** /time/workRoles | 


# **time_work_roles_count_get**
> Count time_work_roles_count_get(opts)



Get Work Role Count

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

api_instance = ConnectWise::WorkRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_work_roles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_count_get: #{e}"
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



# **time_work_roles_get**
> Array&lt;WorkRole&gt; time_work_roles_get(opts)



Get Work Role

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

api_instance = ConnectWise::WorkRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_work_roles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_get: #{e}"
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

[**Array&lt;WorkRole&gt;**](WorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_roles_id_delete**
> time_work_roles_id_delete(id)



Delete Work Role By Id

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

api_instance = ConnectWise::WorkRolesApi.new

id = 56 # Integer | 


begin
  api_instance.time_work_roles_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_id_delete: #{e}"
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



# **time_work_roles_id_get**
> WorkRole time_work_roles_id_get(id)



Get Work Role By Id

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

api_instance = ConnectWise::WorkRolesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_work_roles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**WorkRole**](WorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_work_roles_id_patch**
> WorkRole time_work_roles_id_patch(id, operations)



Update Work Role

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

api_instance = ConnectWise::WorkRolesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_work_roles_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkRole**](WorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_roles_id_put**
> WorkRole time_work_roles_id_put(id, work_role)



Replace Work Role

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

api_instance = ConnectWise::WorkRolesApi.new

id = 56 # Integer | 

work_role = ConnectWise::WorkRole.new # WorkRole | 


begin
  result = api_instance.time_work_roles_id_put(id, work_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role** | [**WorkRole**](WorkRole.md)|  | 

### Return type

[**WorkRole**](WorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_work_roles_post**
> WorkRole time_work_roles_post(work_role)



Create Work Role

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

api_instance = ConnectWise::WorkRolesApi.new

work_role = ConnectWise::WorkRole.new # WorkRole | 


begin
  result = api_instance.time_work_roles_post(work_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling WorkRolesApi->time_work_roles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_role** | [**WorkRole**](WorkRole.md)|  | 

### Return type

[**WorkRole**](WorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




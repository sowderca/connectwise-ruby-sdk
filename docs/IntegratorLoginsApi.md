# ConnectWise::IntegratorLoginsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_integratorlogins_count_get**](IntegratorLoginsApi.md#system_integratorlogins_count_get) | **GET** /system/integratorlogins/count | 
[**system_integratorlogins_get**](IntegratorLoginsApi.md#system_integratorlogins_get) | **GET** /system/integratorlogins | 
[**system_integratorlogins_id_delete**](IntegratorLoginsApi.md#system_integratorlogins_id_delete) | **DELETE** /system/integratorlogins/{id} | 
[**system_integratorlogins_id_get**](IntegratorLoginsApi.md#system_integratorlogins_id_get) | **GET** /system/integratorlogins/{id} | 
[**system_integratorlogins_id_patch**](IntegratorLoginsApi.md#system_integratorlogins_id_patch) | **PATCH** /system/integratorlogins/{id} | 
[**system_integratorlogins_id_put**](IntegratorLoginsApi.md#system_integratorlogins_id_put) | **PUT** /system/integratorlogins/{id} | 
[**system_integratorlogins_post**](IntegratorLoginsApi.md#system_integratorlogins_post) | **POST** /system/integratorlogins | 


# **system_integratorlogins_count_get**
> Count system_integratorlogins_count_get(opts)



Get Integrator Login Count

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

api_instance = ConnectWise::IntegratorLoginsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_integratorlogins_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_count_get: #{e}"
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



# **system_integratorlogins_get**
> Array&lt;IntegratorLogin&gt; system_integratorlogins_get(opts)



Get Integrator Login

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

api_instance = ConnectWise::IntegratorLoginsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_integratorlogins_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_get: #{e}"
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

[**Array&lt;IntegratorLogin&gt;**](IntegratorLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_integratorlogins_id_delete**
> system_integratorlogins_id_delete(id)



Delete Integrator Login By Id

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

api_instance = ConnectWise::IntegratorLoginsApi.new

id = 56 # Integer | 


begin
  api_instance.system_integratorlogins_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_id_delete: #{e}"
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



# **system_integratorlogins_id_get**
> IntegratorLogin system_integratorlogins_id_get(id)



Get Integrator Login By Id

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

api_instance = ConnectWise::IntegratorLoginsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_integratorlogins_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**IntegratorLogin**](IntegratorLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_integratorlogins_id_patch**
> IntegratorLogin system_integratorlogins_id_patch(id, operations)



Update Integrator Login

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

api_instance = ConnectWise::IntegratorLoginsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_integratorlogins_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**IntegratorLogin**](IntegratorLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_integratorlogins_id_put**
> IntegratorLogin system_integratorlogins_id_put(id, integrator_login)



Replace Integrator Login

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

api_instance = ConnectWise::IntegratorLoginsApi.new

id = 56 # Integer | 

integrator_login = ConnectWise::IntegratorLogin.new # IntegratorLogin | 


begin
  result = api_instance.system_integratorlogins_id_put(id, integrator_login)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **integrator_login** | [**IntegratorLogin**](IntegratorLogin.md)|  | 

### Return type

[**IntegratorLogin**](IntegratorLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_integratorlogins_post**
> IntegratorLogin system_integratorlogins_post(integrator_login)



Create Integrator Login

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

api_instance = ConnectWise::IntegratorLoginsApi.new

integrator_login = ConnectWise::IntegratorLogin.new # IntegratorLogin | 


begin
  result = api_instance.system_integratorlogins_post(integrator_login)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling IntegratorLoginsApi->system_integratorlogins_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrator_login** | [**IntegratorLogin**](IntegratorLogin.md)|  | 

### Return type

[**IntegratorLogin**](IntegratorLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




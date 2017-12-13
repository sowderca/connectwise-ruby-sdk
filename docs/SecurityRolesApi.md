# ConnectWise::SecurityRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_securityroles_count_get**](SecurityRolesApi.md#system_securityroles_count_get) | **GET** /system/securityroles/count | 
[**system_securityroles_get**](SecurityRolesApi.md#system_securityroles_get) | **GET** /system/securityroles | 
[**system_securityroles_id_delete**](SecurityRolesApi.md#system_securityroles_id_delete) | **DELETE** /system/securityroles/{id} | 
[**system_securityroles_id_get**](SecurityRolesApi.md#system_securityroles_id_get) | **GET** /system/securityroles/{id} | 
[**system_securityroles_post**](SecurityRolesApi.md#system_securityroles_post) | **POST** /system/securityroles | 


# **system_securityroles_count_get**
> Count system_securityroles_count_get(opts)



Get Security Role Count

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

api_instance = ConnectWise::SecurityRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_securityroles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRolesApi->system_securityroles_count_get: #{e}"
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



# **system_securityroles_get**
> Array&lt;SecurityRole&gt; system_securityroles_get(opts)



Get Security Role

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

api_instance = ConnectWise::SecurityRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_securityroles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRolesApi->system_securityroles_get: #{e}"
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

[**Array&lt;SecurityRole&gt;**](SecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_securityroles_id_delete**
> system_securityroles_id_delete(id)



Delete Security Role By Id

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

api_instance = ConnectWise::SecurityRolesApi.new

id = 56 # Integer | 


begin
  api_instance.system_securityroles_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRolesApi->system_securityroles_id_delete: #{e}"
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



# **system_securityroles_id_get**
> SecurityRole system_securityroles_id_get(id)



Get Security Role By Id

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

api_instance = ConnectWise::SecurityRolesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_securityroles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRolesApi->system_securityroles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SecurityRole**](SecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_securityroles_post**
> SecurityRole system_securityroles_post(security_role)



Create Security Role

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

api_instance = ConnectWise::SecurityRolesApi.new

security_role = ConnectWise::SecurityRole.new # SecurityRole | 


begin
  result = api_instance.system_securityroles_post(security_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRolesApi->system_securityroles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **security_role** | [**SecurityRole**](SecurityRole.md)|  | 

### Return type

[**SecurityRole**](SecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




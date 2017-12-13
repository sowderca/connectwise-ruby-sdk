# ConnectWise::PortalSecurityLevelsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_security_levels_count_get**](PortalSecurityLevelsApi.md#system_portal_security_levels_count_get) | **GET** /system/portalSecurityLevels/count | 
[**system_portal_security_levels_get**](PortalSecurityLevelsApi.md#system_portal_security_levels_get) | **GET** /system/portalSecurityLevels | 
[**system_portal_security_levels_id_get**](PortalSecurityLevelsApi.md#system_portal_security_levels_id_get) | **GET** /system/portalSecurityLevels/{id} | 
[**system_portal_security_levels_id_patch**](PortalSecurityLevelsApi.md#system_portal_security_levels_id_patch) | **PATCH** /system/portalSecurityLevels/{id} | 
[**system_portal_security_levels_id_put**](PortalSecurityLevelsApi.md#system_portal_security_levels_id_put) | **PUT** /system/portalSecurityLevels/{id} | 


# **system_portal_security_levels_count_get**
> Count system_portal_security_levels_count_get(opts)



Get Portal Security Level Captions Count

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

api_instance = ConnectWise::PortalSecurityLevelsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_security_levels_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecurityLevelsApi->system_portal_security_levels_count_get: #{e}"
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



# **system_portal_security_levels_get**
> Array&lt;PortalSecurityLevel&gt; system_portal_security_levels_get(opts)



Get Portal Security Level Captions

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

api_instance = ConnectWise::PortalSecurityLevelsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_portal_security_levels_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecurityLevelsApi->system_portal_security_levels_get: #{e}"
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

[**Array&lt;PortalSecurityLevel&gt;**](PortalSecurityLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_security_levels_id_get**
> PortalSecurityLevel system_portal_security_levels_id_get(id)



Get Portal Security Level Caption By Id

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

api_instance = ConnectWise::PortalSecurityLevelsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_portal_security_levels_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecurityLevelsApi->system_portal_security_levels_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PortalSecurityLevel**](PortalSecurityLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_security_levels_id_patch**
> PortalSecurityLevel system_portal_security_levels_id_patch(id, operations)



Update Portal Security Level Caption

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

api_instance = ConnectWise::PortalSecurityLevelsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_security_levels_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecurityLevelsApi->system_portal_security_levels_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalSecurityLevel**](PortalSecurityLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_security_levels_id_put**
> PortalSecurityLevel system_portal_security_levels_id_put(id, _portal_security_level)



Replace Portal Security Level Caption

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

api_instance = ConnectWise::PortalSecurityLevelsApi.new

id = 56 # Integer | 

_portal_security_level = ConnectWise::PortalSecurityLevel.new # PortalSecurityLevel | 


begin
  result = api_instance.system_portal_security_levels_id_put(id, _portal_security_level)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecurityLevelsApi->system_portal_security_levels_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **_portal_security_level** | [**PortalSecurityLevel**](PortalSecurityLevel.md)|  | 

### Return type

[**PortalSecurityLevel**](PortalSecurityLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::PortalSecuritiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_securities_count_get**](PortalSecuritiesApi.md#system_portal_securities_count_get) | **GET** /system/portalSecurities/count | 
[**system_portal_securities_get**](PortalSecuritiesApi.md#system_portal_securities_get) | **GET** /system/portalSecurities | 
[**system_portal_securities_id_get**](PortalSecuritiesApi.md#system_portal_securities_id_get) | **GET** /system/portalSecurities/{id} | 
[**system_portal_securities_id_patch**](PortalSecuritiesApi.md#system_portal_securities_id_patch) | **PATCH** /system/portalSecurities/{id} | 
[**system_portal_securities_id_put**](PortalSecuritiesApi.md#system_portal_securities_id_put) | **PUT** /system/portalSecurities/{id} | 


# **system_portal_securities_count_get**
> Count system_portal_securities_count_get(opts)



Get Portal Securities Count

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

api_instance = ConnectWise::PortalSecuritiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_securities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecuritiesApi->system_portal_securities_count_get: #{e}"
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



# **system_portal_securities_get**
> Array&lt;PortalSecurity&gt; system_portal_securities_get(opts)



Get Portal Securities

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

api_instance = ConnectWise::PortalSecuritiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_portal_securities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecuritiesApi->system_portal_securities_get: #{e}"
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

[**Array&lt;PortalSecurity&gt;**](PortalSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_securities_id_get**
> PortalSecurity system_portal_securities_id_get(id)



Get Portal Security By Id

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

api_instance = ConnectWise::PortalSecuritiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_portal_securities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecuritiesApi->system_portal_securities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PortalSecurity**](PortalSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_securities_id_patch**
> PortalSecurity system_portal_securities_id_patch(id, operations)



Update Portal Security

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

api_instance = ConnectWise::PortalSecuritiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_securities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecuritiesApi->system_portal_securities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalSecurity**](PortalSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_securities_id_put**
> PortalSecurity system_portal_securities_id_put(id, portal_security)



Replace Portal Security

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

api_instance = ConnectWise::PortalSecuritiesApi.new

id = 56 # Integer | 

portal_security = ConnectWise::PortalSecurity.new # PortalSecurity | 


begin
  result = api_instance.system_portal_securities_id_put(id, portal_security)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalSecuritiesApi->system_portal_securities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_security** | [**PortalSecurity**](PortalSecurity.md)|  | 

### Return type

[**PortalSecurity**](PortalSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




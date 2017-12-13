# ConnectWise::PortalConfigurationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_count_get**](PortalConfigurationsApi.md#system_portal_configurations_count_get) | **GET** /system/portalConfigurations/count | 
[**system_portal_configurations_get**](PortalConfigurationsApi.md#system_portal_configurations_get) | **GET** /system/portalConfigurations | 
[**system_portal_configurations_id_delete**](PortalConfigurationsApi.md#system_portal_configurations_id_delete) | **DELETE** /system/portalConfigurations/{id} | 
[**system_portal_configurations_id_get**](PortalConfigurationsApi.md#system_portal_configurations_id_get) | **GET** /system/portalConfigurations/{id} | 
[**system_portal_configurations_id_patch**](PortalConfigurationsApi.md#system_portal_configurations_id_patch) | **PATCH** /system/portalConfigurations/{id} | 
[**system_portal_configurations_id_portal_image_get**](PortalConfigurationsApi.md#system_portal_configurations_id_portal_image_get) | **GET** /system/portalConfigurations/{id}/portalImage | 
[**system_portal_configurations_id_put**](PortalConfigurationsApi.md#system_portal_configurations_id_put) | **PUT** /system/portalConfigurations/{id} | 
[**system_portal_configurations_id_report_image_get**](PortalConfigurationsApi.md#system_portal_configurations_id_report_image_get) | **GET** /system/portalConfigurations/{id}/reportImage | 
[**system_portal_configurations_post**](PortalConfigurationsApi.md#system_portal_configurations_post) | **POST** /system/portalConfigurations | 


# **system_portal_configurations_count_get**
> Count system_portal_configurations_count_get(opts)



Get Portal Configurations Count

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

api_instance = ConnectWise::PortalConfigurationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_configurations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_count_get: #{e}"
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



# **system_portal_configurations_get**
> Array&lt;PortalConfiguration&gt; system_portal_configurations_get(opts)



Get Portal Configurations

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

api_instance = ConnectWise::PortalConfigurationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_portal_configurations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_get: #{e}"
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

[**Array&lt;PortalConfiguration&gt;**](PortalConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_delete**
> system_portal_configurations_id_delete(id)



Delete Portal Configuration By Id

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 


begin
  api_instance.system_portal_configurations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_delete: #{e}"
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



# **system_portal_configurations_id_get**
> PortalConfiguration system_portal_configurations_id_get(id)



Get Portal Configuration By Id

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PortalConfiguration**](PortalConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_patch**
> PortalConfiguration system_portal_configurations_id_patch(id, operations)



Update Portal Configuration

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfiguration**](PortalConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_portal_image_get**
> system_portal_configurations_id_portal_image_get(id, opts)



Get Portal Image

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 

opts = { 
  last_updated: "last_updated_example" # String | 
}

begin
  api_instance.system_portal_configurations_id_portal_image_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_portal_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **last_updated** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **system_portal_configurations_id_put**
> PortalConfiguration system_portal_configurations_id_put(id, portal_configuration)



Replace Portal Configuration

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 

portal_configuration = ConnectWise::PortalConfiguration.new # PortalConfiguration | 


begin
  result = api_instance.system_portal_configurations_id_put(id, portal_configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration** | [**PortalConfiguration**](PortalConfiguration.md)|  | 

### Return type

[**PortalConfiguration**](PortalConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_report_image_get**
> system_portal_configurations_id_report_image_get(id, opts)



Get Report Image

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

api_instance = ConnectWise::PortalConfigurationsApi.new

id = 56 # Integer | 

opts = { 
  last_updated: "last_updated_example" # String | 
}

begin
  api_instance.system_portal_configurations_id_report_image_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_id_report_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **last_updated** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **system_portal_configurations_post**
> PortalConfiguration system_portal_configurations_post(portal_configuration)



Create Portal Configuration

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

api_instance = ConnectWise::PortalConfigurationsApi.new

portal_configuration = ConnectWise::PortalConfiguration.new # PortalConfiguration | 


begin
  result = api_instance.system_portal_configurations_post(portal_configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationsApi->system_portal_configurations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_configuration** | [**PortalConfiguration**](PortalConfiguration.md)|  | 

### Return type

[**PortalConfiguration**](PortalConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ManagedDevicesIntegrationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_managed_devices_integrations_count_get**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_count_get) | **GET** /company/managedDevicesIntegrations/count | 
[**company_managed_devices_integrations_get**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_get) | **GET** /company/managedDevicesIntegrations | 
[**company_managed_devices_integrations_id_delete**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id} | 
[**company_managed_devices_integrations_id_get**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_get) | **GET** /company/managedDevicesIntegrations/{id} | 
[**company_managed_devices_integrations_id_patch**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id} | 
[**company_managed_devices_integrations_id_put**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_id_put) | **PUT** /company/managedDevicesIntegrations/{id} | 
[**company_managed_devices_integrations_post**](ManagedDevicesIntegrationsApi.md#company_managed_devices_integrations_post) | **POST** /company/managedDevicesIntegrations | 


# **company_managed_devices_integrations_count_get**
> Count company_managed_devices_integrations_count_get(opts)



Get Managed Devices Integrations Count

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_managed_devices_integrations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_count_get: #{e}"
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



# **company_managed_devices_integrations_get**
> Array&lt;ManagedDevicesIntegration&gt; company_managed_devices_integrations_get(opts)



Get Managed Devices Integrations

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_managed_devices_integrations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_get: #{e}"
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

[**Array&lt;ManagedDevicesIntegration&gt;**](ManagedDevicesIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_delete**
> company_managed_devices_integrations_id_delete(id)



Delete Managed Devices Integration By Id

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

id = 56 # Integer | 


begin
  api_instance.company_managed_devices_integrations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_id_delete: #{e}"
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



# **company_managed_devices_integrations_id_get**
> ManagedDevicesIntegration company_managed_devices_integrations_id_get(id)



Get Managed Devices Integration By Id

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_patch**
> ManagedDevicesIntegration company_managed_devices_integrations_id_patch(id, operations)



Update Managed Devices Integration

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_managed_devices_integrations_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_put**
> ManagedDevicesIntegration company_managed_devices_integrations_id_put(id, managed_devices_integration)



Replace Managed Devices Integration

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

id = 56 # Integer | 

managed_devices_integration = ConnectWise::ManagedDevicesIntegration.new # ManagedDevicesIntegration | 


begin
  result = api_instance.company_managed_devices_integrations_id_put(id, managed_devices_integration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **managed_devices_integration** | [**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)|  | 

### Return type

[**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_post**
> ManagedDevicesIntegration company_managed_devices_integrations_post(managed_devices_integration)



Create Managed Devices Integration

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

api_instance = ConnectWise::ManagedDevicesIntegrationsApi.new

managed_devices_integration = ConnectWise::ManagedDevicesIntegration.new # ManagedDevicesIntegration | 


begin
  result = api_instance.company_managed_devices_integrations_post(managed_devices_integration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationsApi->company_managed_devices_integrations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **managed_devices_integration** | [**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)|  | 

### Return type

[**ManagedDevicesIntegration**](ManagedDevicesIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




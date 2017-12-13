# ConnectWise::PortalConfigurationServiceSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_id_service_setups_count_get**](PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_count_get) | **GET** /system/portalConfigurations/{id}/serviceSetups/count | 
[**system_portal_configurations_id_service_setups_get**](PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_get) | **GET** /system/portalConfigurations/{id}/serviceSetups | 
[**system_portal_configurations_id_service_setups_service_setup_id_get**](PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_get) | **GET** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} | 
[**system_portal_configurations_id_service_setups_service_setup_id_patch**](PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} | 
[**system_portal_configurations_id_service_setups_service_setup_id_put**](PortalConfigurationServiceSetupsApi.md#system_portal_configurations_id_service_setups_service_setup_id_put) | **PUT** /system/portalConfigurations/{id}/serviceSetups/{serviceSetupId} | 


# **system_portal_configurations_id_service_setups_count_get**
> Count system_portal_configurations_id_service_setups_count_get(id, opts)



Get Service Setups Count

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

api_instance = ConnectWise::PortalConfigurationServiceSetupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_configurations_id_service_setups_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationServiceSetupsApi->system_portal_configurations_id_service_setups_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_service_setups_get**
> Array&lt;PortalConfigurationServiceSetup&gt; system_portal_configurations_id_service_setups_get(id, opts)



Get Service Setups

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

api_instance = ConnectWise::PortalConfigurationServiceSetupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_portal_configurations_id_service_setups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationServiceSetupsApi->system_portal_configurations_id_service_setups_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;PortalConfigurationServiceSetup&gt;**](PortalConfigurationServiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_service_setups_service_setup_id_get**
> PortalConfigurationServiceSetup system_portal_configurations_id_service_setups_service_setup_id_get(id, service_setup_id)



Get Service Setup By Id

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

api_instance = ConnectWise::PortalConfigurationServiceSetupsApi.new

id = 56 # Integer | 

service_setup_id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_service_setups_service_setup_id_get(id, service_setup_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationServiceSetupsApi->system_portal_configurations_id_service_setups_service_setup_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_setup_id** | **Integer**|  | 

### Return type

[**PortalConfigurationServiceSetup**](PortalConfigurationServiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_service_setups_service_setup_id_patch**
> PortalConfigurationServiceSetup system_portal_configurations_id_service_setups_service_setup_id_patch(id, service_setup_id, operations)



Update Service Setup

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

api_instance = ConnectWise::PortalConfigurationServiceSetupsApi.new

id = 56 # Integer | 

service_setup_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_service_setups_service_setup_id_patch(id, service_setup_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationServiceSetupsApi->system_portal_configurations_id_service_setups_service_setup_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_setup_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationServiceSetup**](PortalConfigurationServiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_service_setups_service_setup_id_put**
> PortalConfigurationServiceSetup system_portal_configurations_id_service_setups_service_setup_id_put(id, service_setup_id, portal_configuration_service_setup)



Replace Service Setup

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

api_instance = ConnectWise::PortalConfigurationServiceSetupsApi.new

id = 56 # Integer | 

service_setup_id = 56 # Integer | 

portal_configuration_service_setup = ConnectWise::PortalConfigurationServiceSetup.new # PortalConfigurationServiceSetup | 


begin
  result = api_instance.system_portal_configurations_id_service_setups_service_setup_id_put(id, service_setup_id, portal_configuration_service_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationServiceSetupsApi->system_portal_configurations_id_service_setups_service_setup_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_setup_id** | **Integer**|  | 
 **portal_configuration_service_setup** | [**PortalConfigurationServiceSetup**](PortalConfigurationServiceSetup.md)|  | 

### Return type

[**PortalConfigurationServiceSetup**](PortalConfigurationServiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




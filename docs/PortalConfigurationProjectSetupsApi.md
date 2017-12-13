# ConnectWise::PortalConfigurationProjectSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_id_project_setups_count_get**](PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_count_get) | **GET** /system/portalConfigurations/{id}/projectSetups/count | 
[**system_portal_configurations_id_project_setups_get**](PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_get) | **GET** /system/portalConfigurations/{id}/projectSetups | 
[**system_portal_configurations_id_project_setups_portal_configuration_id_get**](PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_get) | **GET** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} | 
[**system_portal_configurations_id_project_setups_portal_configuration_id_patch**](PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_patch) | **PATCH** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} | 
[**system_portal_configurations_id_project_setups_portal_configuration_id_put**](PortalConfigurationProjectSetupsApi.md#system_portal_configurations_id_project_setups_portal_configuration_id_put) | **PUT** /system/portalConfigurations/{id}/projectSetups/{portalConfigurationId} | 


# **system_portal_configurations_id_project_setups_count_get**
> Count system_portal_configurations_id_project_setups_count_get(id, opts)



Get Portal Configuration Project Setups Count

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

api_instance = ConnectWise::PortalConfigurationProjectSetupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_configurations_id_project_setups_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationProjectSetupsApi->system_portal_configurations_id_project_setups_count_get: #{e}"
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



# **system_portal_configurations_id_project_setups_get**
> Array&lt;PortalConfigurationProjectSetup&gt; system_portal_configurations_id_project_setups_get(id, opts)



Get Portal Configuration Project Setups

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

api_instance = ConnectWise::PortalConfigurationProjectSetupsApi.new

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
  result = api_instance.system_portal_configurations_id_project_setups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationProjectSetupsApi->system_portal_configurations_id_project_setups_get: #{e}"
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

[**Array&lt;PortalConfigurationProjectSetup&gt;**](PortalConfigurationProjectSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_project_setups_portal_configuration_id_get**
> PortalConfigurationProjectSetup system_portal_configurations_id_project_setups_portal_configuration_id_get(id, portal_configuration_id)



Get Portal Configuration Project Setup By Id

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

api_instance = ConnectWise::PortalConfigurationProjectSetupsApi.new

id = 56 # Integer | 

portal_configuration_id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_project_setups_portal_configuration_id_get(id, portal_configuration_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationProjectSetupsApi->system_portal_configurations_id_project_setups_portal_configuration_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration_id** | **Integer**|  | 

### Return type

[**PortalConfigurationProjectSetup**](PortalConfigurationProjectSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_project_setups_portal_configuration_id_patch**
> PortalConfigurationProjectSetup system_portal_configurations_id_project_setups_portal_configuration_id_patch(id, portal_configuration_id, operations)



Update Portal Configuration Project Setup

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

api_instance = ConnectWise::PortalConfigurationProjectSetupsApi.new

id = 56 # Integer | 

portal_configuration_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_project_setups_portal_configuration_id_patch(id, portal_configuration_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationProjectSetupsApi->system_portal_configurations_id_project_setups_portal_configuration_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationProjectSetup**](PortalConfigurationProjectSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_project_setups_portal_configuration_id_put**
> PortalConfigurationProjectSetup system_portal_configurations_id_project_setups_portal_configuration_id_put(id, portal_configuration_id, portal_configuration_project_setup)



Replace Portal Configuration Project Setup

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

api_instance = ConnectWise::PortalConfigurationProjectSetupsApi.new

id = 56 # Integer | 

portal_configuration_id = 56 # Integer | 

portal_configuration_project_setup = ConnectWise::PortalConfigurationProjectSetup.new # PortalConfigurationProjectSetup | 


begin
  result = api_instance.system_portal_configurations_id_project_setups_portal_configuration_id_put(id, portal_configuration_id, portal_configuration_project_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationProjectSetupsApi->system_portal_configurations_id_project_setups_portal_configuration_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration_id** | **Integer**|  | 
 **portal_configuration_project_setup** | [**PortalConfigurationProjectSetup**](PortalConfigurationProjectSetup.md)|  | 

### Return type

[**PortalConfigurationProjectSetup**](PortalConfigurationProjectSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




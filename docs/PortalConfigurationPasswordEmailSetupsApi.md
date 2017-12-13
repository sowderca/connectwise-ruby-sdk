# ConnectWise::PortalConfigurationPasswordEmailSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_id_password_email_setups_get**](PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_get) | **GET** /system/portalConfigurations/{id}/passwordEmailSetups | 
[**system_portal_configurations_id_password_email_setups_password_email_setup_id_get**](PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_get) | **GET** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} | 
[**system_portal_configurations_id_password_email_setups_password_email_setup_id_patch**](PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} | 
[**system_portal_configurations_id_password_email_setups_password_email_setup_id_put**](PortalConfigurationPasswordEmailSetupsApi.md#system_portal_configurations_id_password_email_setups_password_email_setup_id_put) | **PUT** /system/portalConfigurations/{id}/passwordEmailSetups/{passwordEmailSetupId} | 


# **system_portal_configurations_id_password_email_setups_get**
> Array&lt;PortalConfigurationPasswordEmailSetup&gt; system_portal_configurations_id_password_email_setups_get(id, opts)



Get Portal Configuration Password Email Setup

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

api_instance = ConnectWise::PortalConfigurationPasswordEmailSetupsApi.new

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
  result = api_instance.system_portal_configurations_id_password_email_setups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationPasswordEmailSetupsApi->system_portal_configurations_id_password_email_setups_get: #{e}"
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

[**Array&lt;PortalConfigurationPasswordEmailSetup&gt;**](PortalConfigurationPasswordEmailSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_password_email_setups_password_email_setup_id_get**
> PortalConfigurationPasswordEmailSetup system_portal_configurations_id_password_email_setups_password_email_setup_id_get(id, password_email_setup_id)



Get Portal Configuration Password Email Setup

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

api_instance = ConnectWise::PortalConfigurationPasswordEmailSetupsApi.new

id = 56 # Integer | 

password_email_setup_id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_password_email_setups_password_email_setup_id_get(id, password_email_setup_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationPasswordEmailSetupsApi->system_portal_configurations_id_password_email_setups_password_email_setup_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **password_email_setup_id** | **Integer**|  | 

### Return type

[**PortalConfigurationPasswordEmailSetup**](PortalConfigurationPasswordEmailSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_password_email_setups_password_email_setup_id_patch**
> PortalConfigurationPasswordEmailSetup system_portal_configurations_id_password_email_setups_password_email_setup_id_patch(id, password_email_setup_id, operations)



Update Portal Configuration Password Email Setup

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

api_instance = ConnectWise::PortalConfigurationPasswordEmailSetupsApi.new

id = 56 # Integer | 

password_email_setup_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_password_email_setups_password_email_setup_id_patch(id, password_email_setup_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationPasswordEmailSetupsApi->system_portal_configurations_id_password_email_setups_password_email_setup_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **password_email_setup_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationPasswordEmailSetup**](PortalConfigurationPasswordEmailSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_password_email_setups_password_email_setup_id_put**
> PortalConfigurationPasswordEmailSetup system_portal_configurations_id_password_email_setups_password_email_setup_id_put(id, password_email_setup_id, password_email_setup)



Replace Portal Configuration Password Email Setup

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

api_instance = ConnectWise::PortalConfigurationPasswordEmailSetupsApi.new

id = 56 # Integer | 

password_email_setup_id = 56 # Integer | 

password_email_setup = ConnectWise::PortalConfigurationPasswordEmailSetup.new # PortalConfigurationPasswordEmailSetup | 


begin
  result = api_instance.system_portal_configurations_id_password_email_setups_password_email_setup_id_put(id, password_email_setup_id, password_email_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationPasswordEmailSetupsApi->system_portal_configurations_id_password_email_setups_password_email_setup_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **password_email_setup_id** | **Integer**|  | 
 **password_email_setup** | [**PortalConfigurationPasswordEmailSetup**](PortalConfigurationPasswordEmailSetup.md)|  | 

### Return type

[**PortalConfigurationPasswordEmailSetup**](PortalConfigurationPasswordEmailSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::PortalConfigurationOpportunitySetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_id_opportunity_setups_get**](PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_get) | **GET** /system/portalConfigurations/{id}/opportunitySetups | 
[**system_portal_configurations_id_opportunity_setups_patch**](PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_patch) | **PATCH** /system/portalConfigurations/{id}/opportunitySetups | 
[**system_portal_configurations_id_opportunity_setups_portal_configuration_id_get**](PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_portal_configuration_id_get) | **GET** /system/portalConfigurations/{id}/opportunitySetups/{portalConfigurationId} | 
[**system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch**](PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch) | **PATCH** /system/portalConfigurations/{id}/opportunitySetups/{portalConfigurationId} | 
[**system_portal_configurations_id_opportunity_setups_put**](PortalConfigurationOpportunitySetupsApi.md#system_portal_configurations_id_opportunity_setups_put) | **PUT** /system/portalConfigurations/{id}/opportunitySetups | 


# **system_portal_configurations_id_opportunity_setups_get**
> Array&lt;PortalConfigurationOpportunitySetup&gt; system_portal_configurations_id_opportunity_setups_get(id, opts)



Get Portal Configuration Opportunity Setup

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

api_instance = ConnectWise::PortalConfigurationOpportunitySetupsApi.new

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
  result = api_instance.system_portal_configurations_id_opportunity_setups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationOpportunitySetupsApi->system_portal_configurations_id_opportunity_setups_get: #{e}"
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

[**Array&lt;PortalConfigurationOpportunitySetup&gt;**](PortalConfigurationOpportunitySetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_opportunity_setups_patch**
> PortalConfigurationOpportunitySetup system_portal_configurations_id_opportunity_setups_patch(id, operations)



Update Portal Configuration Opportunity Setup

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

api_instance = ConnectWise::PortalConfigurationOpportunitySetupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_opportunity_setups_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationOpportunitySetupsApi->system_portal_configurations_id_opportunity_setups_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationOpportunitySetup**](PortalConfigurationOpportunitySetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_opportunity_setups_portal_configuration_id_get**
> PortalConfigurationOpportunitySetup system_portal_configurations_id_opportunity_setups_portal_configuration_id_get(id, portal_configuration_id)



Get Portal Configuration Opportunity Setup By Id

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

api_instance = ConnectWise::PortalConfigurationOpportunitySetupsApi.new

id = 56 # Integer | 

portal_configuration_id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_opportunity_setups_portal_configuration_id_get(id, portal_configuration_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationOpportunitySetupsApi->system_portal_configurations_id_opportunity_setups_portal_configuration_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration_id** | **Integer**|  | 

### Return type

[**PortalConfigurationOpportunitySetup**](PortalConfigurationOpportunitySetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch**
> PortalConfigurationOpportunitySetup system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch(id, portal_configuration_id, operations)



Update Portal Configuration Opportunity Setup By Id

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

api_instance = ConnectWise::PortalConfigurationOpportunitySetupsApi.new

id = 56 # Integer | 

portal_configuration_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch(id, portal_configuration_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationOpportunitySetupsApi->system_portal_configurations_id_opportunity_setups_portal_configuration_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_configuration_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationOpportunitySetup**](PortalConfigurationOpportunitySetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_opportunity_setups_put**
> PortalConfigurationOpportunitySetup system_portal_configurations_id_opportunity_setups_put(id, opportunity_setup)



Replace Portal Configuration Opportunity Setup

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

api_instance = ConnectWise::PortalConfigurationOpportunitySetupsApi.new

id = 56 # Integer | 

opportunity_setup = ConnectWise::PortalConfigurationOpportunitySetup.new # PortalConfigurationOpportunitySetup | 


begin
  result = api_instance.system_portal_configurations_id_opportunity_setups_put(id, opportunity_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationOpportunitySetupsApi->system_portal_configurations_id_opportunity_setups_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **opportunity_setup** | [**PortalConfigurationOpportunitySetup**](PortalConfigurationOpportunitySetup.md)|  | 

### Return type

[**PortalConfigurationOpportunitySetup**](PortalConfigurationOpportunitySetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




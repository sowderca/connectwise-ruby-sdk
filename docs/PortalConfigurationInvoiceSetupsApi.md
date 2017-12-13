# ConnectWise::PortalConfigurationInvoiceSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_configurations_id_invoice_setups_count_get**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_count_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups/count | 
[**system_portal_configurations_id_invoice_setups_get**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups | 
[**system_portal_configurations_id_invoice_setups_invoice_setup_id_get**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_get) | **GET** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} | 
[**system_portal_configurations_id_invoice_setups_invoice_setup_id_patch**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_patch) | **PATCH** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} | 
[**system_portal_configurations_id_invoice_setups_invoice_setup_id_put**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_put) | **PUT** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId} | 
[**system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post**](PortalConfigurationInvoiceSetupsApi.md#system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post) | **POST** /system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}/testTransaction | 


# **system_portal_configurations_id_invoice_setups_count_get**
> Count system_portal_configurations_id_invoice_setups_count_get(id, opts)



Get Portal Configuration Invoice Setup Count

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_configurations_id_invoice_setups_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_count_get: #{e}"
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



# **system_portal_configurations_id_invoice_setups_get**
> Array&lt;PortalConfigurationInvoiceSetup&gt; system_portal_configurations_id_invoice_setups_get(id, opts)



Get Portal Configuration Invoice Setup

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

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
  result = api_instance.system_portal_configurations_id_invoice_setups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_get: #{e}"
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

[**Array&lt;PortalConfigurationInvoiceSetup&gt;**](PortalConfigurationInvoiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_invoice_setups_invoice_setup_id_get**
> PortalConfigurationInvoiceSetup system_portal_configurations_id_invoice_setups_invoice_setup_id_get(id, invoice_setup_id)



Get Portal Configuration Invoice Setup By Id

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

id = 56 # Integer | 

invoice_setup_id = 56 # Integer | 


begin
  result = api_instance.system_portal_configurations_id_invoice_setups_invoice_setup_id_get(id, invoice_setup_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_invoice_setup_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice_setup_id** | **Integer**|  | 

### Return type

[**PortalConfigurationInvoiceSetup**](PortalConfigurationInvoiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_configurations_id_invoice_setups_invoice_setup_id_patch**
> PortalConfigurationInvoiceSetup system_portal_configurations_id_invoice_setups_invoice_setup_id_patch(id, invoice_setup_id, operations)



Update Portal Configuration Invoice Setup

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

id = 56 # Integer | 

invoice_setup_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_configurations_id_invoice_setups_invoice_setup_id_patch(id, invoice_setup_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_invoice_setup_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice_setup_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalConfigurationInvoiceSetup**](PortalConfigurationInvoiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_invoice_setups_invoice_setup_id_put**
> PortalConfigurationInvoiceSetup system_portal_configurations_id_invoice_setups_invoice_setup_id_put(id, invoice_setup_id, portal_configuration_invoice_setup)



Replace Portal Configuration Invoice Setup

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

id = 56 # Integer | 

invoice_setup_id = 56 # Integer | 

portal_configuration_invoice_setup = ConnectWise::PortalConfigurationInvoiceSetup.new # PortalConfigurationInvoiceSetup | 


begin
  result = api_instance.system_portal_configurations_id_invoice_setups_invoice_setup_id_put(id, invoice_setup_id, portal_configuration_invoice_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_invoice_setup_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice_setup_id** | **Integer**|  | 
 **portal_configuration_invoice_setup** | [**PortalConfigurationInvoiceSetup**](PortalConfigurationInvoiceSetup.md)|  | 

### Return type

[**PortalConfigurationInvoiceSetup**](PortalConfigurationInvoiceSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post**
> SuccessResponse system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post(id, invoice_setup_id, portal_configuration_invoice_setup)



Test Transaction

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

api_instance = ConnectWise::PortalConfigurationInvoiceSetupsApi.new

id = 56 # Integer | 

invoice_setup_id = 56 # Integer | 

portal_configuration_invoice_setup = ConnectWise::PortalConfigurationInvoiceSetup.new # PortalConfigurationInvoiceSetup | 


begin
  result = api_instance.system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post(id, invoice_setup_id, portal_configuration_invoice_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalConfigurationInvoiceSetupsApi->system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice_setup_id** | **Integer**|  | 
 **portal_configuration_invoice_setup** | [**PortalConfigurationInvoiceSetup**](PortalConfigurationInvoiceSetup.md)|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




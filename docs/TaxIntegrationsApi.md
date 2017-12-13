# ConnectWise::TaxIntegrationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_tax_integrations_count_get**](TaxIntegrationsApi.md#system_tax_integrations_count_get) | **GET** /system/taxIntegrations/count | 
[**system_tax_integrations_get**](TaxIntegrationsApi.md#system_tax_integrations_get) | **GET** /system/taxIntegrations | 
[**system_tax_integrations_id_get**](TaxIntegrationsApi.md#system_tax_integrations_id_get) | **GET** /system/taxIntegrations/{id} | 


# **system_tax_integrations_count_get**
> Count system_tax_integrations_count_get(opts)



Get Tax Integrations Count

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

api_instance = ConnectWise::TaxIntegrationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_tax_integrations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxIntegrationsApi->system_tax_integrations_count_get: #{e}"
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



# **system_tax_integrations_get**
> Array&lt;TaxIntegration&gt; system_tax_integrations_get(opts)



Get Tax Integrations

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

api_instance = ConnectWise::TaxIntegrationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_tax_integrations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxIntegrationsApi->system_tax_integrations_get: #{e}"
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

[**Array&lt;TaxIntegration&gt;**](TaxIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_tax_integrations_id_get**
> TaxIntegration system_tax_integrations_id_get(id)



Get Tax Integration By Id

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

api_instance = ConnectWise::TaxIntegrationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_tax_integrations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxIntegrationsApi->system_tax_integrations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TaxIntegration**](TaxIntegration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




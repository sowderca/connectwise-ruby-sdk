# ConnectWise::ManagedDevicesIntegrationCrossReferencesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_managed_devices_integrations_id_cross_references_count_get**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_count_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences/count | 
[**company_managed_devices_integrations_id_cross_references_cross_reference_id_delete**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} | 
[**company_managed_devices_integrations_id_cross_references_cross_reference_id_get**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} | 
[**company_managed_devices_integrations_id_cross_references_cross_reference_id_patch**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} | 
[**company_managed_devices_integrations_id_cross_references_cross_reference_id_put**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_cross_reference_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID} | 
[**company_managed_devices_integrations_id_cross_references_get**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_get) | **GET** /company/managedDevicesIntegrations/{id}/crossReferences | 
[**company_managed_devices_integrations_id_cross_references_post**](ManagedDevicesIntegrationCrossReferencesApi.md#company_managed_devices_integrations_id_cross_references_post) | **POST** /company/managedDevicesIntegrations/{id}/crossReferences | 


# **company_managed_devices_integrations_id_cross_references_count_get**
> Count company_managed_devices_integrations_id_cross_references_count_get(id, opts)



Get Cross Reference Count

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_count_get: #{e}"
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



# **company_managed_devices_integrations_id_cross_references_cross_reference_id_delete**
> ManagedDevicesIntegrationCrossReference company_managed_devices_integrations_id_cross_references_cross_reference_id_delete(id, cross_reference_id)



Delete Cross Reference

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

cross_reference_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_cross_reference_id_delete(id, cross_reference_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_cross_reference_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cross_reference_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_cross_references_cross_reference_id_get**
> ManagedDevicesIntegrationCrossReference company_managed_devices_integrations_id_cross_references_cross_reference_id_get(id, cross_reference_id)



Get Cross Reference By Id

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

cross_reference_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_cross_reference_id_get(id, cross_reference_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_cross_reference_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cross_reference_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_cross_references_cross_reference_id_patch**
> ManagedDevicesIntegrationCrossReference company_managed_devices_integrations_id_cross_references_cross_reference_id_patch(id, cross_reference_id, operations)



Update Cross Reference

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

cross_reference_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_cross_reference_id_patch(id, cross_reference_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_cross_reference_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cross_reference_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_cross_references_cross_reference_id_put**
> ManagedDevicesIntegrationCrossReference company_managed_devices_integrations_id_cross_references_cross_reference_id_put(id, cross_reference_id, cross_reference)



Replace Cross Reference

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

cross_reference_id = 56 # Integer | 

cross_reference = ConnectWise::ManagedDevicesIntegrationCrossReference.new # ManagedDevicesIntegrationCrossReference | 


begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_cross_reference_id_put(id, cross_reference_id, cross_reference)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_cross_reference_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cross_reference_id** | **Integer**|  | 
 **cross_reference** | [**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)|  | 

### Return type

[**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_cross_references_get**
> Array&lt;ManagedDevicesIntegrationCrossReference&gt; company_managed_devices_integrations_id_cross_references_get(id, opts)



Get Cross Reference

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

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
  result = api_instance.company_managed_devices_integrations_id_cross_references_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_get: #{e}"
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

[**Array&lt;ManagedDevicesIntegrationCrossReference&gt;**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_cross_references_post**
> ManagedDevicesIntegrationCrossReference company_managed_devices_integrations_id_cross_references_post(id, cross_reference)



Create Cross Reference

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

api_instance = ConnectWise::ManagedDevicesIntegrationCrossReferencesApi.new

id = 56 # Integer | 

cross_reference = ConnectWise::ManagedDevicesIntegrationCrossReference.new # ManagedDevicesIntegrationCrossReference | 


begin
  result = api_instance.company_managed_devices_integrations_id_cross_references_post(id, cross_reference)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationCrossReferencesApi->company_managed_devices_integrations_id_cross_references_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cross_reference** | [**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)|  | 

### Return type

[**ManagedDevicesIntegrationCrossReference**](ManagedDevicesIntegrationCrossReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




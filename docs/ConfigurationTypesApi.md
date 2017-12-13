# ConnectWise::ConfigurationTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_configurations_types_count_get**](ConfigurationTypesApi.md#company_configurations_types_count_get) | **GET** /company/configurations/types/count | 
[**company_configurations_types_get**](ConfigurationTypesApi.md#company_configurations_types_get) | **GET** /company/configurations/types | 
[**company_configurations_types_id_delete**](ConfigurationTypesApi.md#company_configurations_types_id_delete) | **DELETE** /company/configurations/types/{id} | 
[**company_configurations_types_id_get**](ConfigurationTypesApi.md#company_configurations_types_id_get) | **GET** /company/configurations/types/{id} | 
[**company_configurations_types_id_patch**](ConfigurationTypesApi.md#company_configurations_types_id_patch) | **PATCH** /company/configurations/types/{id} | 
[**company_configurations_types_id_put**](ConfigurationTypesApi.md#company_configurations_types_id_put) | **PUT** /company/configurations/types/{id} | 
[**company_configurations_types_post**](ConfigurationTypesApi.md#company_configurations_types_post) | **POST** /company/configurations/types | 


# **company_configurations_types_count_get**
> Count company_configurations_types_count_get(opts)



Get Configuration Types Count

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

api_instance = ConnectWise::ConfigurationTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_configurations_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_count_get: #{e}"
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



# **company_configurations_types_get**
> Array&lt;ConfigurationType&gt; company_configurations_types_get(opts)



Get Configuration Types

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

api_instance = ConnectWise::ConfigurationTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_get: #{e}"
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

[**Array&lt;ConfigurationType&gt;**](ConfigurationType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_id_delete**
> company_configurations_types_id_delete(id)



Delete Configuration Type By Id

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

api_instance = ConnectWise::ConfigurationTypesApi.new

id = 56 # Integer | 


begin
  api_instance.company_configurations_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_id_delete: #{e}"
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



# **company_configurations_types_id_get**
> ConfigurationType company_configurations_types_id_get(id)



Get Configuration Type By Id

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

api_instance = ConnectWise::ConfigurationTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_configurations_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ConfigurationType**](ConfigurationType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_id_patch**
> ConfigurationType company_configurations_types_id_patch(id, operations)



Update Configuration Type

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

api_instance = ConnectWise::ConfigurationTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_configurations_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ConfigurationType**](ConfigurationType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_id_put**
> ConfigurationType company_configurations_types_id_put(id, configuration_type)



Replace Configuration Type

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

api_instance = ConnectWise::ConfigurationTypesApi.new

id = 56 # Integer | 

configuration_type = ConnectWise::ConfigurationType.new # ConfigurationType | 


begin
  result = api_instance.company_configurations_types_id_put(id, configuration_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration_type** | [**ConfigurationType**](ConfigurationType.md)|  | 

### Return type

[**ConfigurationType**](ConfigurationType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_post**
> ConfigurationType company_configurations_types_post(configuration_type)



Create Configuration Type

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

api_instance = ConnectWise::ConfigurationTypesApi.new

configuration_type = ConnectWise::ConfigurationType.new # ConfigurationType | 


begin
  result = api_instance.company_configurations_types_post(configuration_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypesApi->company_configurations_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_type** | [**ConfigurationType**](ConfigurationType.md)|  | 

### Return type

[**ConfigurationType**](ConfigurationType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




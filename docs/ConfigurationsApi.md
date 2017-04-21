# ConnectWise::ConfigurationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_configurations_count_get**](ConfigurationsApi.md#company_configurations_count_get) | **GET** /company/configurations/count | 
[**company_configurations_get**](ConfigurationsApi.md#company_configurations_get) | **GET** /company/configurations | 
[**company_configurations_id_delete**](ConfigurationsApi.md#company_configurations_id_delete) | **DELETE** /company/configurations/{id} | 
[**company_configurations_id_get**](ConfigurationsApi.md#company_configurations_id_get) | **GET** /company/configurations/{id} | 
[**company_configurations_id_patch**](ConfigurationsApi.md#company_configurations_id_patch) | **PATCH** /company/configurations/{id} | 
[**company_configurations_id_put**](ConfigurationsApi.md#company_configurations_id_put) | **PUT** /company/configurations/{id} | 
[**company_configurations_post**](ConfigurationsApi.md#company_configurations_post) | **POST** /company/configurations | 


# **company_configurations_count_get**
> Count company_configurations_count_get(opts)



Get Configurations Count

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

api_instance = ConnectWise::ConfigurationsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  managed_identifier: "managed_identifier_example", # String | 
}

begin
  result = api_instance.company_configurations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **managed_identifier** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_get**
> Array&lt;Configuration&gt; company_configurations_get(opts)



Get Configurations

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

api_instance = ConnectWise::ConfigurationsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
  managed_identifier: "managed_identifier_example", # String | 
}

begin
  result = api_instance.company_configurations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_get: #{e}"
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
 **managed_identifier** | **String**|  | [optional] 

### Return type

[**Array&lt;Configuration&gt;**](Configuration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_id_delete**
> company_configurations_id_delete(id)



Delete Configuration By Id

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

api_instance = ConnectWise::ConfigurationsApi.new

id = 56 # Integer | 


begin
  api_instance.company_configurations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_id_delete: #{e}"
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



# **company_configurations_id_get**
> Configuration company_configurations_id_get(id)



Get Configuration By Id

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

api_instance = ConnectWise::ConfigurationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_configurations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_id_patch**
> Configuration company_configurations_id_patch(id, operations, opts)



Update Configuration

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

api_instance = ConnectWise::ConfigurationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 

opts = { 
  management_solution_name: "management_solution_name_example", # String | 
  managed_identifier: "managed_identifier_example", # String | 
  type: "type_example", # String | 
  level: "level_example", # String | 
  child_configurations_matching_on: "child_configurations_matching_on_example", # String | 
  inactivate_configurations_matching_on: "inactivate_configurations_matching_on_example", # String | 
  inactive_configuration_status_id: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_id_patch(id, operations, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 
 **management_solution_name** | **String**|  | [optional] 
 **managed_identifier** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **child_configurations_matching_on** | **String**|  | [optional] 
 **inactivate_configurations_matching_on** | **String**|  | [optional] 
 **inactive_configuration_status_id** | **Integer**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_id_put**
> Configuration company_configurations_id_put(id, configuration, opts)



Replace Configuration

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

api_instance = ConnectWise::ConfigurationsApi.new

id = 56 # Integer | 

configuration = ConnectWise::Configuration.new # Configuration | 

opts = { 
  management_solution_name: "management_solution_name_example", # String | 
  managed_identifier: "managed_identifier_example", # String | 
  type: "type_example", # String | 
  level: "level_example", # String | 
  child_configurations_matching_on: "child_configurations_matching_on_example", # String | 
  inactivate_configurations_matching_on: "inactivate_configurations_matching_on_example", # String | 
  inactive_configuration_status_id: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_id_put(id, configuration, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration** | [**Configuration**](Configuration.md)|  | 
 **management_solution_name** | **String**|  | [optional] 
 **managed_identifier** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **child_configurations_matching_on** | **String**|  | [optional] 
 **inactivate_configurations_matching_on** | **String**|  | [optional] 
 **inactive_configuration_status_id** | **Integer**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_post**
> Configuration company_configurations_post(configuration, opts)



Create Configuration

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

api_instance = ConnectWise::ConfigurationsApi.new

configuration = ConnectWise::Configuration.new # Configuration | 

opts = { 
  management_solution_name: "management_solution_name_example", # String | 
  managed_identifier: "managed_identifier_example", # String | 
  type: "type_example", # String | 
  level: "level_example", # String | 
  child_configurations_matching_on: "child_configurations_matching_on_example", # String | 
  inactivate_configurations_matching_on: "inactivate_configurations_matching_on_example", # String | 
  inactive_configuration_status_id: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_post(configuration, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationsApi->company_configurations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration** | [**Configuration**](Configuration.md)|  | 
 **management_solution_name** | **String**|  | [optional] 
 **managed_identifier** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 
 **level** | **String**|  | [optional] 
 **child_configurations_matching_on** | **String**|  | [optional] 
 **inactivate_configurations_matching_on** | **String**|  | [optional] 
 **inactive_configuration_status_id** | **Integer**|  | [optional] 

### Return type

[**Configuration**](Configuration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ConfigurationStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_configurations_statuses_count_get**](ConfigurationStatusesApi.md#company_configurations_statuses_count_get) | **GET** /company/configurations/statuses/count | 
[**company_configurations_statuses_get**](ConfigurationStatusesApi.md#company_configurations_statuses_get) | **GET** /company/configurations/statuses | 
[**company_configurations_statuses_id_delete**](ConfigurationStatusesApi.md#company_configurations_statuses_id_delete) | **DELETE** /company/configurations/statuses/{id} | 
[**company_configurations_statuses_id_get**](ConfigurationStatusesApi.md#company_configurations_statuses_id_get) | **GET** /company/configurations/statuses/{id} | 
[**company_configurations_statuses_id_patch**](ConfigurationStatusesApi.md#company_configurations_statuses_id_patch) | **PATCH** /company/configurations/statuses/{id} | 
[**company_configurations_statuses_id_put**](ConfigurationStatusesApi.md#company_configurations_statuses_id_put) | **PUT** /company/configurations/statuses/{id} | 
[**company_configurations_statuses_post**](ConfigurationStatusesApi.md#company_configurations_statuses_post) | **POST** /company/configurations/statuses | 


# **company_configurations_statuses_count_get**
> Count company_configurations_statuses_count_get(opts)



Get Configuration Statuses Count

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_configurations_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_count_get: #{e}"
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



# **company_configurations_statuses_get**
> Array&lt;ConfigurationStatus&gt; company_configurations_statuses_get(opts)



Get Configuration Statuses

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_get: #{e}"
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

[**Array&lt;ConfigurationStatus&gt;**](ConfigurationStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_statuses_id_delete**
> company_configurations_statuses_id_delete(id)



Delete Configuration Status By Id

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.company_configurations_statuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_id_delete: #{e}"
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



# **company_configurations_statuses_id_get**
> ConfigurationStatus company_configurations_statuses_id_get(id)



Get Configuration Status By Id

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_configurations_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ConfigurationStatus**](ConfigurationStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_statuses_id_patch**
> ConfigurationStatus company_configurations_statuses_id_patch(id, operations)



Update Configuration Status

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_configurations_statuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ConfigurationStatus**](ConfigurationStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_statuses_id_put**
> ConfigurationStatus company_configurations_statuses_id_put(id, configuration_status)



Replace Configuration Status

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

id = 56 # Integer | 

configuration_status = ConnectWise::ConfigurationStatus.new # ConfigurationStatus | 


begin
  result = api_instance.company_configurations_statuses_id_put(id, configuration_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration_status** | [**ConfigurationStatus**](ConfigurationStatus.md)|  | 

### Return type

[**ConfigurationStatus**](ConfigurationStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_statuses_post**
> ConfigurationStatus company_configurations_statuses_post(configuration_status)



Create Configuration Status

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

api_instance = ConnectWise::ConfigurationStatusesApi.new

configuration_status = ConnectWise::ConfigurationStatus.new # ConfigurationStatus | 


begin
  result = api_instance.company_configurations_statuses_post(configuration_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationStatusesApi->company_configurations_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_status** | [**ConfigurationStatus**](ConfigurationStatus.md)|  | 

### Return type

[**ConfigurationStatus**](ConfigurationStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




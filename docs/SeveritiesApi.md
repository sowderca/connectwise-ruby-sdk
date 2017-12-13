# ConnectWise::SeveritiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_severities_count_get**](SeveritiesApi.md#service_severities_count_get) | **GET** /service/severities/count | 
[**service_severities_get**](SeveritiesApi.md#service_severities_get) | **GET** /service/severities | 
[**service_severities_id_get**](SeveritiesApi.md#service_severities_id_get) | **GET** /service/severities/{id} | 
[**service_severities_id_patch**](SeveritiesApi.md#service_severities_id_patch) | **PATCH** /service/severities/{id} | 
[**service_severities_id_put**](SeveritiesApi.md#service_severities_id_put) | **PUT** /service/severities/{id} | 


# **service_severities_count_get**
> Count service_severities_count_get(opts)



Get Severities Count

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

api_instance = ConnectWise::SeveritiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_severities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SeveritiesApi->service_severities_count_get: #{e}"
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



# **service_severities_get**
> Array&lt;Severity&gt; service_severities_get(opts)



Get Severities

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

api_instance = ConnectWise::SeveritiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_severities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SeveritiesApi->service_severities_get: #{e}"
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

[**Array&lt;Severity&gt;**](Severity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_severities_id_get**
> Severity service_severities_id_get(id)



Get Severity By Id

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

api_instance = ConnectWise::SeveritiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_severities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SeveritiesApi->service_severities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Severity**](Severity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_severities_id_patch**
> Severity service_severities_id_patch(id, operations)



Update Severity

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

api_instance = ConnectWise::SeveritiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_severities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SeveritiesApi->service_severities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Severity**](Severity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_severities_id_put**
> Severity service_severities_id_put(id, severity)



Replace Severity

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

api_instance = ConnectWise::SeveritiesApi.new

id = 56 # Integer | 

severity = ConnectWise::Severity.new # Severity | 


begin
  result = api_instance.service_severities_id_put(id, severity)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SeveritiesApi->service_severities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **severity** | [**Severity**](Severity.md)|  | 

### Return type

[**Severity**](Severity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




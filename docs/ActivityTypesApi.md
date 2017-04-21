# ConnectWise::ActivityTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_activities_types_count_get**](ActivityTypesApi.md#sales_activities_types_count_get) | **GET** /sales/activities/types/count | 
[**sales_activities_types_get**](ActivityTypesApi.md#sales_activities_types_get) | **GET** /sales/activities/types | 
[**sales_activities_types_id_delete**](ActivityTypesApi.md#sales_activities_types_id_delete) | **DELETE** /sales/activities/types/{id} | 
[**sales_activities_types_id_get**](ActivityTypesApi.md#sales_activities_types_id_get) | **GET** /sales/activities/types/{id} | 
[**sales_activities_types_id_patch**](ActivityTypesApi.md#sales_activities_types_id_patch) | **PATCH** /sales/activities/types/{id} | 
[**sales_activities_types_id_put**](ActivityTypesApi.md#sales_activities_types_id_put) | **PUT** /sales/activities/types/{id} | 
[**sales_activities_types_post**](ActivityTypesApi.md#sales_activities_types_post) | **POST** /sales/activities/types | 


# **sales_activities_types_count_get**
> Count sales_activities_types_count_get(opts)



Get Activity Types Count

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

api_instance = ConnectWise::ActivityTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.sales_activities_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_count_get: #{e}"
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



# **sales_activities_types_get**
> Array&lt;ActivityType&gt; sales_activities_types_get(opts)



Get Activity Types

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

api_instance = ConnectWise::ActivityTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_activities_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_get: #{e}"
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

[**Array&lt;ActivityType&gt;**](ActivityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_types_id_delete**
> sales_activities_types_id_delete(id)



Delete Activity Type By Id

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

api_instance = ConnectWise::ActivityTypesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_activities_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_id_delete: #{e}"
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



# **sales_activities_types_id_get**
> ActivityType sales_activities_types_id_get(id)



Get Activity Type By Id

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

api_instance = ConnectWise::ActivityTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_activities_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ActivityType**](ActivityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_types_id_patch**
> ActivityType sales_activities_types_id_patch(id, operations)



Update Activity Type

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

api_instance = ConnectWise::ActivityTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_activities_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ActivityType**](ActivityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_types_id_put**
> ActivityType sales_activities_types_id_put(id, activity_type)



Replace Activity Type

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

api_instance = ConnectWise::ActivityTypesApi.new

id = 56 # Integer | 

activity_type = ConnectWise::ActivityType.new # ActivityType | 


begin
  result = api_instance.sales_activities_types_id_put(id, activity_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **activity_type** | [**ActivityType**](ActivityType.md)|  | 

### Return type

[**ActivityType**](ActivityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_types_post**
> ActivityType sales_activities_types_post(activity_type)



Create Activity Type

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

api_instance = ConnectWise::ActivityTypesApi.new

activity_type = ConnectWise::ActivityType.new # ActivityType | 


begin
  result = api_instance.sales_activities_types_post(activity_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityTypesApi->sales_activities_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_type** | [**ActivityType**](ActivityType.md)|  | 

### Return type

[**ActivityType**](ActivityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




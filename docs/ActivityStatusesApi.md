# ConnectWise::ActivityStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_activities_statuses_count_get**](ActivityStatusesApi.md#sales_activities_statuses_count_get) | **GET** /sales/activities/statuses/count | 
[**sales_activities_statuses_get**](ActivityStatusesApi.md#sales_activities_statuses_get) | **GET** /sales/activities/statuses | 
[**sales_activities_statuses_id_delete**](ActivityStatusesApi.md#sales_activities_statuses_id_delete) | **DELETE** /sales/activities/statuses/{id} | 
[**sales_activities_statuses_id_get**](ActivityStatusesApi.md#sales_activities_statuses_id_get) | **GET** /sales/activities/statuses/{id} | 
[**sales_activities_statuses_id_patch**](ActivityStatusesApi.md#sales_activities_statuses_id_patch) | **PATCH** /sales/activities/statuses/{id} | 
[**sales_activities_statuses_id_put**](ActivityStatusesApi.md#sales_activities_statuses_id_put) | **PUT** /sales/activities/statuses/{id} | 
[**sales_activities_statuses_post**](ActivityStatusesApi.md#sales_activities_statuses_post) | **POST** /sales/activities/statuses | 


# **sales_activities_statuses_count_get**
> Count sales_activities_statuses_count_get(opts)



Get Activity Statuses Count

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

api_instance = ConnectWise::ActivityStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_activities_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_count_get: #{e}"
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



# **sales_activities_statuses_get**
> Array&lt;ActivityStatus&gt; sales_activities_statuses_get(opts)



Get Activity Statuses

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

api_instance = ConnectWise::ActivityStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_activities_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_get: #{e}"
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

[**Array&lt;ActivityStatus&gt;**](ActivityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_statuses_id_delete**
> sales_activities_statuses_id_delete(id)



Delete Activity Status By Id

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

api_instance = ConnectWise::ActivityStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_activities_statuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_id_delete: #{e}"
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



# **sales_activities_statuses_id_get**
> ActivityStatus sales_activities_statuses_id_get(id)



Get Activity Status By Id

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

api_instance = ConnectWise::ActivityStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_activities_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ActivityStatus**](ActivityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_statuses_id_patch**
> ActivityStatus sales_activities_statuses_id_patch(id, operations)



Update Activity Status

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

api_instance = ConnectWise::ActivityStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_activities_statuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ActivityStatus**](ActivityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_statuses_id_put**
> ActivityStatus sales_activities_statuses_id_put(id, activity_status)



Replace Activity Status

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

api_instance = ConnectWise::ActivityStatusesApi.new

id = 56 # Integer | 

activity_status = ConnectWise::ActivityStatus.new # ActivityStatus | 


begin
  result = api_instance.sales_activities_statuses_id_put(id, activity_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **activity_status** | [**ActivityStatus**](ActivityStatus.md)|  | 

### Return type

[**ActivityStatus**](ActivityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_statuses_post**
> ActivityStatus sales_activities_statuses_post(activity_status)



Create Activity Status

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

api_instance = ConnectWise::ActivityStatusesApi.new

activity_status = ConnectWise::ActivityStatus.new # ActivityStatus | 


begin
  result = api_instance.sales_activities_statuses_post(activity_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivityStatusesApi->sales_activities_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity_status** | [**ActivityStatus**](ActivityStatus.md)|  | 

### Return type

[**ActivityStatus**](ActivityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




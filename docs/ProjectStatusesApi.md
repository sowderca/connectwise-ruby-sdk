# ConnectWise::ProjectStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_statuses_count_get**](ProjectStatusesApi.md#project_statuses_count_get) | **GET** /project/statuses/count | 
[**project_statuses_get**](ProjectStatusesApi.md#project_statuses_get) | **GET** /project/statuses | 
[**project_statuses_id_delete**](ProjectStatusesApi.md#project_statuses_id_delete) | **DELETE** /project/statuses/{id} | 
[**project_statuses_id_get**](ProjectStatusesApi.md#project_statuses_id_get) | **GET** /project/statuses/{id} | 
[**project_statuses_id_patch**](ProjectStatusesApi.md#project_statuses_id_patch) | **PATCH** /project/statuses/{id} | 
[**project_statuses_id_put**](ProjectStatusesApi.md#project_statuses_id_put) | **PUT** /project/statuses/{id} | 
[**project_statuses_post**](ProjectStatusesApi.md#project_statuses_post) | **POST** /project/statuses | 


# **project_statuses_count_get**
> Count project_statuses_count_get(opts)



Get Project Statuses Count

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

api_instance = ConnectWise::ProjectStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.project_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_count_get: #{e}"
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



# **project_statuses_get**
> Array&lt;ProjectStatus&gt; project_statuses_get(opts)



Get Project Statuses

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

api_instance = ConnectWise::ProjectStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.project_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_get: #{e}"
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

[**Array&lt;ProjectStatus&gt;**](ProjectStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_statuses_id_delete**
> project_statuses_id_delete(id)



Delete Project Status By Id

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

api_instance = ConnectWise::ProjectStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.project_statuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_id_delete: #{e}"
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



# **project_statuses_id_get**
> ProjectStatus project_statuses_id_get(id)



Get Project Status By Id

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

api_instance = ConnectWise::ProjectStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.project_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ProjectStatus**](ProjectStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_statuses_id_patch**
> ProjectStatus project_statuses_id_patch(id, operations)



Update Project Status

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

api_instance = ConnectWise::ProjectStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.project_statuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectStatus**](ProjectStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_statuses_id_put**
> ProjectStatus project_statuses_id_put(id, project_status)



Replace Project Status

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

api_instance = ConnectWise::ProjectStatusesApi.new

id = 56 # Integer | 

project_status = ConnectWise::ProjectStatus.new # ProjectStatus | 


begin
  result = api_instance.project_statuses_id_put(id, project_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **project_status** | [**ProjectStatus**](ProjectStatus.md)|  | 

### Return type

[**ProjectStatus**](ProjectStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_statuses_post**
> ProjectStatus project_statuses_post(project_status)



Create Project Status

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

api_instance = ConnectWise::ProjectStatusesApi.new

project_status = ConnectWise::ProjectStatus.new # ProjectStatus | 


begin
  result = api_instance.project_statuses_post(project_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectStatusesApi->project_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_status** | [**ProjectStatus**](ProjectStatus.md)|  | 

### Return type

[**ProjectStatus**](ProjectStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




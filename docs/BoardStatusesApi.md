# ConnectWise::BoardStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_statuses_count_get**](BoardStatusesApi.md#service_boards_id_statuses_count_get) | **GET** /service/boards/{id}/statuses/count | 
[**service_boards_id_statuses_get**](BoardStatusesApi.md#service_boards_id_statuses_get) | **GET** /service/boards/{id}/statuses | 
[**service_boards_id_statuses_post**](BoardStatusesApi.md#service_boards_id_statuses_post) | **POST** /service/boards/{id}/statuses | 
[**service_boards_id_statuses_status_id_delete**](BoardStatusesApi.md#service_boards_id_statuses_status_id_delete) | **DELETE** /service/boards/{id}/statuses/{statusId} | 
[**service_boards_id_statuses_status_id_get**](BoardStatusesApi.md#service_boards_id_statuses_status_id_get) | **GET** /service/boards/{id}/statuses/{statusId} | 
[**service_boards_id_statuses_status_id_patch**](BoardStatusesApi.md#service_boards_id_statuses_status_id_patch) | **PATCH** /service/boards/{id}/statuses/{statusId} | 
[**service_boards_id_statuses_status_id_put**](BoardStatusesApi.md#service_boards_id_statuses_status_id_put) | **PUT** /service/boards/{id}/statuses/{statusId} | 


# **service_boards_id_statuses_count_get**
> Count service_boards_id_statuses_count_get(id, opts)



Get Statuses Count

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_statuses_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_count_get: #{e}"
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



# **service_boards_id_statuses_get**
> Array&lt;BoardStatus&gt; service_boards_id_statuses_get(id, opts)



Get Statuses

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

api_instance = ConnectWise::BoardStatusesApi.new

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
  result = api_instance.service_boards_id_statuses_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_get: #{e}"
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

[**Array&lt;BoardStatus&gt;**](BoardStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_statuses_post**
> BoardStatus service_boards_id_statuses_post(id, board_status)



Create Statuses

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

board_status = ConnectWise::BoardStatus.new # BoardStatus | 


begin
  result = api_instance.service_boards_id_statuses_post(id, board_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_status** | [**BoardStatus**](BoardStatus.md)|  | 

### Return type

[**BoardStatus**](BoardStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_statuses_status_id_delete**
> service_boards_id_statuses_status_id_delete(id, status_id)



Delete Status By Id

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

status_id = 56 # Integer | 


begin
  api_instance.service_boards_id_statuses_status_id_delete(id, status_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_status_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_statuses_status_id_get**
> BoardStatus service_boards_id_statuses_status_id_get(id, status_id)



Get Status By Id

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

status_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_statuses_status_id_get(id, status_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_status_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status_id** | **Integer**|  | 

### Return type

[**BoardStatus**](BoardStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_statuses_status_id_patch**
> BoardStatus service_boards_id_statuses_status_id_patch(id, status_id, operations)



Update Status

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

status_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_statuses_status_id_patch(id, status_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_status_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardStatus**](BoardStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_statuses_status_id_put**
> BoardStatus service_boards_id_statuses_status_id_put(id, status_id, board_status)



Replace Statuses

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

api_instance = ConnectWise::BoardStatusesApi.new

id = 56 # Integer | 

status_id = 56 # Integer | 

board_status = ConnectWise::BoardStatus.new # BoardStatus | 


begin
  result = api_instance.service_boards_id_statuses_status_id_put(id, status_id, board_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusesApi->service_boards_id_statuses_status_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **board_status** | [**BoardStatus**](BoardStatus.md)|  | 

### Return type

[**BoardStatus**](BoardStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




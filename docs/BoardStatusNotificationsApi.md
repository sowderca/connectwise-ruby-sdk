# ConnectWise::BoardStatusNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_board_id_statuses_status_id_notifications_count_get**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_count_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications/count | 
[**service_boards_board_id_statuses_status_id_notifications_get**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications | 
[**service_boards_board_id_statuses_status_id_notifications_id_delete**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_delete) | **DELETE** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} | 
[**service_boards_board_id_statuses_status_id_notifications_id_get**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_get) | **GET** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} | 
[**service_boards_board_id_statuses_status_id_notifications_id_patch**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_patch) | **PATCH** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} | 
[**service_boards_board_id_statuses_status_id_notifications_id_put**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_id_put) | **PUT** /service/boards/{boardId}/statuses/{statusId}/notifications/{id} | 
[**service_boards_board_id_statuses_status_id_notifications_post**](BoardStatusNotificationsApi.md#service_boards_board_id_statuses_status_id_notifications_post) | **POST** /service/boards/{boardId}/statuses/{statusId}/notifications | 


# **service_boards_board_id_statuses_status_id_notifications_count_get**
> Count service_boards_board_id_statuses_status_id_notifications_count_get(board_id, status_id, opts)



Get Board Status Notifications Count

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_count_get(board_id, status_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_statuses_status_id_notifications_get**
> Array&lt;BoardStatusNotification&gt; service_boards_board_id_statuses_status_id_notifications_get(board_id, status_id, opts)



Get Board Status Notifications

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_get(board_id, status_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;BoardStatusNotification&gt;**](BoardStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_statuses_status_id_notifications_id_delete**
> service_boards_board_id_statuses_status_id_notifications_id_delete(board_id, status_id, id)



Delete Board Status Notification By Id

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

id = 56 # Integer | 


begin
  api_instance.service_boards_board_id_statuses_status_id_notifications_id_delete(board_id, status_id, id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_board_id_statuses_status_id_notifications_id_get**
> BoardStatusNotification service_boards_board_id_statuses_status_id_notifications_id_get(board_id, status_id, id)



Get Board Status Notification By Id

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

id = 56 # Integer | 


begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_id_get(board_id, status_id, id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

[**BoardStatusNotification**](BoardStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_board_id_statuses_status_id_notifications_id_patch**
> BoardStatusNotification service_boards_board_id_statuses_status_id_notifications_id_patch(board_id, status_id, id, operations)



Update Board Status Notification

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_id_patch(board_id, status_id, id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardStatusNotification**](BoardStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_board_id_statuses_status_id_notifications_id_put**
> BoardStatusNotification service_boards_board_id_statuses_status_id_notifications_id_put(board_id, status_id, id, board_status_notification)



Replace Board Status Notification

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

id = 56 # Integer | 

board_status_notification = ConnectWise::BoardStatusNotification.new # BoardStatusNotification | 


begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_id_put(board_id, status_id, id, board_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **id** | **Integer**|  | 
 **board_status_notification** | [**BoardStatusNotification**](BoardStatusNotification.md)|  | 

### Return type

[**BoardStatusNotification**](BoardStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_board_id_statuses_status_id_notifications_post**
> BoardStatusNotification service_boards_board_id_statuses_status_id_notifications_post(board_id, status_id, board_status_notification)



Create Board Status Notification

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

api_instance = ConnectWise::BoardStatusNotificationsApi.new

board_id = 56 # Integer | 

status_id = 56 # Integer | 

board_status_notification = ConnectWise::BoardStatusNotification.new # BoardStatusNotification | 


begin
  result = api_instance.service_boards_board_id_statuses_status_id_notifications_post(board_id, status_id, board_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardStatusNotificationsApi->service_boards_board_id_statuses_status_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board_id** | **Integer**|  | 
 **status_id** | **Integer**|  | 
 **board_status_notification** | [**BoardStatusNotification**](BoardStatusNotification.md)|  | 

### Return type

[**BoardStatusNotification**](BoardStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




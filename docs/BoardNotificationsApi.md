# ConnectWise::BoardNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_notifications_count_get**](BoardNotificationsApi.md#service_boards_id_notifications_count_get) | **GET** /service/boards/{id}/notifications/count | 
[**service_boards_id_notifications_get**](BoardNotificationsApi.md#service_boards_id_notifications_get) | **GET** /service/boards/{id}/notifications | 
[**service_boards_id_notifications_notification_id_delete**](BoardNotificationsApi.md#service_boards_id_notifications_notification_id_delete) | **DELETE** /service/boards/{id}/notifications/{notificationId} | 
[**service_boards_id_notifications_notification_id_get**](BoardNotificationsApi.md#service_boards_id_notifications_notification_id_get) | **GET** /service/boards/{id}/notifications/{notificationId} | 
[**service_boards_id_notifications_notification_id_patch**](BoardNotificationsApi.md#service_boards_id_notifications_notification_id_patch) | **PATCH** /service/boards/{id}/notifications/{notificationId} | 
[**service_boards_id_notifications_notification_id_put**](BoardNotificationsApi.md#service_boards_id_notifications_notification_id_put) | **PUT** /service/boards/{id}/notifications/{notificationId} | 
[**service_boards_id_notifications_post**](BoardNotificationsApi.md#service_boards_id_notifications_post) | **POST** /service/boards/{id}/notifications | 


# **service_boards_id_notifications_count_get**
> Count service_boards_id_notifications_count_get(id, opts)



Get Board Notifications Count

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_count_get: #{e}"
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



# **service_boards_id_notifications_get**
> Array&lt;BoardNotification&gt; service_boards_id_notifications_get(id, opts)



Get Board Notifications

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

api_instance = ConnectWise::BoardNotificationsApi.new

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
  result = api_instance.service_boards_id_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_get: #{e}"
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

[**Array&lt;BoardNotification&gt;**](BoardNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_notifications_notification_id_delete**
> service_boards_id_notifications_notification_id_delete(id, notification_id)



Delete Board Notification By Id

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  api_instance.service_boards_id_notifications_notification_id_delete(id, notification_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_notification_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_notifications_notification_id_get**
> BoardNotification service_boards_id_notifications_notification_id_get(id, notification_id)



Get Board Notification By Id

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_notifications_notification_id_get(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**BoardNotification**](BoardNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_notifications_notification_id_patch**
> BoardNotification service_boards_id_notifications_notification_id_patch(id, notification_id, operations)



Update Board Notification

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_notifications_notification_id_patch(id, notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardNotification**](BoardNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_notifications_notification_id_put**
> BoardNotification service_boards_id_notifications_notification_id_put(id, notification_id, board_notification)



Replace Board Notification

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

board_notification = ConnectWise::BoardNotification.new # BoardNotification | 


begin
  result = api_instance.service_boards_id_notifications_notification_id_put(id, notification_id, board_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **board_notification** | [**BoardNotification**](BoardNotification.md)|  | 

### Return type

[**BoardNotification**](BoardNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_notifications_post**
> BoardNotification service_boards_id_notifications_post(id, board_notification)



Create Board Notification

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

api_instance = ConnectWise::BoardNotificationsApi.new

id = 56 # Integer | 

board_notification = ConnectWise::BoardNotification.new # BoardNotification | 


begin
  result = api_instance.service_boards_id_notifications_post(id, board_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardNotificationsApi->service_boards_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_notification** | [**BoardNotification**](BoardNotification.md)|  | 

### Return type

[**BoardNotification**](BoardNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




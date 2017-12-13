# ConnectWise::OrderStatusNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_orders_statuses_id_notifications_count_get**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_count_get) | **GET** /sales/orders/statuses/{id}/notifications/count | 
[**sales_orders_statuses_id_notifications_get**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_get) | **GET** /sales/orders/statuses/{id}/notifications | 
[**sales_orders_statuses_id_notifications_notification_id_delete**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_delete) | **DELETE** /sales/orders/statuses/{id}/notifications/{notificationId} | 
[**sales_orders_statuses_id_notifications_notification_id_get**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_get) | **GET** /sales/orders/statuses/{id}/notifications/{notificationId} | 
[**sales_orders_statuses_id_notifications_notification_id_patch**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_patch) | **PATCH** /sales/orders/statuses/{id}/notifications/{notificationId} | 
[**sales_orders_statuses_id_notifications_notification_id_put**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_notification_id_put) | **PUT** /sales/orders/statuses/{id}/notifications/{notificationId} | 
[**sales_orders_statuses_id_notifications_post**](OrderStatusNotificationsApi.md#sales_orders_statuses_id_notifications_post) | **POST** /sales/orders/statuses/{id}/notifications | 


# **sales_orders_statuses_id_notifications_count_get**
> Count sales_orders_statuses_id_notifications_count_get(id, opts)



Get Order Status Notifications Count

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_orders_statuses_id_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_count_get: #{e}"
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



# **sales_orders_statuses_id_notifications_get**
> Array&lt;OrderStatusNotification&gt; sales_orders_statuses_id_notifications_get(id, opts)



Get Order Status Notifications

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

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
  result = api_instance.sales_orders_statuses_id_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_get: #{e}"
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

[**Array&lt;OrderStatusNotification&gt;**](OrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_notifications_notification_id_delete**
> sales_orders_statuses_id_notifications_notification_id_delete(id, notification_id)



Delete Order Status Notification By Id

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  api_instance.sales_orders_statuses_id_notifications_notification_id_delete(id, notification_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_notification_id_delete: #{e}"
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



# **sales_orders_statuses_id_notifications_notification_id_get**
> OrderStatusNotification sales_orders_statuses_id_notifications_notification_id_get(id, notification_id)



Get Order Status Notification By Id

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.sales_orders_statuses_id_notifications_notification_id_get(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**OrderStatusNotification**](OrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_notifications_notification_id_patch**
> OrderStatusNotification sales_orders_statuses_id_notifications_notification_id_patch(id, notification_id, operations)



Update Order Status Notification

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_orders_statuses_id_notifications_notification_id_patch(id, notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OrderStatusNotification**](OrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_id_notifications_notification_id_put**
> OrderStatusNotification sales_orders_statuses_id_notifications_notification_id_put(id, notification_id, order_status_notification)



Replace Order Status Notification

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

order_status_notification = ConnectWise::OrderStatusNotification.new # OrderStatusNotification | 


begin
  result = api_instance.sales_orders_statuses_id_notifications_notification_id_put(id, notification_id, order_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **order_status_notification** | [**OrderStatusNotification**](OrderStatusNotification.md)|  | 

### Return type

[**OrderStatusNotification**](OrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_id_notifications_post**
> OrderStatusNotification sales_orders_statuses_id_notifications_post(id, order_status_notification)



Create Order Status Notification

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

api_instance = ConnectWise::OrderStatusNotificationsApi.new

id = 56 # Integer | 

order_status_notification = ConnectWise::OrderStatusNotification.new # OrderStatusNotification | 


begin
  result = api_instance.sales_orders_statuses_id_notifications_post(id, order_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusNotificationsApi->sales_orders_statuses_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **order_status_notification** | [**OrderStatusNotification**](OrderStatusNotification.md)|  | 

### Return type

[**OrderStatusNotification**](OrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




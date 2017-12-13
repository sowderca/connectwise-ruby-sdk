# ConnectWise::RmaStatusNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_rma_statuses_id_notifications_count_get**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_count_get) | **GET** /procurement/rmaStatuses/{id}/notifications/count | 
[**procurement_rma_statuses_id_notifications_get**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_get) | **GET** /procurement/rmaStatuses/{id}/notifications | 
[**procurement_rma_statuses_id_notifications_notification_id_delete**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_delete) | **DELETE** /procurement/rmaStatuses/{id}/notifications/{notificationId} | 
[**procurement_rma_statuses_id_notifications_notification_id_get**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_get) | **GET** /procurement/rmaStatuses/{id}/notifications/{notificationId} | 
[**procurement_rma_statuses_id_notifications_notification_id_patch**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_patch) | **PATCH** /procurement/rmaStatuses/{id}/notifications/{notificationId} | 
[**procurement_rma_statuses_id_notifications_notification_id_put**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_notification_id_put) | **PUT** /procurement/rmaStatuses/{id}/notifications/{notificationId} | 
[**procurement_rma_statuses_id_notifications_post**](RmaStatusNotificationsApi.md#procurement_rma_statuses_id_notifications_post) | **POST** /procurement/rmaStatuses/{id}/notifications | 


# **procurement_rma_statuses_id_notifications_count_get**
> Count procurement_rma_statuses_id_notifications_count_get(id, opts)



Get Rma Status Notifications Count

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_rma_statuses_id_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_count_get: #{e}"
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



# **procurement_rma_statuses_id_notifications_get**
> Array&lt;RmaStatusNotification&gt; procurement_rma_statuses_id_notifications_get(id, opts)



Get Rma Status Notifications

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

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
  result = api_instance.procurement_rma_statuses_id_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_get: #{e}"
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

[**Array&lt;RmaStatusNotification&gt;**](RmaStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_notifications_notification_id_delete**
> procurement_rma_statuses_id_notifications_notification_id_delete(id, notification_id)



Delete Rma Status Notification By Id

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  api_instance.procurement_rma_statuses_id_notifications_notification_id_delete(id, notification_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_notification_id_delete: #{e}"
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



# **procurement_rma_statuses_id_notifications_notification_id_get**
> RmaStatusNotification procurement_rma_statuses_id_notifications_notification_id_get(id, notification_id)



Get Rma Status Notification By Id

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.procurement_rma_statuses_id_notifications_notification_id_get(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**RmaStatusNotification**](RmaStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_notifications_notification_id_patch**
> RmaStatusNotification procurement_rma_statuses_id_notifications_notification_id_patch(id, notification_id, operations)



Update Rma Status Notification

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_rma_statuses_id_notifications_notification_id_patch(id, notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**RmaStatusNotification**](RmaStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_id_notifications_notification_id_put**
> RmaStatusNotification procurement_rma_statuses_id_notifications_notification_id_put(id, notification_id, rma_status_notification)



Replace Rma Status Notification

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

rma_status_notification = ConnectWise::RmaStatusNotification.new # RmaStatusNotification | 


begin
  result = api_instance.procurement_rma_statuses_id_notifications_notification_id_put(id, notification_id, rma_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **rma_status_notification** | [**RmaStatusNotification**](RmaStatusNotification.md)|  | 

### Return type

[**RmaStatusNotification**](RmaStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_id_notifications_post**
> RmaStatusNotification procurement_rma_statuses_id_notifications_post(id, rma_status_notification)



Create Rma Status Notification

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

api_instance = ConnectWise::RmaStatusNotificationsApi.new

id = 56 # Integer | 

rma_status_notification = ConnectWise::RmaStatusNotification.new # RmaStatusNotification | 


begin
  result = api_instance.procurement_rma_statuses_id_notifications_post(id, rma_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusNotificationsApi->procurement_rma_statuses_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **rma_status_notification** | [**RmaStatusNotification**](RmaStatusNotification.md)|  | 

### Return type

[**RmaStatusNotification**](RmaStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




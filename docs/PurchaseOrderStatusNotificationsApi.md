# ConnectWise::PurchaseOrderStatusNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_purchaseorderstatuses_id_notifications_count_get**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_count_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications/count | 
[**procurement_purchaseorderstatuses_id_notifications_get**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications | 
[**procurement_purchaseorderstatuses_id_notifications_notification_id_delete**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} | 
[**procurement_purchaseorderstatuses_id_notifications_notification_id_get**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_get) | **GET** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} | 
[**procurement_purchaseorderstatuses_id_notifications_notification_id_patch**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} | 
[**procurement_purchaseorderstatuses_id_notifications_notification_id_put**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_notification_id_put) | **PUT** /procurement/purchaseorderstatuses/{id}/notifications/{notificationId} | 
[**procurement_purchaseorderstatuses_id_notifications_post**](PurchaseOrderStatusNotificationsApi.md#procurement_purchaseorderstatuses_id_notifications_post) | **POST** /procurement/purchaseorderstatuses/{id}/notifications | 


# **procurement_purchaseorderstatuses_id_notifications_count_get**
> Count procurement_purchaseorderstatuses_id_notifications_count_get(id, opts)



Get Purchase Order Status Notifications Count

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_count_get: #{e}"
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



# **procurement_purchaseorderstatuses_id_notifications_get**
> Array&lt;PurchaseOrderStatusNotification&gt; procurement_purchaseorderstatuses_id_notifications_get(id, opts)



Get Purchase Order Status Notifications

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

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
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_get: #{e}"
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

[**Array&lt;PurchaseOrderStatusNotification&gt;**](PurchaseOrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_notifications_notification_id_delete**
> procurement_purchaseorderstatuses_id_notifications_notification_id_delete(id, notification_id)



Delete Purchase Order Status Notification By Id

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  api_instance.procurement_purchaseorderstatuses_id_notifications_notification_id_delete(id, notification_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_notification_id_delete: #{e}"
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



# **procurement_purchaseorderstatuses_id_notifications_notification_id_get**
> PurchaseOrderStatusNotification procurement_purchaseorderstatuses_id_notifications_notification_id_get(id, notification_id)



Get Purchase Order Status Notification By Id

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_notification_id_get(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_notifications_notification_id_patch**
> PurchaseOrderStatusNotification procurement_purchaseorderstatuses_id_notifications_notification_id_patch(id, notification_id, operations)



Update Purchase Order Status Notification

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_notification_id_patch(id, notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_notifications_notification_id_put**
> PurchaseOrderStatusNotification procurement_purchaseorderstatuses_id_notifications_notification_id_put(id, notification_id, purchase_order_status_notification)



Replace Purchase Order Status Notification

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

purchase_order_status_notification = ConnectWise::PurchaseOrderStatusNotification.new # PurchaseOrderStatusNotification | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_notification_id_put(id, notification_id, purchase_order_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **purchase_order_status_notification** | [**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)|  | 

### Return type

[**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_notifications_post**
> PurchaseOrderStatusNotification procurement_purchaseorderstatuses_id_notifications_post(id, purchase_order_status_notification)



Create Purchase Order Status Notification

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

api_instance = ConnectWise::PurchaseOrderStatusNotificationsApi.new

id = 56 # Integer | 

purchase_order_status_notification = ConnectWise::PurchaseOrderStatusNotification.new # PurchaseOrderStatusNotification | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_notifications_post(id, purchase_order_status_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusNotificationsApi->procurement_purchaseorderstatuses_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchase_order_status_notification** | [**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)|  | 

### Return type

[**PurchaseOrderStatusNotification**](PurchaseOrderStatusNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ManagedDevicesIntegrationNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_managed_devices_integrations_id_notifications_count_get**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_count_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications/count | 
[**company_managed_devices_integrations_id_notifications_get**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications | 
[**company_managed_devices_integrations_id_notifications_notification_id_delete**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} | 
[**company_managed_devices_integrations_id_notifications_notification_id_get**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_get) | **GET** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} | 
[**company_managed_devices_integrations_id_notifications_notification_id_patch**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} | 
[**company_managed_devices_integrations_id_notifications_notification_id_put**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_notification_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/notifications/{notificationID} | 
[**company_managed_devices_integrations_id_notifications_post**](ManagedDevicesIntegrationNotificationsApi.md#company_managed_devices_integrations_id_notifications_post) | **POST** /company/managedDevicesIntegrations/{id}/notifications | 


# **company_managed_devices_integrations_id_notifications_count_get**
> Count company_managed_devices_integrations_id_notifications_count_get(id, opts)



Get Notification Count

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_managed_devices_integrations_id_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_count_get: #{e}"
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



# **company_managed_devices_integrations_id_notifications_get**
> Array&lt;ManagedDevicesIntegrationNotification&gt; company_managed_devices_integrations_id_notifications_get(id, opts)



Get Notification

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

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
  result = api_instance.company_managed_devices_integrations_id_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_get: #{e}"
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

[**Array&lt;ManagedDevicesIntegrationNotification&gt;**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_notifications_notification_id_delete**
> ManagedDevicesIntegrationNotification company_managed_devices_integrations_id_notifications_notification_id_delete(id, notification_id)



Delete Notification

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_notifications_notification_id_delete(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_notification_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_notifications_notification_id_get**
> ManagedDevicesIntegrationNotification company_managed_devices_integrations_id_notifications_notification_id_get(id, notification_id)



Get Notification By Id

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_notifications_notification_id_get(id, notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_notifications_notification_id_patch**
> ManagedDevicesIntegrationNotification company_managed_devices_integrations_id_notifications_notification_id_patch(id, notification_id, operations)



Update Notification

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_managed_devices_integrations_id_notifications_notification_id_patch(id, notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_notifications_notification_id_put**
> ManagedDevicesIntegrationNotification company_managed_devices_integrations_id_notifications_notification_id_put(id, notification_id, notification)



Replace Notification

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

notification_id = 56 # Integer | 

notification = ConnectWise::ManagedDevicesIntegrationNotification.new # ManagedDevicesIntegrationNotification | 


begin
  result = api_instance.company_managed_devices_integrations_id_notifications_notification_id_put(id, notification_id, notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification_id** | **Integer**|  | 
 **notification** | [**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)|  | 

### Return type

[**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_notifications_post**
> ManagedDevicesIntegrationNotification company_managed_devices_integrations_id_notifications_post(id, notification)



Create Notification

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

api_instance = ConnectWise::ManagedDevicesIntegrationNotificationsApi.new

id = 56 # Integer | 

notification = ConnectWise::ManagedDevicesIntegrationNotification.new # ManagedDevicesIntegrationNotification | 


begin
  result = api_instance.company_managed_devices_integrations_id_notifications_post(id, notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationNotificationsApi->company_managed_devices_integrations_id_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **notification** | [**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)|  | 

### Return type

[**ManagedDevicesIntegrationNotification**](ManagedDevicesIntegrationNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




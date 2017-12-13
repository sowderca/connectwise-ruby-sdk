# ConnectWise::ManagementReportNotificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_id_management_report_notifications_count_get**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_count_get) | **GET** /company/management/{id}/managementReportNotifications/count | 
[**company_management_id_management_report_notifications_get**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_get) | **GET** /company/management/{id}/managementReportNotifications | 
[**company_management_id_management_report_notifications_management_report_notification_id_delete**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_delete) | **DELETE** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} | 
[**company_management_id_management_report_notifications_management_report_notification_id_get**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_get) | **GET** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} | 
[**company_management_id_management_report_notifications_management_report_notification_id_patch**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_patch) | **PATCH** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} | 
[**company_management_id_management_report_notifications_management_report_notification_id_put**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_management_report_notification_id_put) | **PUT** /company/management/{id}/managementReportNotifications/{managementReportNotificationId} | 
[**company_management_id_management_report_notifications_post**](ManagementReportNotificationsApi.md#company_management_id_management_report_notifications_post) | **POST** /company/management/{id}/managementReportNotifications | 


# **company_management_id_management_report_notifications_count_get**
> Count company_management_id_management_report_notifications_count_get(id, opts)



Get Management Report Notifications Count

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_id_management_report_notifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_count_get: #{e}"
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



# **company_management_id_management_report_notifications_get**
> Array&lt;ManagementReportNotification&gt; company_management_id_management_report_notifications_get(id, opts)



Get Management Report Notifications

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

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
  result = api_instance.company_management_id_management_report_notifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_get: #{e}"
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

[**Array&lt;ManagementReportNotification&gt;**](ManagementReportNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_id_management_report_notifications_management_report_notification_id_delete**
> company_management_id_management_report_notifications_management_report_notification_id_delete(id, management_report_notification_id)



Delete Management Report Notification By Id

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

management_report_notification_id = 56 # Integer | 


begin
  api_instance.company_management_id_management_report_notifications_management_report_notification_id_delete(id, management_report_notification_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_management_report_notification_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_report_notification_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_management_id_management_report_notifications_management_report_notification_id_get**
> ManagementReportNotification company_management_id_management_report_notifications_management_report_notification_id_get(id, management_report_notification_id)



Get Management Report Notification By Id

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

management_report_notification_id = 56 # Integer | 


begin
  result = api_instance.company_management_id_management_report_notifications_management_report_notification_id_get(id, management_report_notification_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_management_report_notification_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_report_notification_id** | **Integer**|  | 

### Return type

[**ManagementReportNotification**](ManagementReportNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_id_management_report_notifications_management_report_notification_id_patch**
> ManagementReportNotification company_management_id_management_report_notifications_management_report_notification_id_patch(id, management_report_notification_id, operations)



Update Management Report Notification

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

management_report_notification_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_id_management_report_notifications_management_report_notification_id_patch(id, management_report_notification_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_management_report_notification_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_report_notification_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementReportNotification**](ManagementReportNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_id_management_report_notifications_management_report_notification_id_put**
> ManagementReportNotification company_management_id_management_report_notifications_management_report_notification_id_put(id, management_report_notification_id, management_report_notification)



Replace Management Report Notification

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

management_report_notification_id = 56 # Integer | 

management_report_notification = ConnectWise::ManagementReportNotification.new # ManagementReportNotification | 


begin
  result = api_instance.company_management_id_management_report_notifications_management_report_notification_id_put(id, management_report_notification_id, management_report_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_management_report_notification_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_report_notification_id** | **Integer**|  | 
 **management_report_notification** | [**ManagementReportNotification**](ManagementReportNotification.md)|  | 

### Return type

[**ManagementReportNotification**](ManagementReportNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_id_management_report_notifications_post**
> ManagementReportNotification company_management_id_management_report_notifications_post(id, management_report_notification)



Create Management Report Notification

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

api_instance = ConnectWise::ManagementReportNotificationsApi.new

id = 56 # Integer | 

management_report_notification = ConnectWise::ManagementReportNotification.new # ManagementReportNotification | 


begin
  result = api_instance.company_management_id_management_report_notifications_post(id, management_report_notification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementReportNotificationsApi->company_management_id_management_report_notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_report_notification** | [**ManagementReportNotification**](ManagementReportNotification.md)|  | 

### Return type

[**ManagementReportNotification**](ManagementReportNotification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




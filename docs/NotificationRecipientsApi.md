# ConnectWise::NotificationRecipientsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_notification_recipients_count_get**](NotificationRecipientsApi.md#system_notification_recipients_count_get) | **GET** /system/notificationRecipients/count | 
[**system_notification_recipients_get**](NotificationRecipientsApi.md#system_notification_recipients_get) | **GET** /system/notificationRecipients | 
[**system_notification_recipients_id_get**](NotificationRecipientsApi.md#system_notification_recipients_id_get) | **GET** /system/notificationRecipients/{id} | 


# **system_notification_recipients_count_get**
> Count system_notification_recipients_count_get(opts)



Get Notification Recipients Count

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

api_instance = ConnectWise::NotificationRecipientsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_notification_recipients_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling NotificationRecipientsApi->system_notification_recipients_count_get: #{e}"
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



# **system_notification_recipients_get**
> Array&lt;NotificationRecipient&gt; system_notification_recipients_get(opts)



Get Notification Recipients

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

api_instance = ConnectWise::NotificationRecipientsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_notification_recipients_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling NotificationRecipientsApi->system_notification_recipients_get: #{e}"
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

[**Array&lt;NotificationRecipient&gt;**](NotificationRecipient.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_notification_recipients_id_get**
> NotificationRecipient system_notification_recipients_id_get(id)



Get Notification Recipient By Id

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

api_instance = ConnectWise::NotificationRecipientsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_notification_recipients_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling NotificationRecipientsApi->system_notification_recipients_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**NotificationRecipient**](NotificationRecipient.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




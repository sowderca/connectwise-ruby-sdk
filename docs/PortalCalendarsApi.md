# ConnectWise::PortalCalendarsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_mycompany_portalcalendars_count_get**](PortalCalendarsApi.md#system_mycompany_portalcalendars_count_get) | **GET** /system/mycompany/portalcalendars/count | 
[**system_mycompany_portalcalendars_get**](PortalCalendarsApi.md#system_mycompany_portalcalendars_get) | **GET** /system/mycompany/portalcalendars | 
[**system_mycompany_portalcalendars_id_get**](PortalCalendarsApi.md#system_mycompany_portalcalendars_id_get) | **GET** /system/mycompany/portalcalendars/{id} | 
[**system_mycompany_portalcalendars_id_patch**](PortalCalendarsApi.md#system_mycompany_portalcalendars_id_patch) | **PATCH** /system/mycompany/portalcalendars/{id} | 
[**system_mycompany_portalcalendars_id_put**](PortalCalendarsApi.md#system_mycompany_portalcalendars_id_put) | **PUT** /system/mycompany/portalcalendars/{id} | 


# **system_mycompany_portalcalendars_count_get**
> Count system_mycompany_portalcalendars_count_get(opts)



Get Portal Calendars Count

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

api_instance = ConnectWise::PortalCalendarsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_mycompany_portalcalendars_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalCalendarsApi->system_mycompany_portalcalendars_count_get: #{e}"
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



# **system_mycompany_portalcalendars_get**
> Array&lt;PortalCalendar&gt; system_mycompany_portalcalendars_get(opts)



Get Portal Calendars

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

api_instance = ConnectWise::PortalCalendarsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_mycompany_portalcalendars_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalCalendarsApi->system_mycompany_portalcalendars_get: #{e}"
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

[**Array&lt;PortalCalendar&gt;**](PortalCalendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_portalcalendars_id_get**
> PortalCalendar system_mycompany_portalcalendars_id_get(id)



Get Portal Calendar By Id

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

api_instance = ConnectWise::PortalCalendarsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_portalcalendars_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalCalendarsApi->system_mycompany_portalcalendars_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PortalCalendar**](PortalCalendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_portalcalendars_id_patch**
> PortalCalendar system_mycompany_portalcalendars_id_patch(id, operations)



Update Portal Calendar

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

api_instance = ConnectWise::PortalCalendarsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_mycompany_portalcalendars_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalCalendarsApi->system_mycompany_portalcalendars_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalCalendar**](PortalCalendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_portalcalendars_id_put**
> PortalCalendar system_mycompany_portalcalendars_id_put(id, portal_calendar)



Replace Portal Calendar

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

api_instance = ConnectWise::PortalCalendarsApi.new

id = 56 # Integer | 

portal_calendar = ConnectWise::PortalCalendar.new # PortalCalendar | 


begin
  result = api_instance.system_mycompany_portalcalendars_id_put(id, portal_calendar)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalCalendarsApi->system_mycompany_portalcalendars_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_calendar** | [**PortalCalendar**](PortalCalendar.md)|  | 

### Return type

[**PortalCalendar**](PortalCalendar.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




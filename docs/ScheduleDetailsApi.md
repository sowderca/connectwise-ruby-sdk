# ConnectWise::ScheduleDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_entries_id_details_count_get**](ScheduleDetailsApi.md#schedule_entries_id_details_count_get) | **GET** /schedule/entries/{id}/details/count | 
[**schedule_entries_id_details_detail_id_get**](ScheduleDetailsApi.md#schedule_entries_id_details_detail_id_get) | **GET** /schedule/entries/{id}/details/{detailId} | 
[**schedule_entries_id_details_get**](ScheduleDetailsApi.md#schedule_entries_id_details_get) | **GET** /schedule/entries/{id}/details | 


# **schedule_entries_id_details_count_get**
> Count schedule_entries_id_details_count_get(id, opts)



Get Schedule Detail Count

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

api_instance = ConnectWise::ScheduleDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_entries_id_details_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleDetailsApi->schedule_entries_id_details_count_get: #{e}"
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



# **schedule_entries_id_details_detail_id_get**
> ScheduleDetail schedule_entries_id_details_detail_id_get(id, detail_id)



Get Schedule Detail By Id

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

api_instance = ConnectWise::ScheduleDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  result = api_instance.schedule_entries_id_details_detail_id_get(id, detail_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleDetailsApi->schedule_entries_id_details_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

[**ScheduleDetail**](ScheduleDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_entries_id_details_get**
> Array&lt;ScheduleDetail&gt; schedule_entries_id_details_get(id, opts)



Get Schedule Detail

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

api_instance = ConnectWise::ScheduleDetailsApi.new

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
  result = api_instance.schedule_entries_id_details_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleDetailsApi->schedule_entries_id_details_get: #{e}"
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

[**Array&lt;ScheduleDetail&gt;**](ScheduleDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




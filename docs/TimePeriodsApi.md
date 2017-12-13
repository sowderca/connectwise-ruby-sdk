# ConnectWise::TimePeriodsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_time_period_setups_id_periods_count_get**](TimePeriodsApi.md#time_time_period_setups_id_periods_count_get) | **GET** /time/timePeriodSetups/{id}/periods/count | 
[**time_time_period_setups_id_periods_get**](TimePeriodsApi.md#time_time_period_setups_id_periods_get) | **GET** /time/timePeriodSetups/{id}/periods | 
[**time_time_period_setups_id_periods_period_id_get**](TimePeriodsApi.md#time_time_period_setups_id_periods_period_id_get) | **GET** /time/timePeriodSetups/{id}/periods/{periodID} | 


# **time_time_period_setups_id_periods_count_get**
> Count time_time_period_setups_id_periods_count_get(id, opts)



Get Time Periods Count

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

api_instance = ConnectWise::TimePeriodsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_time_period_setups_id_periods_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodsApi->time_time_period_setups_id_periods_count_get: #{e}"
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



# **time_time_period_setups_id_periods_get**
> Array&lt;TimePeriod&gt; time_time_period_setups_id_periods_get(id, opts)



Get Time Periods

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

api_instance = ConnectWise::TimePeriodsApi.new

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
  result = api_instance.time_time_period_setups_id_periods_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodsApi->time_time_period_setups_id_periods_get: #{e}"
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

[**Array&lt;TimePeriod&gt;**](TimePeriod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_time_period_setups_id_periods_period_id_get**
> TimePeriod time_time_period_setups_id_periods_period_id_get(id, period_id)



Get Time Period By Id

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

api_instance = ConnectWise::TimePeriodsApi.new

id = 56 # Integer | 

period_id = 56 # Integer | 


begin
  result = api_instance.time_time_period_setups_id_periods_period_id_get(id, period_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodsApi->time_time_period_setups_id_periods_period_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **period_id** | **Integer**|  | 

### Return type

[**TimePeriod**](TimePeriod.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# ConnectWise::TimePeriodSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_time_period_setups_count_get**](TimePeriodSetupsApi.md#time_time_period_setups_count_get) | **GET** /time/timePeriodSetups/count | 
[**time_time_period_setups_default_get**](TimePeriodSetupsApi.md#time_time_period_setups_default_get) | **GET** /time/timePeriodSetups/default | 
[**time_time_period_setups_get**](TimePeriodSetupsApi.md#time_time_period_setups_get) | **GET** /time/timePeriodSetups | 
[**time_time_period_setups_id_delete**](TimePeriodSetupsApi.md#time_time_period_setups_id_delete) | **DELETE** /time/timePeriodSetups/{id} | 
[**time_time_period_setups_id_get**](TimePeriodSetupsApi.md#time_time_period_setups_id_get) | **GET** /time/timePeriodSetups/{id} | 
[**time_time_period_setups_post**](TimePeriodSetupsApi.md#time_time_period_setups_post) | **POST** /time/timePeriodSetups | 


# **time_time_period_setups_count_get**
> Count time_time_period_setups_count_get(opts)



Get Time Period Setups Count

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_time_period_setups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_count_get: #{e}"
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



# **time_time_period_setups_default_get**
> TimePeriodSetupDefaults time_time_period_setups_default_get



Get Time Period Setups Default

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

begin
  result = api_instance.time_time_period_setups_default_get
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_default_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TimePeriodSetupDefaults**](TimePeriodSetupDefaults.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_time_period_setups_get**
> Array&lt;TimePeriodSetup&gt; time_time_period_setups_get(opts)



Get Time Period Setups

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_time_period_setups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_get: #{e}"
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

[**Array&lt;TimePeriodSetup&gt;**](TimePeriodSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_time_period_setups_id_delete**
> time_time_period_setups_id_delete(id)



Delete Time Period Setup By Id

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

id = 56 # Integer | 


begin
  api_instance.time_time_period_setups_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **time_time_period_setups_id_get**
> TimePeriodSetup time_time_period_setups_id_get(id)



Get Time Period Setup By Id

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_time_period_setups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimePeriodSetup**](TimePeriodSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_time_period_setups_post**
> TimePeriodSetup time_time_period_setups_post(time_period_setup)



Create Time Period Setup

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

api_instance = ConnectWise::TimePeriodSetupsApi.new

time_period_setup = ConnectWise::TimePeriodSetup.new # TimePeriodSetup | 


begin
  result = api_instance.time_time_period_setups_post(time_period_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimePeriodSetupsApi->time_time_period_setups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **time_period_setup** | [**TimePeriodSetup**](TimePeriodSetup.md)|  | 

### Return type

[**TimePeriodSetup**](TimePeriodSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




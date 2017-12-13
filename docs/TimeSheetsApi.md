# ConnectWise::TimeSheetsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_sheets_count_get**](TimeSheetsApi.md#time_sheets_count_get) | **GET** /time/sheets/count | 
[**time_sheets_get**](TimeSheetsApi.md#time_sheets_get) | **GET** /time/sheets | 
[**time_sheets_id_get**](TimeSheetsApi.md#time_sheets_id_get) | **GET** /time/sheets/{id} | 
[**time_sheets_id_reverse_post**](TimeSheetsApi.md#time_sheets_id_reverse_post) | **POST** /time/sheets/{id}/reverse | 
[**time_sheets_id_submit_post**](TimeSheetsApi.md#time_sheets_id_submit_post) | **POST** /time/sheets/{id}/submit | 


# **time_sheets_count_get**
> Count time_sheets_count_get(opts)



Get Time Sheet Count

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

api_instance = ConnectWise::TimeSheetsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_sheets_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeSheetsApi->time_sheets_count_get: #{e}"
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



# **time_sheets_get**
> Array&lt;TimeSheet&gt; time_sheets_get(opts)



Get Time Sheet

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

api_instance = ConnectWise::TimeSheetsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_sheets_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeSheetsApi->time_sheets_get: #{e}"
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

[**Array&lt;TimeSheet&gt;**](TimeSheet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_sheets_id_get**
> TimeSheet time_sheets_id_get(id)



Get Time Sheet By Id

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

api_instance = ConnectWise::TimeSheetsApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_sheets_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeSheetsApi->time_sheets_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeSheet**](TimeSheet.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_sheets_id_reverse_post**
> SuccessResponse time_sheets_id_reverse_post(id)



Reverse Time Sheet

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

api_instance = ConnectWise::TimeSheetsApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_sheets_id_reverse_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeSheetsApi->time_sheets_id_reverse_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_sheets_id_submit_post**
> SuccessResponse time_sheets_id_submit_post(id)



Submit Time Sheet

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

api_instance = ConnectWise::TimeSheetsApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_sheets_id_submit_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeSheetsApi->time_sheets_id_submit_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




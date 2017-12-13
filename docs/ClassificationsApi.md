# ConnectWise::ClassificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_classifications_count_get**](ClassificationsApi.md#expense_classifications_count_get) | **GET** /expense/classifications/count | 
[**expense_classifications_get**](ClassificationsApi.md#expense_classifications_get) | **GET** /expense/classifications | 
[**expense_classifications_id_get**](ClassificationsApi.md#expense_classifications_id_get) | **GET** /expense/classifications/{id} | 


# **expense_classifications_count_get**
> Count expense_classifications_count_get(opts)



Get Classification Count

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

api_instance = ConnectWise::ClassificationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_classifications_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ClassificationsApi->expense_classifications_count_get: #{e}"
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



# **expense_classifications_get**
> Array&lt;Classification&gt; expense_classifications_get(opts)



Get Expense Classification

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

api_instance = ConnectWise::ClassificationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_classifications_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ClassificationsApi->expense_classifications_get: #{e}"
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

[**Array&lt;Classification&gt;**](Classification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_classifications_id_get**
> Classification expense_classifications_id_get(id)



Get Classification By Id

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

api_instance = ConnectWise::ClassificationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_classifications_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ClassificationsApi->expense_classifications_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Classification**](Classification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




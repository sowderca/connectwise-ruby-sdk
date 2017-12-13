# ConnectWise::ExpenseReportsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_reports_count_get**](ExpenseReportsApi.md#expense_reports_count_get) | **GET** /expense/reports/count | 
[**expense_reports_get**](ExpenseReportsApi.md#expense_reports_get) | **GET** /expense/reports | 
[**expense_reports_id_get**](ExpenseReportsApi.md#expense_reports_id_get) | **GET** /expense/reports/{id} | 
[**expense_reports_id_reverse_post**](ExpenseReportsApi.md#expense_reports_id_reverse_post) | **POST** /expense/reports/{id}/reverse | 
[**expense_reports_id_submit_post**](ExpenseReportsApi.md#expense_reports_id_submit_post) | **POST** /expense/reports/{id}/submit | 


# **expense_reports_count_get**
> Count expense_reports_count_get(opts)



Get Expense Reports Count

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

api_instance = ConnectWise::ExpenseReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_reports_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseReportsApi->expense_reports_count_get: #{e}"
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



# **expense_reports_get**
> Array&lt;ExpenseReport&gt; expense_reports_get(opts)



Get Expense Reports

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

api_instance = ConnectWise::ExpenseReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_reports_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseReportsApi->expense_reports_get: #{e}"
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

[**Array&lt;ExpenseReport&gt;**](ExpenseReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_reports_id_get**
> ExpenseReport expense_reports_id_get(id)



Get Expense Report By Id

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

api_instance = ConnectWise::ExpenseReportsApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_reports_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseReportsApi->expense_reports_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ExpenseReport**](ExpenseReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_reports_id_reverse_post**
> SuccessResponse expense_reports_id_reverse_post(id)



Reverse Expense Report

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

api_instance = ConnectWise::ExpenseReportsApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_reports_id_reverse_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseReportsApi->expense_reports_id_reverse_post: #{e}"
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



# **expense_reports_id_submit_post**
> SuccessResponse expense_reports_id_submit_post(id)



Submit Expense Report

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

api_instance = ConnectWise::ExpenseReportsApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_reports_id_submit_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseReportsApi->expense_reports_id_submit_post: #{e}"
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




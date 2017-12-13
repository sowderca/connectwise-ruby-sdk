# ConnectWise::TimeExpensesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_my_company_time_expense_count_get**](TimeExpensesApi.md#system_my_company_time_expense_count_get) | **GET** /system/myCompany/timeExpense/count | 
[**system_my_company_time_expense_get**](TimeExpensesApi.md#system_my_company_time_expense_get) | **GET** /system/myCompany/timeExpense | 
[**system_my_company_time_expense_id_get**](TimeExpensesApi.md#system_my_company_time_expense_id_get) | **GET** /system/myCompany/timeExpense/{id} | 
[**system_my_company_time_expense_id_patch**](TimeExpensesApi.md#system_my_company_time_expense_id_patch) | **PATCH** /system/myCompany/timeExpense/{id} | 
[**system_my_company_time_expense_id_put**](TimeExpensesApi.md#system_my_company_time_expense_id_put) | **PUT** /system/myCompany/timeExpense/{id} | 


# **system_my_company_time_expense_count_get**
> Count system_my_company_time_expense_count_get(opts)



Get Time Expenses Count

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

api_instance = ConnectWise::TimeExpensesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_my_company_time_expense_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeExpensesApi->system_my_company_time_expense_count_get: #{e}"
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



# **system_my_company_time_expense_get**
> Array&lt;TimeExpense&gt; system_my_company_time_expense_get(opts)



Get Time Expenses

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

api_instance = ConnectWise::TimeExpensesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_my_company_time_expense_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeExpensesApi->system_my_company_time_expense_get: #{e}"
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

[**Array&lt;TimeExpense&gt;**](TimeExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_time_expense_id_get**
> TimeExpense system_my_company_time_expense_id_get(id)



Get Time Expense By Id

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

api_instance = ConnectWise::TimeExpensesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_my_company_time_expense_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeExpensesApi->system_my_company_time_expense_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TimeExpense**](TimeExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_time_expense_id_patch**
> TimeExpense system_my_company_time_expense_id_patch(id, operations)



Update Time Expense

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

api_instance = ConnectWise::TimeExpensesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_my_company_time_expense_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeExpensesApi->system_my_company_time_expense_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TimeExpense**](TimeExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_my_company_time_expense_id_put**
> TimeExpense system_my_company_time_expense_id_put(id, time_expense)



Replace Time Expense

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

api_instance = ConnectWise::TimeExpensesApi.new

id = 56 # Integer | 

time_expense = ConnectWise::TimeExpense.new # TimeExpense | 


begin
  result = api_instance.system_my_company_time_expense_id_put(id, time_expense)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TimeExpensesApi->system_my_company_time_expense_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **time_expense** | [**TimeExpense**](TimeExpense.md)|  | 

### Return type

[**TimeExpense**](TimeExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




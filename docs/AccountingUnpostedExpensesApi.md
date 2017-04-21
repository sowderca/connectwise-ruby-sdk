# ConnectWise::AccountingUnpostedExpensesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_accounting_unpostedexpenses_count_get**](AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_count_get) | **GET** /finance/accounting/unpostedexpenses/count | 
[**finance_accounting_unpostedexpenses_get**](AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_get) | **GET** /finance/accounting/unpostedexpenses | 
[**finance_accounting_unpostedexpenses_id_get**](AccountingUnpostedExpensesApi.md#finance_accounting_unpostedexpenses_id_get) | **GET** /finance/accounting/unpostedexpenses/{id} | 


# **finance_accounting_unpostedexpenses_count_get**
> Count finance_accounting_unpostedexpenses_count_get(opts)



Get Unposted Expenses Count

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

api_instance = ConnectWise::AccountingUnpostedExpensesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_accounting_unpostedexpenses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingUnpostedExpensesApi->finance_accounting_unpostedexpenses_count_get: #{e}"
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



# **finance_accounting_unpostedexpenses_get**
> Array&lt;UnpostedExpense&gt; finance_accounting_unpostedexpenses_get(opts)



Get Unposted Expenses

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

api_instance = ConnectWise::AccountingUnpostedExpensesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_accounting_unpostedexpenses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingUnpostedExpensesApi->finance_accounting_unpostedexpenses_get: #{e}"
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

[**Array&lt;UnpostedExpense&gt;**](UnpostedExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_unpostedexpenses_id_get**
> UnpostedExpense finance_accounting_unpostedexpenses_id_get(id)



Get Unposted Expense By Id

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

api_instance = ConnectWise::AccountingUnpostedExpensesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_accounting_unpostedexpenses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingUnpostedExpensesApi->finance_accounting_unpostedexpenses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**UnpostedExpense**](UnpostedExpense.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# Connectwise::AccountingBatchTransactionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_accounting_batches_id_transactions_count_get**](AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_count_get) | **GET** /finance/accounting/batches/{id}/transactions/count | 
[**finance_accounting_batches_id_transactions_get**](AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_get) | **GET** /finance/accounting/batches/{id}/transactions | 
[**finance_accounting_batches_id_transactions_transaction_id_get**](AccountingBatchTransactionsApi.md#finance_accounting_batches_id_transactions_transaction_id_get) | **GET** /finance/accounting/batches/{id}/transactions/{transactionId} | 


# **finance_accounting_batches_id_transactions_count_get**
> Count finance_accounting_batches_id_transactions_count_get(id, opts)



Get Transactions Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AccountingBatchTransactionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_accounting_batches_id_transactions_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingBatchTransactionsApi->finance_accounting_batches_id_transactions_count_get: #{e}"
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



# **finance_accounting_batches_id_transactions_get**
> Array&lt;Transaction&gt; finance_accounting_batches_id_transactions_get(id, opts)



Get Transactions

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AccountingBatchTransactionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_accounting_batches_id_transactions_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingBatchTransactionsApi->finance_accounting_batches_id_transactions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Transaction&gt;**](Transaction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_batches_id_transactions_transaction_id_get**
> Transaction finance_accounting_batches_id_transactions_transaction_id_get(id, transaction_id)



Get Transaction By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AccountingBatchTransactionsApi.new

id = 56 # Integer | 

transaction_id = 56 # Integer | 


begin
  result = api_instance.finance_accounting_batches_id_transactions_transaction_id_get(id, transaction_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingBatchTransactionsApi->finance_accounting_batches_id_transactions_transaction_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **transaction_id** | **Integer**|  | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




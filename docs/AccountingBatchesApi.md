# ConnectWise::AccountingBatchesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_accounting_batches_count_get**](AccountingBatchesApi.md#finance_accounting_batches_count_get) | **GET** /finance/accounting/batches/count | 
[**finance_accounting_batches_get**](AccountingBatchesApi.md#finance_accounting_batches_get) | **GET** /finance/accounting/batches | 
[**finance_accounting_batches_id_delete**](AccountingBatchesApi.md#finance_accounting_batches_id_delete) | **DELETE** /finance/accounting/batches/{id} | 
[**finance_accounting_batches_id_get**](AccountingBatchesApi.md#finance_accounting_batches_id_get) | **GET** /finance/accounting/batches/{id} | 
[**finance_accounting_batches_post**](AccountingBatchesApi.md#finance_accounting_batches_post) | **POST** /finance/accounting/batches | 


# **finance_accounting_batches_count_get**
> Count finance_accounting_batches_count_get(opts)



Get Batches Count

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

api_instance = ConnectWise::AccountingBatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_accounting_batches_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_count_get: #{e}"
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



# **finance_accounting_batches_get**
> Array&lt;Batch&gt; finance_accounting_batches_get(opts)



Get Batches

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

api_instance = ConnectWise::AccountingBatchesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_accounting_batches_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_get: #{e}"
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

[**Array&lt;Batch&gt;**](Batch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_batches_id_delete**
> finance_accounting_batches_id_delete(id)



Delete Batch By Id

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

api_instance = ConnectWise::AccountingBatchesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_accounting_batches_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_id_delete: #{e}"
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



# **finance_accounting_batches_id_get**
> Batch finance_accounting_batches_id_get(id)



Get Batch By Id

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

api_instance = ConnectWise::AccountingBatchesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_accounting_batches_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_batches_post**
> Batch finance_accounting_batches_post(batch)



Create Batch

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

api_instance = ConnectWise::AccountingBatchesApi.new

batch = ConnectWise::Batch.new # Batch | 


begin
  result = api_instance.finance_accounting_batches_post(batch)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingBatchesApi->finance_accounting_batches_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch** | [**Batch**](Batch.md)|  | 

### Return type

[**Batch**](Batch.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




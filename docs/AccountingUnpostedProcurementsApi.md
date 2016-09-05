# Connectwise::AccountingUnpostedProcurementsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_accounting_unpostedprocurement_count_get**](AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_count_get) | **GET** /finance/accounting/unpostedprocurement/count | 
[**finance_accounting_unpostedprocurement_get**](AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_get) | **GET** /finance/accounting/unpostedprocurement | 
[**finance_accounting_unpostedprocurement_id_get**](AccountingUnpostedProcurementsApi.md#finance_accounting_unpostedprocurement_id_get) | **GET** /finance/accounting/unpostedprocurement/{id} | 


# **finance_accounting_unpostedprocurement_count_get**
> Count finance_accounting_unpostedprocurement_count_get(opts)



Get Unposted Procurements Count

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

api_instance = Connectwise::AccountingUnpostedProcurementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_accounting_unpostedprocurement_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedProcurementsApi->finance_accounting_unpostedprocurement_count_get: #{e}"
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



# **finance_accounting_unpostedprocurement_get**
> Array&lt;UnpostedProcurement&gt; finance_accounting_unpostedprocurement_get(opts)



Get Unposted Procurements

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

api_instance = Connectwise::AccountingUnpostedProcurementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_accounting_unpostedprocurement_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedProcurementsApi->finance_accounting_unpostedprocurement_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;UnpostedProcurement&gt;**](UnpostedProcurement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_unpostedprocurement_id_get**
> UnpostedProcurement finance_accounting_unpostedprocurement_id_get(id)



Get Unposted Procurement By Id

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

api_instance = Connectwise::AccountingUnpostedProcurementsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_accounting_unpostedprocurement_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedProcurementsApi->finance_accounting_unpostedprocurement_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**UnpostedProcurement**](UnpostedProcurement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




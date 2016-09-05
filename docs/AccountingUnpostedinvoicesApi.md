# Connectwise::AccountingUnpostedinvoicesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_accounting_unpostedinvoices_count_get**](AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_count_get) | **GET** /finance/accounting/unpostedinvoices/count | 
[**finance_accounting_unpostedinvoices_get**](AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_get) | **GET** /finance/accounting/unpostedinvoices | 
[**finance_accounting_unpostedinvoices_id_get**](AccountingUnpostedinvoicesApi.md#finance_accounting_unpostedinvoices_id_get) | **GET** /finance/accounting/unpostedinvoices/{id} | 


# **finance_accounting_unpostedinvoices_count_get**
> Count finance_accounting_unpostedinvoices_count_get(opts)



Get Unposted Invoices Count

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

api_instance = Connectwise::AccountingUnpostedinvoicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_accounting_unpostedinvoices_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedinvoicesApi->finance_accounting_unpostedinvoices_count_get: #{e}"
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



# **finance_accounting_unpostedinvoices_get**
> Array&lt;UnpostedInvoice&gt; finance_accounting_unpostedinvoices_get(opts)



Get Unposted Invoices

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

api_instance = Connectwise::AccountingUnpostedinvoicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_accounting_unpostedinvoices_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedinvoicesApi->finance_accounting_unpostedinvoices_get: #{e}"
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

[**Array&lt;UnpostedInvoice&gt;**](UnpostedInvoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_accounting_unpostedinvoices_id_get**
> UnpostedInvoice finance_accounting_unpostedinvoices_id_get(id)



Get Unposted Invoice By Id

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

api_instance = Connectwise::AccountingUnpostedinvoicesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_accounting_unpostedinvoices_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AccountingUnpostedinvoicesApi->finance_accounting_unpostedinvoices_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**UnpostedInvoice**](UnpostedInvoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# ConnectWise::InvoiceTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_invoice_templates_count_get**](InvoiceTemplatesApi.md#finance_invoice_templates_count_get) | **GET** /finance/invoiceTemplates/count | 
[**finance_invoice_templates_get**](InvoiceTemplatesApi.md#finance_invoice_templates_get) | **GET** /finance/invoiceTemplates | 
[**finance_invoice_templates_id_get**](InvoiceTemplatesApi.md#finance_invoice_templates_id_get) | **GET** /finance/invoiceTemplates/{id} | 


# **finance_invoice_templates_count_get**
> Count finance_invoice_templates_count_get(opts)



Get Invoice Templates Count

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

api_instance = ConnectWise::InvoiceTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_invoice_templates_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceTemplatesApi->finance_invoice_templates_count_get: #{e}"
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



# **finance_invoice_templates_get**
> Array&lt;InvoiceTemplate&gt; finance_invoice_templates_get(opts)



Get Invoice Templates

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

api_instance = ConnectWise::InvoiceTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_invoice_templates_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceTemplatesApi->finance_invoice_templates_get: #{e}"
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

[**Array&lt;InvoiceTemplate&gt;**](InvoiceTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoice_templates_id_get**
> InvoiceTemplate finance_invoice_templates_id_get(id)



Get Invoice Template By Id

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

api_instance = ConnectWise::InvoiceTemplatesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_invoice_templates_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceTemplatesApi->finance_invoice_templates_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InvoiceTemplate**](InvoiceTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




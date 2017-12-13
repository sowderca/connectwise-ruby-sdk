# ConnectWise::InvoicesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_invoices_count_get**](InvoicesApi.md#finance_invoices_count_get) | **GET** /finance/invoices/count | 
[**finance_invoices_get**](InvoicesApi.md#finance_invoices_get) | **GET** /finance/invoices | 
[**finance_invoices_id_delete**](InvoicesApi.md#finance_invoices_id_delete) | **DELETE** /finance/invoices/{id} | 
[**finance_invoices_id_get**](InvoicesApi.md#finance_invoices_id_get) | **GET** /finance/invoices/{id} | 
[**finance_invoices_id_patch**](InvoicesApi.md#finance_invoices_id_patch) | **PATCH** /finance/invoices/{id} | 
[**finance_invoices_id_pdf_get**](InvoicesApi.md#finance_invoices_id_pdf_get) | **GET** /finance/invoices/{id}/pdf | 
[**finance_invoices_id_put**](InvoicesApi.md#finance_invoices_id_put) | **PUT** /finance/invoices/{id} | 
[**finance_invoices_post**](InvoicesApi.md#finance_invoices_post) | **POST** /finance/invoices | 


# **finance_invoices_count_get**
> Count finance_invoices_count_get(opts)



Get Invoices Count

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

api_instance = ConnectWise::InvoicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.finance_invoices_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoices_get**
> Array&lt;Invoice&gt; finance_invoices_get(opts)



Get Invoices

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

api_instance = ConnectWise::InvoicesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_invoices_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_get: #{e}"
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

[**Array&lt;Invoice&gt;**](Invoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoices_id_delete**
> finance_invoices_id_delete(id)



Delete Invoice By Id

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

api_instance = ConnectWise::InvoicesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_invoices_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_id_delete: #{e}"
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



# **finance_invoices_id_get**
> Invoice finance_invoices_id_get(id)



Get Invoice By Id

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

api_instance = ConnectWise::InvoicesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_invoices_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoices_id_patch**
> Invoice finance_invoices_id_patch(id, operations)



Update Invoice

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

api_instance = ConnectWise::InvoicesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_invoices_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoices_id_pdf_get**
> finance_invoices_id_pdf_get(id)



Get Invoice Pdf

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

api_instance = ConnectWise::InvoicesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_invoices_id_pdf_get(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_id_pdf_get: #{e}"
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
 - **Accept**: application/pdf



# **finance_invoices_id_put**
> Invoice finance_invoices_id_put(id, invoice)



Replace Invoice

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

api_instance = ConnectWise::InvoicesApi.new

id = 56 # Integer | 

invoice = ConnectWise::Invoice.new # Invoice | 


begin
  result = api_instance.finance_invoices_id_put(id, invoice)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice** | [**Invoice**](Invoice.md)|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoices_post**
> Invoice finance_invoices_post(invoice)



Create Invoice

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

api_instance = ConnectWise::InvoicesApi.new

invoice = ConnectWise::Invoice.new # Invoice | 


begin
  result = api_instance.finance_invoices_post(invoice)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicesApi->finance_invoices_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice** | [**Invoice**](Invoice.md)|  | 

### Return type

[**Invoice**](Invoice.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




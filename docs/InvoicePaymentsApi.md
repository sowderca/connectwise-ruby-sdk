# ConnectWise::InvoicePaymentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_invoices_id_payments_get**](InvoicePaymentsApi.md#finance_invoices_id_payments_get) | **GET** /finance/invoices/{id}/payments | 
[**finance_invoices_id_payments_payment_id_delete**](InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_delete) | **DELETE** /finance/invoices/{id}/payments/{paymentId} | 
[**finance_invoices_id_payments_payment_id_get**](InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_get) | **GET** /finance/invoices/{id}/payments/{paymentId} | 
[**finance_invoices_id_payments_payment_id_patch**](InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_patch) | **PATCH** /finance/invoices/{id}/payments/{paymentId} | 
[**finance_invoices_id_payments_payment_id_put**](InvoicePaymentsApi.md#finance_invoices_id_payments_payment_id_put) | **PUT** /finance/invoices/{id}/payments/{paymentId} | 
[**finance_invoices_id_payments_post**](InvoicePaymentsApi.md#finance_invoices_id_payments_post) | **POST** /finance/invoices/{id}/payments | 


# **finance_invoices_id_payments_get**
> Array&lt;Payment&gt; finance_invoices_id_payments_get(id, opts)



Get Payments

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_invoices_id_payments_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Payment&gt;**](Payment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoices_id_payments_payment_id_delete**
> finance_invoices_id_payments_payment_id_delete(id, payment_id)



Delete Payment By Id

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

payment_id = 56 # Integer | 


begin
  api_instance.finance_invoices_id_payments_payment_id_delete(id, payment_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_payment_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_invoices_id_payments_payment_id_get**
> Payment finance_invoices_id_payments_payment_id_get(id, payment_id)



Get Payment By Id

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

payment_id = 56 # Integer | 


begin
  result = api_instance.finance_invoices_id_payments_payment_id_get(id, payment_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_payment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment_id** | **Integer**|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoices_id_payments_payment_id_patch**
> Payment finance_invoices_id_payments_payment_id_patch(id, payment_id, operations)



Update Payment

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

payment_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_invoices_id_payments_payment_id_patch(id, payment_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_payment_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoices_id_payments_payment_id_put**
> Payment finance_invoices_id_payments_payment_id_put(id, payment_id, payment)



Replace Payment

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

payment_id = 56 # Integer | 

payment = ConnectWise::Payment.new # Payment | 


begin
  result = api_instance.finance_invoices_id_payments_payment_id_put(id, payment_id, payment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_payment_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment_id** | **Integer**|  | 
 **payment** | [**Payment**](Payment.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoices_id_payments_post**
> Payment finance_invoices_id_payments_post(id, payment)



Create Payment

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

api_instance = ConnectWise::InvoicePaymentsApi.new

id = 56 # Integer | 

payment = ConnectWise::Payment.new # Payment | 


begin
  result = api_instance.finance_invoices_id_payments_post(id, payment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoicePaymentsApi->finance_invoices_id_payments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment** | [**Payment**](Payment.md)|  | 

### Return type

[**Payment**](Payment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




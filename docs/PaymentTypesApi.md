# ConnectWise::PaymentTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_payment_types_count_get**](PaymentTypesApi.md#expense_payment_types_count_get) | **GET** /expense/paymentTypes/count | 
[**expense_payment_types_get**](PaymentTypesApi.md#expense_payment_types_get) | **GET** /expense/paymentTypes | 
[**expense_payment_types_id_delete**](PaymentTypesApi.md#expense_payment_types_id_delete) | **DELETE** /expense/paymentTypes/{id} | 
[**expense_payment_types_id_get**](PaymentTypesApi.md#expense_payment_types_id_get) | **GET** /expense/paymentTypes/{id} | 
[**expense_payment_types_id_patch**](PaymentTypesApi.md#expense_payment_types_id_patch) | **PATCH** /expense/paymentTypes/{id} | 
[**expense_payment_types_id_put**](PaymentTypesApi.md#expense_payment_types_id_put) | **PUT** /expense/paymentTypes/{id} | 
[**expense_payment_types_post**](PaymentTypesApi.md#expense_payment_types_post) | **POST** /expense/paymentTypes | 


# **expense_payment_types_count_get**
> Count expense_payment_types_count_get(opts)



Get Payment Type Count

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

api_instance = ConnectWise::PaymentTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_payment_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_count_get: #{e}"
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



# **expense_payment_types_get**
> Array&lt;PaymentType&gt; expense_payment_types_get(opts)



Get Payment Type

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

api_instance = ConnectWise::PaymentTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_payment_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_get: #{e}"
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

[**Array&lt;PaymentType&gt;**](PaymentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_payment_types_id_delete**
> expense_payment_types_id_delete(id)



Delete Payment Type By Id

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

api_instance = ConnectWise::PaymentTypesApi.new

id = 56 # Integer | 


begin
  api_instance.expense_payment_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_id_delete: #{e}"
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



# **expense_payment_types_id_get**
> PaymentType expense_payment_types_id_get(id)



Get Payment Type By Id

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

api_instance = ConnectWise::PaymentTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_payment_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PaymentType**](PaymentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_payment_types_id_patch**
> PaymentType expense_payment_types_id_patch(id, operations)



Update Payment Type

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

api_instance = ConnectWise::PaymentTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.expense_payment_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PaymentType**](PaymentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_payment_types_id_put**
> PaymentType expense_payment_types_id_put(id, payment_type)



Replace Payment Type

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

api_instance = ConnectWise::PaymentTypesApi.new

id = 56 # Integer | 

payment_type = ConnectWise::PaymentType.new # PaymentType | 


begin
  result = api_instance.expense_payment_types_id_put(id, payment_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **payment_type** | [**PaymentType**](PaymentType.md)|  | 

### Return type

[**PaymentType**](PaymentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_payment_types_post**
> PaymentType expense_payment_types_post(payment_type)



Create Payment Type

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

api_instance = ConnectWise::PaymentTypesApi.new

payment_type = ConnectWise::PaymentType.new # PaymentType | 


begin
  result = api_instance.expense_payment_types_post(payment_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PaymentTypesApi->expense_payment_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_type** | [**PaymentType**](PaymentType.md)|  | 

### Return type

[**PaymentType**](PaymentType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




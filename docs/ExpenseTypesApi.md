# ConnectWise::ExpenseTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_types_count_get**](ExpenseTypesApi.md#expense_types_count_get) | **GET** /expense/types/count | 
[**expense_types_get**](ExpenseTypesApi.md#expense_types_get) | **GET** /expense/types | 
[**expense_types_id_delete**](ExpenseTypesApi.md#expense_types_id_delete) | **DELETE** /expense/types/{id} | 
[**expense_types_id_get**](ExpenseTypesApi.md#expense_types_id_get) | **GET** /expense/types/{id} | 
[**expense_types_id_patch**](ExpenseTypesApi.md#expense_types_id_patch) | **PATCH** /expense/types/{id} | 
[**expense_types_id_put**](ExpenseTypesApi.md#expense_types_id_put) | **PUT** /expense/types/{id} | 
[**expense_types_post**](ExpenseTypesApi.md#expense_types_post) | **POST** /expense/types | 


# **expense_types_count_get**
> Count expense_types_count_get(opts)



Get Expense Types Count

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

api_instance = ConnectWise::ExpenseTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_count_get: #{e}"
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



# **expense_types_get**
> Array&lt;ExpenseType&gt; expense_types_get(opts)



Get Expense Types

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

api_instance = ConnectWise::ExpenseTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_get: #{e}"
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

[**Array&lt;ExpenseType&gt;**](ExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_types_id_delete**
> expense_types_id_delete(id)



Delete Expense Type By Id

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

api_instance = ConnectWise::ExpenseTypesApi.new

id = 56 # Integer | 


begin
  api_instance.expense_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_id_delete: #{e}"
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



# **expense_types_id_get**
> ExpenseType expense_types_id_get(id)



Get Expense Type By Id

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

api_instance = ConnectWise::ExpenseTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ExpenseType**](ExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_types_id_patch**
> ExpenseType expense_types_id_patch(id, operations)



Update Expense Type

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

api_instance = ConnectWise::ExpenseTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.expense_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ExpenseType**](ExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_types_id_put**
> ExpenseType expense_types_id_put(id, expense_type)



Replace Expense Type

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

api_instance = ConnectWise::ExpenseTypesApi.new

id = 56 # Integer | 

expense_type = ConnectWise::ExpenseType.new # ExpenseType | 


begin
  result = api_instance.expense_types_id_put(id, expense_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type** | [**ExpenseType**](ExpenseType.md)|  | 

### Return type

[**ExpenseType**](ExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_types_post**
> ExpenseType expense_types_post(expense_type)



Create Expense Type

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

api_instance = ConnectWise::ExpenseTypesApi.new

expense_type = ConnectWise::ExpenseType.new # ExpenseType | 


begin
  result = api_instance.expense_types_post(expense_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypesApi->expense_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expense_type** | [**ExpenseType**](ExpenseType.md)|  | 

### Return type

[**ExpenseType**](ExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




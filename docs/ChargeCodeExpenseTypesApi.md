# ConnectWise::ChargeCodeExpenseTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_charge_codes_id_expense_types_count_get**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_count_get) | **GET** /time/chargeCodes/{id}/expenseTypes/count | 
[**time_charge_codes_id_expense_types_expense_type_id_delete**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_delete) | **DELETE** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} | 
[**time_charge_codes_id_expense_types_expense_type_id_get**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_get) | **GET** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} | 
[**time_charge_codes_id_expense_types_expense_type_id_patch**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_patch) | **PATCH** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} | 
[**time_charge_codes_id_expense_types_expense_type_id_put**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_expense_type_id_put) | **PUT** /time/chargeCodes/{id}/expenseTypes/{expenseTypeId} | 
[**time_charge_codes_id_expense_types_get**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_get) | **GET** /time/chargeCodes/{id}/expenseTypes | 
[**time_charge_codes_id_expense_types_post**](ChargeCodeExpenseTypesApi.md#time_charge_codes_id_expense_types_post) | **POST** /time/chargeCodes/{id}/expenseTypes | 


# **time_charge_codes_id_expense_types_count_get**
> Count time_charge_codes_id_expense_types_count_get(id, opts)



Get Charge Code Expense Entries Count

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_charge_codes_id_expense_types_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_count_get: #{e}"
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



# **time_charge_codes_id_expense_types_expense_type_id_delete**
> time_charge_codes_id_expense_types_expense_type_id_delete(id, expense_type_id)



Delete Charge Code Expense Type By Id

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

expense_type_id = 56 # Integer | 


begin
  api_instance.time_charge_codes_id_expense_types_expense_type_id_delete(id, expense_type_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_expense_type_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **time_charge_codes_id_expense_types_expense_type_id_get**
> ChargeCodeExpenseType time_charge_codes_id_expense_types_expense_type_id_get(id, expense_type_id)



Get Charge Code Expense Type By Id

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

expense_type_id = 56 # Integer | 


begin
  result = api_instance.time_charge_codes_id_expense_types_expense_type_id_get(id, expense_type_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_expense_type_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_id** | **Integer**|  | 

### Return type

[**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_charge_codes_id_expense_types_expense_type_id_patch**
> ChargeCodeExpenseType time_charge_codes_id_expense_types_expense_type_id_patch(id, expense_type_id, operations)



Update Charge Code Expense Type

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

expense_type_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_charge_codes_id_expense_types_expense_type_id_patch(id, expense_type_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_expense_type_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_charge_codes_id_expense_types_expense_type_id_put**
> ChargeCodeExpenseType time_charge_codes_id_expense_types_expense_type_id_put(id, expense_type_id, charge_code_expense_type)



Replace Charge Code Expense Type

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

expense_type_id = 56 # Integer | 

charge_code_expense_type = ConnectWise::ChargeCodeExpenseType.new # ChargeCodeExpenseType | 


begin
  result = api_instance.time_charge_codes_id_expense_types_expense_type_id_put(id, expense_type_id, charge_code_expense_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_expense_type_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_id** | **Integer**|  | 
 **charge_code_expense_type** | [**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)|  | 

### Return type

[**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_charge_codes_id_expense_types_get**
> Array&lt;ChargeCodeExpenseType&gt; time_charge_codes_id_expense_types_get(id, opts)



Get Charge Code Expense Entries

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

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
  result = api_instance.time_charge_codes_id_expense_types_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_get: #{e}"
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

[**Array&lt;ChargeCodeExpenseType&gt;**](ChargeCodeExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_charge_codes_id_expense_types_post**
> ChargeCodeExpenseType time_charge_codes_id_expense_types_post(id, charge_code_expense_type)



Create Charge Code Expense Type

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

api_instance = ConnectWise::ChargeCodeExpenseTypesApi.new

id = 56 # Integer | 

charge_code_expense_type = ConnectWise::ChargeCodeExpenseType.new # ChargeCodeExpenseType | 


begin
  result = api_instance.time_charge_codes_id_expense_types_post(id, charge_code_expense_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodeExpenseTypesApi->time_charge_codes_id_expense_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **charge_code_expense_type** | [**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)|  | 

### Return type

[**ChargeCodeExpenseType**](ChargeCodeExpenseType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




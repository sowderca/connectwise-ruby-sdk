# ConnectWise::TaxCodeExpenseTypeExemptionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_tax_codes_id_expense_type_exemptions_count_get**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_count_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions/count | 
[**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete) | **DELETE** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} | 
[**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} | 
[**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch) | **PATCH** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} | 
[**finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put) | **PUT** /finance/taxCodes/{id}/expenseTypeExemptions/{expenseTypeExemptionId} | 
[**finance_tax_codes_id_expense_type_exemptions_get**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_get) | **GET** /finance/taxCodes/{id}/expenseTypeExemptions | 
[**finance_tax_codes_id_expense_type_exemptions_post**](TaxCodeExpenseTypeExemptionsApi.md#finance_tax_codes_id_expense_type_exemptions_post) | **POST** /finance/taxCodes/{id}/expenseTypeExemptions | 


# **finance_tax_codes_id_expense_type_exemptions_count_get**
> Count finance_tax_codes_id_expense_type_exemptions_count_get(id, opts)



Get Expense Type Exemption Count

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_count_get: #{e}"
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



# **finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete**
> finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete(id, expense_type_exemption_id)



Delete Expense Type Exemption By Id

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

expense_type_exemption_id = 56 # Integer | 


begin
  api_instance.finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete(id, expense_type_exemption_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_exemption_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get**
> ExpenseTypeExemption finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get(id, expense_type_exemption_id)



Get Expense Type Exemption By Id

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

expense_type_exemption_id = 56 # Integer | 


begin
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get(id, expense_type_exemption_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_exemption_id** | **Integer**|  | 

### Return type

[**ExpenseTypeExemption**](ExpenseTypeExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch**
> ExpenseTypeExemption finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch(id, expense_type_exemption_id, operations)



Update Expense Type Exemption

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

expense_type_exemption_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch(id, expense_type_exemption_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_exemption_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ExpenseTypeExemption**](ExpenseTypeExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put**
> ExpenseTypeExemption finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put(id, expense_type_exemption_id, expense_type_exemption)



Replace Expense Type Exemption

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

expense_type_exemption_id = 56 # Integer | 

expense_type_exemption = ConnectWise::ExpenseTypeExemption.new # ExpenseTypeExemption | 


begin
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put(id, expense_type_exemption_id, expense_type_exemption)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_expense_type_exemption_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_exemption_id** | **Integer**|  | 
 **expense_type_exemption** | [**ExpenseTypeExemption**](ExpenseTypeExemption.md)|  | 

### Return type

[**ExpenseTypeExemption**](ExpenseTypeExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_expense_type_exemptions_get**
> Array&lt;ExpenseTypeExemption&gt; finance_tax_codes_id_expense_type_exemptions_get(id, opts)



Get Expense Type Exemption

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

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
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_get: #{e}"
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

[**Array&lt;ExpenseTypeExemption&gt;**](ExpenseTypeExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_expense_type_exemptions_post**
> ExpenseTypeExemption finance_tax_codes_id_expense_type_exemptions_post(id, expense_type_exemption)



Create Expense Type Exemption

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

api_instance = ConnectWise::TaxCodeExpenseTypeExemptionsApi.new

id = 56 # Integer | 

expense_type_exemption = ConnectWise::ExpenseTypeExemption.new # ExpenseTypeExemption | 


begin
  result = api_instance.finance_tax_codes_id_expense_type_exemptions_post(id, expense_type_exemption)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeExpenseTypeExemptionsApi->finance_tax_codes_id_expense_type_exemptions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_type_exemption** | [**ExpenseTypeExemption**](ExpenseTypeExemption.md)|  | 

### Return type

[**ExpenseTypeExemption**](ExpenseTypeExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




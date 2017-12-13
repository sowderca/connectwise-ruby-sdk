# ConnectWise::ExpenseTypeExternalIntegrationReferencesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_expense_type_external_integration_references_count_get**](ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_count_get) | **GET** /expense/expenseTypeExternalIntegrationReferences/count | 
[**expense_expense_type_external_integration_references_get**](ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_get) | **GET** /expense/expenseTypeExternalIntegrationReferences | 
[**expense_expense_type_external_integration_references_id_get**](ExpenseTypeExternalIntegrationReferencesApi.md#expense_expense_type_external_integration_references_id_get) | **GET** /expense/expenseTypeExternalIntegrationReferences/{id} | 


# **expense_expense_type_external_integration_references_count_get**
> Count expense_expense_type_external_integration_references_count_get(opts)



Get External Integration Reference Count

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

api_instance = ConnectWise::ExpenseTypeExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_expense_type_external_integration_references_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypeExternalIntegrationReferencesApi->expense_expense_type_external_integration_references_count_get: #{e}"
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



# **expense_expense_type_external_integration_references_get**
> Array&lt;ExpenseTypeExternalIntegrationReference&gt; expense_expense_type_external_integration_references_get(opts)



Get External Integration Referencet

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

api_instance = ConnectWise::ExpenseTypeExternalIntegrationReferencesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_expense_type_external_integration_references_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypeExternalIntegrationReferencesApi->expense_expense_type_external_integration_references_get: #{e}"
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

[**Array&lt;ExpenseTypeExternalIntegrationReference&gt;**](ExpenseTypeExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_expense_type_external_integration_references_id_get**
> ExpenseTypeExternalIntegrationReference expense_expense_type_external_integration_references_id_get(id)



Get External Integration Reference By Id

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

api_instance = ConnectWise::ExpenseTypeExternalIntegrationReferencesApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_expense_type_external_integration_references_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ExpenseTypeExternalIntegrationReferencesApi->expense_expense_type_external_integration_references_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ExpenseTypeExternalIntegrationReference**](ExpenseTypeExternalIntegrationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




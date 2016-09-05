# Connectwise::ExpenseEntriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expense_entries_count_get**](ExpenseEntriesApi.md#expense_entries_count_get) | **GET** /expense/entries/count | 
[**expense_entries_get**](ExpenseEntriesApi.md#expense_entries_get) | **GET** /expense/entries | 
[**expense_entries_id_delete**](ExpenseEntriesApi.md#expense_entries_id_delete) | **DELETE** /expense/entries/{id} | 
[**expense_entries_id_get**](ExpenseEntriesApi.md#expense_entries_id_get) | **GET** /expense/entries/{id} | 
[**expense_entries_id_patch**](ExpenseEntriesApi.md#expense_entries_id_patch) | **PATCH** /expense/entries/{id} | 
[**expense_entries_id_put**](ExpenseEntriesApi.md#expense_entries_id_put) | **PUT** /expense/entries/{id} | 
[**expense_entries_post**](ExpenseEntriesApi.md#expense_entries_post) | **POST** /expense/entries | 


# **expense_entries_count_get**
> Count expense_entries_count_get(opts)



Get Expense Entries Count

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

api_instance = Connectwise::ExpenseEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.expense_entries_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_count_get: #{e}"
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



# **expense_entries_get**
> Array&lt;ExpenseEntry&gt; expense_entries_get(opts)



Get Expense Entries

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

api_instance = Connectwise::ExpenseEntriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.expense_entries_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_get: #{e}"
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

[**Array&lt;ExpenseEntry&gt;**](ExpenseEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_entries_id_delete**
> expense_entries_id_delete(id)



Delete Expense Entry By Id

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

api_instance = Connectwise::ExpenseEntriesApi.new

id = 56 # Integer | 


begin
  api_instance.expense_entries_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_id_delete: #{e}"
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



# **expense_entries_id_get**
> ExpenseEntry expense_entries_id_get(id)



Get Expense Entry By Id

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

api_instance = Connectwise::ExpenseEntriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.expense_entries_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ExpenseEntry**](ExpenseEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **expense_entries_id_patch**
> ExpenseEntry expense_entries_id_patch(id, operations)



Update Expense Entry

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

api_instance = Connectwise::ExpenseEntriesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.expense_entries_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ExpenseEntry**](ExpenseEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_entries_id_put**
> ExpenseEntry expense_entries_id_put(id, expense_entry)



Replace Expense Entry

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

api_instance = Connectwise::ExpenseEntriesApi.new

id = 56 # Integer | 

expense_entry = Connectwise::ExpenseEntry.new # ExpenseEntry | 


begin
  result = api_instance.expense_entries_id_put(id, expense_entry)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **expense_entry** | [**ExpenseEntry**](ExpenseEntry.md)|  | 

### Return type

[**ExpenseEntry**](ExpenseEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **expense_entries_post**
> ExpenseEntry expense_entries_post(expense_entry)



Create Expense Entry

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

api_instance = Connectwise::ExpenseEntriesApi.new

expense_entry = Connectwise::ExpenseEntry.new # ExpenseEntry | 


begin
  result = api_instance.expense_entries_post(expense_entry)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ExpenseEntriesApi->expense_entries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expense_entry** | [**ExpenseEntry**](ExpenseEntry.md)|  | 

### Return type

[**ExpenseEntry**](ExpenseEntry.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




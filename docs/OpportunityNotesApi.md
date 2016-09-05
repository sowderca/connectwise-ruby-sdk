# Connectwise::OpportunityNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_id_notes_count_get**](OpportunityNotesApi.md#sales_opportunities_id_notes_count_get) | **GET** /sales/opportunities/{id}/notes/count | 
[**sales_opportunities_id_notes_get**](OpportunityNotesApi.md#sales_opportunities_id_notes_get) | **GET** /sales/opportunities/{id}/notes | 
[**sales_opportunities_id_notes_note_id_delete**](OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_delete) | **DELETE** /sales/opportunities/{id}/notes/{noteId} | 
[**sales_opportunities_id_notes_note_id_get**](OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_get) | **GET** /sales/opportunities/{id}/notes/{noteId} | 
[**sales_opportunities_id_notes_note_id_patch**](OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_patch) | **PATCH** /sales/opportunities/{id}/notes/{noteId} | 
[**sales_opportunities_id_notes_note_id_put**](OpportunityNotesApi.md#sales_opportunities_id_notes_note_id_put) | **PUT** /sales/opportunities/{id}/notes/{noteId} | 
[**sales_opportunities_id_notes_post**](OpportunityNotesApi.md#sales_opportunities_id_notes_post) | **POST** /sales/opportunities/{id}/notes | 


# **sales_opportunities_id_notes_count_get**
> Array&lt;OpportunityNote&gt; sales_opportunities_id_notes_count_get(id, opts)



Get Opportunity Notes Count

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_id_notes_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Array&lt;OpportunityNote&gt;**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_notes_get**
> Array&lt;OpportunityNote&gt; sales_opportunities_id_notes_get(id, opts)



Get Opportunity Notes

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_id_notes_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;OpportunityNote&gt;**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_notes_note_id_delete**
> sales_opportunities_id_notes_note_id_delete(id, note_id)



Delete Opportunity Note By Id

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  api_instance.sales_opportunities_id_notes_note_id_delete(id, note_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_note_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **sales_opportunities_id_notes_note_id_get**
> OpportunityNote sales_opportunities_id_notes_note_id_get(id, note_id)



Get Opportunity Note By Id

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_id_notes_note_id_get(id, note_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

[**OpportunityNote**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_notes_note_id_patch**
> OpportunityNote sales_opportunities_id_notes_note_id_patch(id, note_id, operations)



Update Opportunity Note

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_id_notes_note_id_patch(id, note_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityNote**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_notes_note_id_put**
> OpportunityNote sales_opportunities_id_notes_note_id_put(id, note_id, note)



Replace Opportunity Note

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

note = Connectwise::OpportunityNote.new # OpportunityNote | 


begin
  result = api_instance.sales_opportunities_id_notes_note_id_put(id, note_id, note)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **note** | [**OpportunityNote**](OpportunityNote.md)|  | 

### Return type

[**OpportunityNote**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_notes_post**
> OpportunityNote sales_opportunities_id_notes_post(id, note)



Create Opportunity Note

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

api_instance = Connectwise::OpportunityNotesApi.new

id = 56 # Integer | 

note = Connectwise::OpportunityNote.new # OpportunityNote | 


begin
  result = api_instance.sales_opportunities_id_notes_post(id, note)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityNotesApi->sales_opportunities_id_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note** | [**OpportunityNote**](OpportunityNote.md)|  | 

### Return type

[**OpportunityNote**](OpportunityNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




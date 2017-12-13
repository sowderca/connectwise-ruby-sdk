# ConnectWise::ContactNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_id_notes_count_get**](ContactNotesApi.md#company_contacts_id_notes_count_get) | **GET** /company/contacts/{id}/notes/count | 
[**company_contacts_id_notes_get**](ContactNotesApi.md#company_contacts_id_notes_get) | **GET** /company/contacts/{id}/notes | 
[**company_contacts_id_notes_note_id_delete**](ContactNotesApi.md#company_contacts_id_notes_note_id_delete) | **DELETE** /company/contacts/{id}/notes/{noteId} | 
[**company_contacts_id_notes_note_id_get**](ContactNotesApi.md#company_contacts_id_notes_note_id_get) | **GET** /company/contacts/{id}/notes/{noteId} | 
[**company_contacts_id_notes_note_id_patch**](ContactNotesApi.md#company_contacts_id_notes_note_id_patch) | **PATCH** /company/contacts/{id}/notes/{noteId} | 
[**company_contacts_id_notes_note_id_put**](ContactNotesApi.md#company_contacts_id_notes_note_id_put) | **PUT** /company/contacts/{id}/notes/{noteId} | 
[**company_contacts_id_notes_post**](ContactNotesApi.md#company_contacts_id_notes_post) | **POST** /company/contacts/{id}/notes | 


# **company_contacts_id_notes_count_get**
> Count company_contacts_id_notes_count_get(id, opts)



Get Contact Notes Count

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_contacts_id_notes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_count_get: #{e}"
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



# **company_contacts_id_notes_get**
> Array&lt;ContactNote&gt; company_contacts_id_notes_get(id, opts)



Get Contact Notes

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

api_instance = ConnectWise::ContactNotesApi.new

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
  result = api_instance.company_contacts_id_notes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_get: #{e}"
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

[**Array&lt;ContactNote&gt;**](ContactNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_notes_note_id_delete**
> company_contacts_id_notes_note_id_delete(id, note_id)



Delete Contact Note By Id

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  api_instance.company_contacts_id_notes_note_id_delete(id, note_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_note_id_delete: #{e}"
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



# **company_contacts_id_notes_note_id_get**
> ContactNote company_contacts_id_notes_note_id_get(id, note_id)



Get Contact Note By Id

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_notes_note_id_get(id, note_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

[**ContactNote**](ContactNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_notes_note_id_patch**
> ContactNote company_contacts_id_notes_note_id_patch(id, note_id, operations)



Update Contact Note

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_id_notes_note_id_patch(id, note_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactNote**](ContactNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_notes_note_id_put**
> ContactNote company_contacts_id_notes_note_id_put(id, note_id, contact_note)



Replace Contact Note

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

contact_note = ConnectWise::ContactNote.new # ContactNote | 


begin
  result = api_instance.company_contacts_id_notes_note_id_put(id, note_id, contact_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **contact_note** | [**ContactNote**](ContactNote.md)|  | 

### Return type

[**ContactNote**](ContactNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_notes_post**
> ContactNote company_contacts_id_notes_post(id, contact_note)



Create Contact Note

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

api_instance = ConnectWise::ContactNotesApi.new

id = 56 # Integer | 

contact_note = ConnectWise::ContactNote.new # ContactNote | 


begin
  result = api_instance.company_contacts_id_notes_post(id, contact_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactNotesApi->company_contacts_id_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_note** | [**ContactNote**](ContactNote.md)|  | 

### Return type

[**ContactNote**](ContactNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::CompanyNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_notes_count_get**](CompanyNotesApi.md#company_companies_id_notes_count_get) | **GET** /company/companies/{id}/notes/count | 
[**company_companies_id_notes_get**](CompanyNotesApi.md#company_companies_id_notes_get) | **GET** /company/companies/{id}/notes | 
[**company_companies_id_notes_note_id_delete**](CompanyNotesApi.md#company_companies_id_notes_note_id_delete) | **DELETE** /company/companies/{id}/notes/{noteId} | 
[**company_companies_id_notes_note_id_get**](CompanyNotesApi.md#company_companies_id_notes_note_id_get) | **GET** /company/companies/{id}/notes/{noteId} | 
[**company_companies_id_notes_note_id_patch**](CompanyNotesApi.md#company_companies_id_notes_note_id_patch) | **PATCH** /company/companies/{id}/notes/{noteId} | 
[**company_companies_id_notes_note_id_put**](CompanyNotesApi.md#company_companies_id_notes_note_id_put) | **PUT** /company/companies/{id}/notes/{noteId} | 
[**company_companies_id_notes_post**](CompanyNotesApi.md#company_companies_id_notes_post) | **POST** /company/companies/{id}/notes | 


# **company_companies_id_notes_count_get**
> Count company_companies_id_notes_count_get(id, opts)



Get Company Notes Count

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_companies_id_notes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_count_get: #{e}"
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



# **company_companies_id_notes_get**
> Array&lt;CompanyNote&gt; company_companies_id_notes_get(id, opts)



Get Company Notes

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_id_notes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_get: #{e}"
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

[**Array&lt;CompanyNote&gt;**](CompanyNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_notes_note_id_delete**
> company_companies_id_notes_note_id_delete(id, note_id)



Delete Company Note By Id

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  api_instance.company_companies_id_notes_note_id_delete(id, note_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_note_id_delete: #{e}"
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



# **company_companies_id_notes_note_id_get**
> CompanyNote company_companies_id_notes_note_id_get(id, note_id)



Get Company Note By Id

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_notes_note_id_get(id, note_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

[**CompanyNote**](CompanyNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_notes_note_id_patch**
> CompanyNote company_companies_id_notes_note_id_patch(id, note_id, operations)



Update Company Note

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_notes_note_id_patch(id, note_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyNote**](CompanyNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_notes_note_id_put**
> CompanyNote company_companies_id_notes_note_id_put(id, note_id, company_note)



Replace Company Note

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

company_note = ConnectWise::CompanyNote.new # CompanyNote | 


begin
  result = api_instance.company_companies_id_notes_note_id_put(id, note_id, company_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **company_note** | [**CompanyNote**](CompanyNote.md)|  | 

### Return type

[**CompanyNote**](CompanyNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_notes_post**
> CompanyNote company_companies_id_notes_post(id, company_note)



Create Company Note

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

api_instance = ConnectWise::CompanyNotesApi.new

id = 56 # Integer | 

company_note = ConnectWise::CompanyNote.new # CompanyNote | 


begin
  result = api_instance.company_companies_id_notes_post(id, company_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNotesApi->company_companies_id_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_note** | [**CompanyNote**](CompanyNote.md)|  | 

### Return type

[**CompanyNote**](CompanyNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::CompanyCustomNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_custom_status_notes_count_get**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_count_get) | **GET** /company/companies/{id}/customStatusNotes/count | 
[**company_companies_id_custom_status_notes_custom_note_id_delete**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_delete) | **DELETE** /company/companies/{id}/customStatusNotes/{customNoteId} | 
[**company_companies_id_custom_status_notes_custom_note_id_get**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_get) | **GET** /company/companies/{id}/customStatusNotes/{customNoteId} | 
[**company_companies_id_custom_status_notes_custom_note_id_patch**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_patch) | **PATCH** /company/companies/{id}/customStatusNotes/{customNoteId} | 
[**company_companies_id_custom_status_notes_custom_note_id_put**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_custom_note_id_put) | **PUT** /company/companies/{id}/customStatusNotes/{customNoteId} | 
[**company_companies_id_custom_status_notes_get**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_get) | **GET** /company/companies/{id}/customStatusNotes | 
[**company_companies_id_custom_status_notes_post**](CompanyCustomNotesApi.md#company_companies_id_custom_status_notes_post) | **POST** /company/companies/{id}/customStatusNotes | 


# **company_companies_id_custom_status_notes_count_get**
> Count company_companies_id_custom_status_notes_count_get(id, opts)



Get Custom Note Count

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_companies_id_custom_status_notes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_count_get: #{e}"
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



# **company_companies_id_custom_status_notes_custom_note_id_delete**
> company_companies_id_custom_status_notes_custom_note_id_delete(id, custom_note_id)



Delete Custom Note By Id

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

custom_note_id = 56 # Integer | 


begin
  api_instance.company_companies_id_custom_status_notes_custom_note_id_delete(id, custom_note_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_custom_note_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_note_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_companies_id_custom_status_notes_custom_note_id_get**
> CompanyCustomNote company_companies_id_custom_status_notes_custom_note_id_get(id, custom_note_id)



Get Custom Note By Id

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

custom_note_id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_custom_status_notes_custom_note_id_get(id, custom_note_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_custom_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_note_id** | **Integer**|  | 

### Return type

[**CompanyCustomNote**](CompanyCustomNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_custom_status_notes_custom_note_id_patch**
> CompanyCustomNote company_companies_id_custom_status_notes_custom_note_id_patch(id, custom_note_id, operations)



Update Custom Note

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

custom_note_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_custom_status_notes_custom_note_id_patch(id, custom_note_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_custom_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyCustomNote**](CompanyCustomNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_custom_status_notes_custom_note_id_put**
> CompanyCustomNote company_companies_id_custom_status_notes_custom_note_id_put(id, custom_note_id, custom_note)



Replace Custom Note

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

custom_note_id = 56 # Integer | 

custom_note = ConnectWise::CompanyCustomNote.new # CompanyCustomNote | 


begin
  result = api_instance.company_companies_id_custom_status_notes_custom_note_id_put(id, custom_note_id, custom_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_custom_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_note_id** | **Integer**|  | 
 **custom_note** | [**CompanyCustomNote**](CompanyCustomNote.md)|  | 

### Return type

[**CompanyCustomNote**](CompanyCustomNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_custom_status_notes_get**
> Array&lt;CompanyCustomNote&gt; company_companies_id_custom_status_notes_get(id, opts)



Get Custom Note

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

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
  result = api_instance.company_companies_id_custom_status_notes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_get: #{e}"
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

[**Array&lt;CompanyCustomNote&gt;**](CompanyCustomNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_custom_status_notes_post**
> CompanyCustomNote company_companies_id_custom_status_notes_post(id, custom_note)



Create Custom Note

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

api_instance = ConnectWise::CompanyCustomNotesApi.new

id = 56 # Integer | 

custom_note = ConnectWise::CompanyCustomNote.new # CompanyCustomNote | 


begin
  result = api_instance.company_companies_id_custom_status_notes_post(id, custom_note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyCustomNotesApi->company_companies_id_custom_status_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_note** | [**CompanyCustomNote**](CompanyCustomNote.md)|  | 

### Return type

[**CompanyCustomNote**](CompanyCustomNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




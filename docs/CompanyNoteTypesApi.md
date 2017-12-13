# ConnectWise::CompanyNoteTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_note_types_count_get**](CompanyNoteTypesApi.md#company_note_types_count_get) | **GET** /company/noteTypes/count | 
[**company_note_types_get**](CompanyNoteTypesApi.md#company_note_types_get) | **GET** /company/noteTypes | 
[**company_note_types_id_delete**](CompanyNoteTypesApi.md#company_note_types_id_delete) | **DELETE** /company/noteTypes/{id} | 
[**company_note_types_id_get**](CompanyNoteTypesApi.md#company_note_types_id_get) | **GET** /company/noteTypes/{id} | 
[**company_note_types_id_patch**](CompanyNoteTypesApi.md#company_note_types_id_patch) | **PATCH** /company/noteTypes/{id} | 
[**company_note_types_id_put**](CompanyNoteTypesApi.md#company_note_types_id_put) | **PUT** /company/noteTypes/{id} | 
[**company_note_types_post**](CompanyNoteTypesApi.md#company_note_types_post) | **POST** /company/noteTypes | 


# **company_note_types_count_get**
> Count company_note_types_count_get(opts)



Get Note Type Count

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_note_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_count_get: #{e}"
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



# **company_note_types_get**
> Array&lt;NoteType&gt; company_note_types_get(opts)



Get Note Type

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_note_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_get: #{e}"
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

[**Array&lt;NoteType&gt;**](NoteType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_note_types_id_delete**
> company_note_types_id_delete(id)



Delete Note Type By Id

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

id = 56 # Integer | 


begin
  api_instance.company_note_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_id_delete: #{e}"
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



# **company_note_types_id_get**
> NoteType company_note_types_id_get(id)



Get Note Type By Id

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_note_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**NoteType**](NoteType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_note_types_id_patch**
> NoteType company_note_types_id_patch(id, operations)



Update Note Type

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_note_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**NoteType**](NoteType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_note_types_id_put**
> NoteType company_note_types_id_put(id, note_type)



Replace Note Type

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

id = 56 # Integer | 

note_type = ConnectWise::NoteType.new # NoteType | 


begin
  result = api_instance.company_note_types_id_put(id, note_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_type** | [**NoteType**](NoteType.md)|  | 

### Return type

[**NoteType**](NoteType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_note_types_post**
> NoteType company_note_types_post(note_type)



Create Note Type

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

api_instance = ConnectWise::CompanyNoteTypesApi.new

note_type = ConnectWise::NoteType.new # NoteType | 


begin
  result = api_instance.company_note_types_post(note_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyNoteTypesApi->company_note_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **note_type** | [**NoteType**](NoteType.md)|  | 

### Return type

[**NoteType**](NoteType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




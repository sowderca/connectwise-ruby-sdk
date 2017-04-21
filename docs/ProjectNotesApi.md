# ConnectWise::ProjectNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_projects_id_notes_count_get**](ProjectNotesApi.md#project_projects_id_notes_count_get) | **GET** /project/projects/{id}/notes/count | 
[**project_projects_id_notes_get**](ProjectNotesApi.md#project_projects_id_notes_get) | **GET** /project/projects/{id}/notes | 
[**project_projects_id_notes_note_id_delete**](ProjectNotesApi.md#project_projects_id_notes_note_id_delete) | **DELETE** /project/projects/{id}/notes/{noteId} | 
[**project_projects_id_notes_note_id_get**](ProjectNotesApi.md#project_projects_id_notes_note_id_get) | **GET** /project/projects/{id}/notes/{noteId} | 
[**project_projects_id_notes_note_id_patch**](ProjectNotesApi.md#project_projects_id_notes_note_id_patch) | **PATCH** /project/projects/{id}/notes/{noteId} | 
[**project_projects_id_notes_note_id_put**](ProjectNotesApi.md#project_projects_id_notes_note_id_put) | **PUT** /project/projects/{id}/notes/{noteId} | 
[**project_projects_id_notes_post**](ProjectNotesApi.md#project_projects_id_notes_post) | **POST** /project/projects/{id}/notes | 


# **project_projects_id_notes_count_get**
> Count project_projects_id_notes_count_get(id, opts)



Get Project Notes Count

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.project_projects_id_notes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_count_get: #{e}"
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



# **project_projects_id_notes_get**
> Array&lt;ProjectNote&gt; project_projects_id_notes_get(id, opts)



Get Project Notes

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

api_instance = ConnectWise::ProjectNotesApi.new

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
  result = api_instance.project_projects_id_notes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_get: #{e}"
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

[**Array&lt;ProjectNote&gt;**](ProjectNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_notes_note_id_delete**
> project_projects_id_notes_note_id_delete(id, note_id)



Delete Project Note By Id

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  api_instance.project_projects_id_notes_note_id_delete(id, note_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_note_id_delete: #{e}"
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



# **project_projects_id_notes_note_id_get**
> ProjectNote project_projects_id_notes_note_id_get(id, note_id)



Get Project Note By Id

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  result = api_instance.project_projects_id_notes_note_id_get(id, note_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

[**ProjectNote**](ProjectNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_notes_note_id_patch**
> ProjectNote project_projects_id_notes_note_id_patch(id, note_id, operations)



Update Project Note

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.project_projects_id_notes_note_id_patch(id, note_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectNote**](ProjectNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_notes_note_id_put**
> ProjectNote project_projects_id_notes_note_id_put(id, note_id, note)



Replace Project Note

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

note = ConnectWise::ProjectNote.new # ProjectNote | 


begin
  result = api_instance.project_projects_id_notes_note_id_put(id, note_id, note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **note** | [**ProjectNote**](ProjectNote.md)|  | 

### Return type

[**ProjectNote**](ProjectNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_notes_post**
> ProjectNote project_projects_id_notes_post(id, note)



Create Project Note

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

api_instance = ConnectWise::ProjectNotesApi.new

id = 56 # Integer | 

note = ConnectWise::ProjectNote.new # ProjectNote | 


begin
  result = api_instance.project_projects_id_notes_post(id, note)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectNotesApi->project_projects_id_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note** | [**ProjectNote**](ProjectNote.md)|  | 

### Return type

[**ProjectNote**](ProjectNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




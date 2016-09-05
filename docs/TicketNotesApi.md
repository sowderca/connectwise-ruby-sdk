# Connectwise::TicketNotesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_tickets_id_notes_count_get**](TicketNotesApi.md#service_tickets_id_notes_count_get) | **GET** /service/tickets/{id}/notes/count | 
[**service_tickets_id_notes_get**](TicketNotesApi.md#service_tickets_id_notes_get) | **GET** /service/tickets/{id}/notes | 
[**service_tickets_id_notes_note_id_delete**](TicketNotesApi.md#service_tickets_id_notes_note_id_delete) | **DELETE** /service/tickets/{id}/notes/{noteId} | 
[**service_tickets_id_notes_note_id_get**](TicketNotesApi.md#service_tickets_id_notes_note_id_get) | **GET** /service/tickets/{id}/notes/{noteId} | 
[**service_tickets_id_notes_note_id_patch**](TicketNotesApi.md#service_tickets_id_notes_note_id_patch) | **PATCH** /service/tickets/{id}/notes/{noteId} | 
[**service_tickets_id_notes_note_id_put**](TicketNotesApi.md#service_tickets_id_notes_note_id_put) | **PUT** /service/tickets/{id}/notes/{noteId} | 
[**service_tickets_id_notes_post**](TicketNotesApi.md#service_tickets_id_notes_post) | **POST** /service/tickets/{id}/notes | 


# **service_tickets_id_notes_count_get**
> Count service_tickets_id_notes_count_get(id, opts)



Get Service Notes Count

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_tickets_id_notes_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_count_get: #{e}"
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



# **service_tickets_id_notes_get**
> Array&lt;ServiceNote&gt; service_tickets_id_notes_get(id, opts)



Get Service Notes

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_tickets_id_notes_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_get: #{e}"
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

[**Array&lt;ServiceNote&gt;**](ServiceNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_notes_note_id_delete**
> service_tickets_id_notes_note_id_delete(id, note_id)



Delete Service Note By Id

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  api_instance.service_tickets_id_notes_note_id_delete(id, note_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_note_id_delete: #{e}"
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



# **service_tickets_id_notes_note_id_get**
> ServiceNote service_tickets_id_notes_note_id_get(id, note_id)



Get Service Note By Id

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_notes_note_id_get(id, note_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_note_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 

### Return type

[**ServiceNote**](ServiceNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_notes_note_id_patch**
> ServiceNote service_tickets_id_notes_note_id_patch(id, note_id, operations)



Update Service Note

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_tickets_id_notes_note_id_patch(id, note_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_note_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceNote**](ServiceNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_notes_note_id_put**
> ServiceNote service_tickets_id_notes_note_id_put(id, note_id, service_note)



Replace Service Note

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

note_id = 56 # Integer | 

service_note = Connectwise::ServiceNote.new # ServiceNote | 


begin
  result = api_instance.service_tickets_id_notes_note_id_put(id, note_id, service_note)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_note_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **note_id** | **Integer**|  | 
 **service_note** | [**ServiceNote**](ServiceNote.md)|  | 

### Return type

[**ServiceNote**](ServiceNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_notes_post**
> ServiceNote service_tickets_id_notes_post(id, service_note)



Create Service Note

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

api_instance = Connectwise::TicketNotesApi.new

id = 56 # Integer | 

service_note = Connectwise::ServiceNote.new # ServiceNote | 


begin
  result = api_instance.service_tickets_id_notes_post(id, service_note)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling TicketNotesApi->service_tickets_id_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_note** | [**ServiceNote**](ServiceNote.md)|  | 

### Return type

[**ServiceNote**](ServiceNote.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




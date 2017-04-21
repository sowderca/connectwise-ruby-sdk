# ConnectWise::DocumentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_documents_count_get**](DocumentsApi.md#system_documents_count_get) | **GET** /system/documents/count | 
[**system_documents_get**](DocumentsApi.md#system_documents_get) | **GET** /system/documents | 
[**system_documents_id_delete**](DocumentsApi.md#system_documents_id_delete) | **DELETE** /system/documents/{id} | 
[**system_documents_id_download_get**](DocumentsApi.md#system_documents_id_download_get) | **GET** /system/documents/{id}/download | 
[**system_documents_id_get**](DocumentsApi.md#system_documents_id_get) | **GET** /system/documents/{id} | 
[**system_documents_id_post**](DocumentsApi.md#system_documents_id_post) | **POST** /system/documents/{id} | 
[**system_documents_post**](DocumentsApi.md#system_documents_post) | **POST** /system/documents | 
[**system_documents_uploadsample_get**](DocumentsApi.md#system_documents_uploadsample_get) | **GET** /system/documents/uploadsample | 


# **system_documents_count_get**
> Count system_documents_count_get(opts)



Get Documents Info Count

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

api_instance = ConnectWise::DocumentsApi.new

opts = { 
  record_type: "record_type_example", # String | 
  record_id: 56 # Integer | 
}

begin
  result = api_instance.system_documents_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **record_type** | **String**|  | [optional] 
 **record_id** | **Integer**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_documents_get**
> Array&lt;DocumentInfo&gt; system_documents_get(opts)



Get Documents Info

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

api_instance = ConnectWise::DocumentsApi.new

opts = { 
  record_type: "record_type_example", # String | 
  record_id: 56 # Integer | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_documents_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **record_type** | **String**|  | [optional] 
 **record_id** | **Integer**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;DocumentInfo&gt;**](DocumentInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_documents_id_delete**
> system_documents_id_delete(id)



Delete Document Info By Id

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

api_instance = ConnectWise::DocumentsApi.new

id = 56 # Integer | 


begin
  api_instance.system_documents_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_id_delete: #{e}"
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



# **system_documents_id_download_get**
> system_documents_id_download_get(id, opts)



Download Document

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

api_instance = ConnectWise::DocumentsApi.new

id = 56 # Integer | 

opts = { 
  last_modified: "last_modified_example" # String | 
}

begin
  api_instance.system_documents_id_download_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_id_download_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **last_modified** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **system_documents_id_get**
> DocumentInfo system_documents_id_get(id)



Get Document Info By Id

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

api_instance = ConnectWise::DocumentsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_documents_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**DocumentInfo**](DocumentInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_documents_id_post**
> DocumentInfo system_documents_id_post(id, record_id, record_type, title, url, opts)



Update Document By Id

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

api_instance = ConnectWise::DocumentsApi.new

id = 56 # Integer | 

record_id = 56 # Integer | Entity id

record_type = "record_type_example" # String | Entity type

title = "title_example" # String | Document title

url = "url_example" # String | Document url

opts = { 
  file: File.new("/path/to/file.txt"), # File | File to upload
  private_flag: true, # BOOLEAN | Indicates if document is private
  read_only_flag: true # BOOLEAN | Indicates if document is readonly
}

begin
  result = api_instance.system_documents_id_post(id, record_id, record_type, title, url, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **record_id** | **Integer**| Entity id | 
 **record_type** | **String**| Entity type | 
 **title** | **String**| Document title | 
 **url** | **String**| Document url | 
 **file** | **File**| File to upload | [optional] 
 **private_flag** | **BOOLEAN**| Indicates if document is private | [optional] 
 **read_only_flag** | **BOOLEAN**| Indicates if document is readonly | [optional] 

### Return type

[**DocumentInfo**](DocumentInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **system_documents_post**
> DocumentInfo system_documents_post(record_id, record_type, title, url, opts)



Insert Document

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

api_instance = ConnectWise::DocumentsApi.new

record_id = 56 # Integer | Entity id

record_type = "record_type_example" # String | Entity type

title = "title_example" # String | Document title

url = "url_example" # String | Document url

opts = { 
  file: File.new("/path/to/file.txt"), # File | File to upload
  private_flag: true, # BOOLEAN | Indicates if document is private
  read_only_flag: true # BOOLEAN | Indicates if document is readonly
}

begin
  result = api_instance.system_documents_post(record_id, record_type, title, url, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **record_id** | **Integer**| Entity id | 
 **record_type** | **String**| Entity type | 
 **title** | **String**| Document title | 
 **url** | **String**| Document url | 
 **file** | **File**| File to upload | [optional] 
 **private_flag** | **BOOLEAN**| Indicates if document is private | [optional] 
 **read_only_flag** | **BOOLEAN**| Indicates if document is readonly | [optional] 

### Return type

[**DocumentInfo**](DocumentInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **system_documents_uploadsample_get**
> system_documents_uploadsample_get



Get Upload Sample Page

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

api_instance = ConnectWise::DocumentsApi.new

begin
  api_instance.system_documents_uploadsample_get
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsApi->system_documents_uploadsample_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html




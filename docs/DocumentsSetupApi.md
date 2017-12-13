# ConnectWise::DocumentsSetupApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_mycompany_documents_get**](DocumentsSetupApi.md#system_mycompany_documents_get) | **GET** /system/mycompany/documents | 
[**system_mycompany_documents_id_get**](DocumentsSetupApi.md#system_mycompany_documents_id_get) | **GET** /system/mycompany/documents/{id} | 
[**system_mycompany_documents_id_patch**](DocumentsSetupApi.md#system_mycompany_documents_id_patch) | **PATCH** /system/mycompany/documents/{id} | 
[**system_mycompany_documents_id_put**](DocumentsSetupApi.md#system_mycompany_documents_id_put) | **PUT** /system/mycompany/documents/{id} | 


# **system_mycompany_documents_get**
> Array&lt;DocumentSetup&gt; system_mycompany_documents_get(opts)



Get Documents

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

api_instance = ConnectWise::DocumentsSetupApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_mycompany_documents_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsSetupApi->system_mycompany_documents_get: #{e}"
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

[**Array&lt;DocumentSetup&gt;**](DocumentSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_documents_id_get**
> DocumentSetup system_mycompany_documents_id_get(id)



Get Document By Id

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

api_instance = ConnectWise::DocumentsSetupApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_documents_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsSetupApi->system_mycompany_documents_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**DocumentSetup**](DocumentSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_documents_id_patch**
> DocumentSetup system_mycompany_documents_id_patch(id, operations)



Update Document

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

api_instance = ConnectWise::DocumentsSetupApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_mycompany_documents_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsSetupApi->system_mycompany_documents_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**DocumentSetup**](DocumentSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_documents_id_put**
> DocumentSetup system_mycompany_documents_id_put(id, document)



Replace Document

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

api_instance = ConnectWise::DocumentsSetupApi.new

id = 56 # Integer | 

document = ConnectWise::DocumentSetup.new # DocumentSetup | 


begin
  result = api_instance.system_mycompany_documents_id_put(id, document)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DocumentsSetupApi->system_mycompany_documents_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **document** | [**DocumentSetup**](DocumentSetup.md)|  | 

### Return type

[**DocumentSetup**](DocumentSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




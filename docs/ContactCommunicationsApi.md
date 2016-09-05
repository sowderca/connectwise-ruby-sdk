# Connectwise::ContactCommunicationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_id_communications_communication_id_delete**](ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_delete) | **DELETE** /company/contacts/{id}/communications/{communicationId} | 
[**company_contacts_id_communications_communication_id_get**](ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_get) | **GET** /company/contacts/{id}/communications/{communicationId} | 
[**company_contacts_id_communications_communication_id_patch**](ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_patch) | **PATCH** /company/contacts/{id}/communications/{communicationId} | 
[**company_contacts_id_communications_communication_id_put**](ContactCommunicationsApi.md#company_contacts_id_communications_communication_id_put) | **PUT** /company/contacts/{id}/communications/{communicationId} | 
[**company_contacts_id_communications_count_get**](ContactCommunicationsApi.md#company_contacts_id_communications_count_get) | **GET** /company/contacts/{id}/communications/count | 
[**company_contacts_id_communications_get**](ContactCommunicationsApi.md#company_contacts_id_communications_get) | **GET** /company/contacts/{id}/communications | 
[**company_contacts_id_communications_post**](ContactCommunicationsApi.md#company_contacts_id_communications_post) | **POST** /company/contacts/{id}/communications | 


# **company_contacts_id_communications_communication_id_delete**
> company_contacts_id_communications_communication_id_delete(id, communication_id)



Delete Contact Communication By Id

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

communication_id = 56 # Integer | 


begin
  api_instance.company_contacts_id_communications_communication_id_delete(id, communication_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_communication_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **communication_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_contacts_id_communications_communication_id_get**
> ContactCommunication company_contacts_id_communications_communication_id_get(id, communication_id)



Get Contact Communication By Id

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

communication_id = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_communications_communication_id_get(id, communication_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_communication_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **communication_id** | **Integer**|  | 

### Return type

[**ContactCommunication**](ContactCommunication.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_communications_communication_id_patch**
> ContactCommunication company_contacts_id_communications_communication_id_patch(id, communication_id, operations)



Update Contact Communication

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

communication_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_id_communications_communication_id_patch(id, communication_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_communication_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **communication_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactCommunication**](ContactCommunication.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_communications_communication_id_put**
> ContactCommunication company_contacts_id_communications_communication_id_put(id, communication_id, contact_communication)



Replace Contact Communication

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

communication_id = 56 # Integer | 

contact_communication = Connectwise::ContactCommunication.new # ContactCommunication | 


begin
  result = api_instance.company_contacts_id_communications_communication_id_put(id, communication_id, contact_communication)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_communication_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **communication_id** | **Integer**|  | 
 **contact_communication** | [**ContactCommunication**](ContactCommunication.md)|  | 

### Return type

[**ContactCommunication**](ContactCommunication.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_communications_count_get**
> Count company_contacts_id_communications_count_get(id, opts)



Get Contact Communications Count

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_contacts_id_communications_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_count_get: #{e}"
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



# **company_contacts_id_communications_get**
> Array&lt;ContactCommunication&gt; company_contacts_id_communications_get(id, opts)



Get Contact Communications

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_id_communications_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_get: #{e}"
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

[**Array&lt;ContactCommunication&gt;**](ContactCommunication.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_communications_post**
> ContactCommunication company_contacts_id_communications_post(id, contact_communication)



Create Contact Communication

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

api_instance = Connectwise::ContactCommunicationsApi.new

id = 56 # Integer | 

contact_communication = Connectwise::ContactCommunication.new # ContactCommunication | 


begin
  result = api_instance.company_contacts_id_communications_post(id, contact_communication)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactCommunicationsApi->company_contacts_id_communications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_communication** | [**ContactCommunication**](ContactCommunication.md)|  | 

### Return type

[**ContactCommunication**](ContactCommunication.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ContactTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_types_count_get**](ContactTypesApi.md#company_contacts_types_count_get) | **GET** /company/contacts/types/count | 
[**company_contacts_types_get**](ContactTypesApi.md#company_contacts_types_get) | **GET** /company/contacts/types | 
[**company_contacts_types_id_delete**](ContactTypesApi.md#company_contacts_types_id_delete) | **DELETE** /company/contacts/types/{id} | 
[**company_contacts_types_id_get**](ContactTypesApi.md#company_contacts_types_id_get) | **GET** /company/contacts/types/{id} | 
[**company_contacts_types_id_patch**](ContactTypesApi.md#company_contacts_types_id_patch) | **PATCH** /company/contacts/types/{id} | 
[**company_contacts_types_id_put**](ContactTypesApi.md#company_contacts_types_id_put) | **PUT** /company/contacts/types/{id} | 
[**company_contacts_types_post**](ContactTypesApi.md#company_contacts_types_post) | **POST** /company/contacts/types | 


# **company_contacts_types_count_get**
> Count company_contacts_types_count_get(opts)



Get Contact Types Count

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

api_instance = ConnectWise::ContactTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_contacts_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_count_get: #{e}"
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



# **company_contacts_types_get**
> Array&lt;ContactType&gt; company_contacts_types_get(opts)



Get Contact Types

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

api_instance = ConnectWise::ContactTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_get: #{e}"
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

[**Array&lt;ContactType&gt;**](ContactType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_types_id_delete**
> company_contacts_types_id_delete(id)



Delete Contact Type By Id

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

api_instance = ConnectWise::ContactTypesApi.new

id = 56 # Integer | 


begin
  api_instance.company_contacts_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_id_delete: #{e}"
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



# **company_contacts_types_id_get**
> ContactType company_contacts_types_id_get(id)



Get Contact Type By Id

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

api_instance = ConnectWise::ContactTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_contacts_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ContactType**](ContactType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_types_id_patch**
> ContactType company_contacts_types_id_patch(id, operations)



Update Contact Type

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

api_instance = ConnectWise::ContactTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactType**](ContactType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_types_id_put**
> ContactType company_contacts_types_id_put(id, contact_type)



Replace Contact Type

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

api_instance = ConnectWise::ContactTypesApi.new

id = 56 # Integer | 

contact_type = ConnectWise::ContactType.new # ContactType | 


begin
  result = api_instance.company_contacts_types_id_put(id, contact_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_type** | [**ContactType**](ContactType.md)|  | 

### Return type

[**ContactType**](ContactType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_types_post**
> ContactType company_contacts_types_post(contact_type)



Create Contact Type

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

api_instance = ConnectWise::ContactTypesApi.new

contact_type = ConnectWise::ContactType.new # ContactType | 


begin
  result = api_instance.company_contacts_types_post(contact_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTypesApi->company_contacts_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_type** | [**ContactType**](ContactType.md)|  | 

### Return type

[**ContactType**](ContactType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




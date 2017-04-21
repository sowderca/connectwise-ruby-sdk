# ConnectWise::ContactRelationshipsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_relationships_count_get**](ContactRelationshipsApi.md#company_contacts_relationships_count_get) | **GET** /company/contacts/relationships/count | 
[**company_contacts_relationships_get**](ContactRelationshipsApi.md#company_contacts_relationships_get) | **GET** /company/contacts/relationships | 
[**company_contacts_relationships_id_delete**](ContactRelationshipsApi.md#company_contacts_relationships_id_delete) | **DELETE** /company/contacts/relationships/{id} | 
[**company_contacts_relationships_id_get**](ContactRelationshipsApi.md#company_contacts_relationships_id_get) | **GET** /company/contacts/relationships/{id} | 
[**company_contacts_relationships_id_patch**](ContactRelationshipsApi.md#company_contacts_relationships_id_patch) | **PATCH** /company/contacts/relationships/{id} | 
[**company_contacts_relationships_id_put**](ContactRelationshipsApi.md#company_contacts_relationships_id_put) | **PUT** /company/contacts/relationships/{id} | 
[**company_contacts_relationships_post**](ContactRelationshipsApi.md#company_contacts_relationships_post) | **POST** /company/contacts/relationships | 


# **company_contacts_relationships_count_get**
> Count company_contacts_relationships_count_get(opts)



Get Contact Relationships Count

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

api_instance = ConnectWise::ContactRelationshipsApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_contacts_relationships_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_count_get: #{e}"
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



# **company_contacts_relationships_get**
> Array&lt;ContactRelationship&gt; company_contacts_relationships_get(opts)



Get Contact Relationships

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

api_instance = ConnectWise::ContactRelationshipsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_relationships_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_get: #{e}"
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

[**Array&lt;ContactRelationship&gt;**](ContactRelationship.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_relationships_id_delete**
> company_contacts_relationships_id_delete(id)



Delete Contact Relationship By Id

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

api_instance = ConnectWise::ContactRelationshipsApi.new

id = 56 # Integer | 


begin
  api_instance.company_contacts_relationships_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_id_delete: #{e}"
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



# **company_contacts_relationships_id_get**
> ContactRelationship company_contacts_relationships_id_get(id)



Get Contact Relationship By Id

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

api_instance = ConnectWise::ContactRelationshipsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_contacts_relationships_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ContactRelationship**](ContactRelationship.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_relationships_id_patch**
> ContactRelationship company_contacts_relationships_id_patch(id, operations)



Update Contact Relationship

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

api_instance = ConnectWise::ContactRelationshipsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_relationships_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactRelationship**](ContactRelationship.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_relationships_id_put**
> ContactRelationship company_contacts_relationships_id_put(id, contact_relationship)



Replace Contact Relationship

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

api_instance = ConnectWise::ContactRelationshipsApi.new

id = 56 # Integer | 

contact_relationship = ConnectWise::ContactRelationship.new # ContactRelationship | 


begin
  result = api_instance.company_contacts_relationships_id_put(id, contact_relationship)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_relationship** | [**ContactRelationship**](ContactRelationship.md)|  | 

### Return type

[**ContactRelationship**](ContactRelationship.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_relationships_post**
> ContactRelationship company_contacts_relationships_post(contact_relationship)



Create Contact Relationship

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

api_instance = ConnectWise::ContactRelationshipsApi.new

contact_relationship = ConnectWise::ContactRelationship.new # ContactRelationship | 


begin
  result = api_instance.company_contacts_relationships_post(contact_relationship)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactRelationshipsApi->company_contacts_relationships_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_relationship** | [**ContactRelationship**](ContactRelationship.md)|  | 

### Return type

[**ContactRelationship**](ContactRelationship.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




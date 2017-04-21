# ConnectWise::GroupContactsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_groups_id_contacts_contact_id_delete**](GroupContactsApi.md#marketing_groups_id_contacts_contact_id_delete) | **DELETE** /marketing/groups/{id}/contacts/{contactId} | 
[**marketing_groups_id_contacts_contact_id_get**](GroupContactsApi.md#marketing_groups_id_contacts_contact_id_get) | **GET** /marketing/groups/{id}/contacts/{contactId} | 
[**marketing_groups_id_contacts_contact_id_patch**](GroupContactsApi.md#marketing_groups_id_contacts_contact_id_patch) | **PATCH** /marketing/groups/{id}/contacts/{contactId} | 
[**marketing_groups_id_contacts_contact_id_put**](GroupContactsApi.md#marketing_groups_id_contacts_contact_id_put) | **PUT** /marketing/groups/{id}/contacts/{contactId} | 
[**marketing_groups_id_contacts_count_get**](GroupContactsApi.md#marketing_groups_id_contacts_count_get) | **GET** /marketing/groups/{id}/contacts/count | 
[**marketing_groups_id_contacts_get**](GroupContactsApi.md#marketing_groups_id_contacts_get) | **GET** /marketing/groups/{id}/contacts | 
[**marketing_groups_id_contacts_post**](GroupContactsApi.md#marketing_groups_id_contacts_post) | **POST** /marketing/groups/{id}/contacts | 


# **marketing_groups_id_contacts_contact_id_delete**
> marketing_groups_id_contacts_contact_id_delete(id, contact_id)



Delete Marketing Contact By Id

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  api_instance.marketing_groups_id_contacts_contact_id_delete(id, contact_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_contact_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_groups_id_contacts_contact_id_get**
> MarketingContact marketing_groups_id_contacts_contact_id_get(id, contact_id)



Get Marketing Contact By Id

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  result = api_instance.marketing_groups_id_contacts_contact_id_get(id, contact_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_contact_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 

### Return type

[**MarketingContact**](MarketingContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_contacts_contact_id_patch**
> MarketingContact marketing_groups_id_contacts_contact_id_patch(id, contact_id, operations)



Update Marketing Contact

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_groups_id_contacts_contact_id_patch(id, contact_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_contact_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MarketingContact**](MarketingContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_id_contacts_contact_id_put**
> MarketingContact marketing_groups_id_contacts_contact_id_put(id, contact_id, marketing_contact)



Replace Marketing Contact

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 

marketing_contact = ConnectWise::MarketingContact.new # MarketingContact | 


begin
  result = api_instance.marketing_groups_id_contacts_contact_id_put(id, contact_id, marketing_contact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_contact_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 
 **marketing_contact** | [**MarketingContact**](MarketingContact.md)|  | 

### Return type

[**MarketingContact**](MarketingContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_id_contacts_count_get**
> Count marketing_groups_id_contacts_count_get(id, opts)



Get Marketing Contacts Count

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.marketing_groups_id_contacts_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_count_get: #{e}"
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



# **marketing_groups_id_contacts_get**
> Array&lt;MarketingContact&gt; marketing_groups_id_contacts_get(id, opts)



Get Marketing Contacts

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

api_instance = ConnectWise::GroupContactsApi.new

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
  result = api_instance.marketing_groups_id_contacts_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_get: #{e}"
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

[**Array&lt;MarketingContact&gt;**](MarketingContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_contacts_post**
> MarketingContact marketing_groups_id_contacts_post(id, marketing_contact)



Create Marketing Contact

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

api_instance = ConnectWise::GroupContactsApi.new

id = 56 # Integer | 

marketing_contact = ConnectWise::MarketingContact.new # MarketingContact | 


begin
  result = api_instance.marketing_groups_id_contacts_post(id, marketing_contact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupContactsApi->marketing_groups_id_contacts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **marketing_contact** | [**MarketingContact**](MarketingContact.md)|  | 

### Return type

[**MarketingContact**](MarketingContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




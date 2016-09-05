# Connectwise::OpportunityContactsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_id_contacts_contact_id_delete**](OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_delete) | **DELETE** /sales/opportunities/{id}/contacts/{contactId} | 
[**sales_opportunities_id_contacts_contact_id_get**](OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_get) | **GET** /sales/opportunities/{id}/contacts/{contactId} | 
[**sales_opportunities_id_contacts_contact_id_patch**](OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_patch) | **PATCH** /sales/opportunities/{id}/contacts/{contactId} | 
[**sales_opportunities_id_contacts_contact_id_put**](OpportunityContactsApi.md#sales_opportunities_id_contacts_contact_id_put) | **PUT** /sales/opportunities/{id}/contacts/{contactId} | 
[**sales_opportunities_id_contacts_count_get**](OpportunityContactsApi.md#sales_opportunities_id_contacts_count_get) | **GET** /sales/opportunities/{id}/contacts/count | 
[**sales_opportunities_id_contacts_get**](OpportunityContactsApi.md#sales_opportunities_id_contacts_get) | **GET** /sales/opportunities/{id}/contacts | 
[**sales_opportunities_id_contacts_post**](OpportunityContactsApi.md#sales_opportunities_id_contacts_post) | **POST** /sales/opportunities/{id}/contacts | 


# **sales_opportunities_id_contacts_contact_id_delete**
> sales_opportunities_id_contacts_contact_id_delete(id, contact_id)



Delete Opportunity Contact By Id

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  api_instance.sales_opportunities_id_contacts_contact_id_delete(id, contact_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_contact_id_delete: #{e}"
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



# **sales_opportunities_id_contacts_contact_id_get**
> OpportunityContact sales_opportunities_id_contacts_contact_id_get(id, contact_id)



Get Opportunity Contact By Id

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_id_contacts_contact_id_get(id, contact_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_contact_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 

### Return type

[**OpportunityContact**](OpportunityContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_contacts_contact_id_patch**
> OpportunityContact sales_opportunities_id_contacts_contact_id_patch(id, contact_id, operations)



Update Opportunity Contact

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_id_contacts_contact_id_patch(id, contact_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_contact_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityContact**](OpportunityContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_contacts_contact_id_put**
> OpportunityContact sales_opportunities_id_contacts_contact_id_put(id, contact_id, opportunity_contact)



Replace Opportunity Contact

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 

opportunity_contact = Connectwise::OpportunityContact.new # OpportunityContact | 


begin
  result = api_instance.sales_opportunities_id_contacts_contact_id_put(id, contact_id, opportunity_contact)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_contact_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 
 **opportunity_contact** | [**OpportunityContact**](OpportunityContact.md)|  | 

### Return type

[**OpportunityContact**](OpportunityContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_contacts_count_get**
> Count sales_opportunities_id_contacts_count_get(id, opts)



Get Opportunity Contacts Count

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_id_contacts_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_count_get: #{e}"
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



# **sales_opportunities_id_contacts_get**
> Array&lt;OpportunityContact&gt; sales_opportunities_id_contacts_get(id, opts)



Get Opportunity Contacts

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_id_contacts_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_get: #{e}"
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

[**Array&lt;OpportunityContact&gt;**](OpportunityContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_contacts_post**
> OpportunityContact sales_opportunities_id_contacts_post(id, opportunity_contact)



Create Opportunity Contact

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

api_instance = Connectwise::OpportunityContactsApi.new

id = 56 # Integer | 

opportunity_contact = Connectwise::OpportunityContact.new # OpportunityContact | 


begin
  result = api_instance.sales_opportunities_id_contacts_post(id, opportunity_contact)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityContactsApi->sales_opportunities_id_contacts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **opportunity_contact** | [**OpportunityContact**](OpportunityContact.md)|  | 

### Return type

[**OpportunityContact**](OpportunityContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




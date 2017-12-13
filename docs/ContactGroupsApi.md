# ConnectWise::ContactGroupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_id_groups_count_get**](ContactGroupsApi.md#company_contacts_id_groups_count_get) | **GET** /company/contacts/{id}/groups/count | 
[**company_contacts_id_groups_get**](ContactGroupsApi.md#company_contacts_id_groups_get) | **GET** /company/contacts/{id}/groups | 
[**company_contacts_id_groups_groupid_delete**](ContactGroupsApi.md#company_contacts_id_groups_groupid_delete) | **DELETE** /company/contacts/{id}/groups/{groupid} | 
[**company_contacts_id_groups_groupid_get**](ContactGroupsApi.md#company_contacts_id_groups_groupid_get) | **GET** /company/contacts/{id}/groups/{groupid} | 
[**company_contacts_id_groups_groupid_patch**](ContactGroupsApi.md#company_contacts_id_groups_groupid_patch) | **PATCH** /company/contacts/{id}/groups/{groupid} | 
[**company_contacts_id_groups_groupid_put**](ContactGroupsApi.md#company_contacts_id_groups_groupid_put) | **PUT** /company/contacts/{id}/groups/{groupid} | 
[**company_contacts_id_groups_post**](ContactGroupsApi.md#company_contacts_id_groups_post) | **POST** /company/contacts/{id}/groups | 


# **company_contacts_id_groups_count_get**
> Count company_contacts_id_groups_count_get(id, opts)



Get Contact Groups Count

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_contacts_id_groups_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_count_get: #{e}"
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



# **company_contacts_id_groups_get**
> Array&lt;ContactGroup&gt; company_contacts_id_groups_get(id, opts)



Get Contact Groups

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_id_groups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_get: #{e}"
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

[**Array&lt;ContactGroup&gt;**](ContactGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_groups_groupid_delete**
> company_contacts_id_groups_groupid_delete(id, groupid)



Delete Contact Group By Id

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 


begin
  api_instance.company_contacts_id_groups_groupid_delete(id, groupid)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_groupid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_contacts_id_groups_groupid_get**
> ContactGroup company_contacts_id_groups_groupid_get(id, groupid)



Get Contact Group By Id

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_groups_groupid_get(id, groupid)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_groupid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 

### Return type

[**ContactGroup**](ContactGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_groups_groupid_patch**
> ContactGroup company_contacts_id_groups_groupid_patch(id, groupid, operations)



Update Contact Group

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_id_groups_groupid_patch(id, groupid, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_groupid_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactGroup**](ContactGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_groups_groupid_put**
> ContactGroup company_contacts_id_groups_groupid_put(id, groupid, contact_group)



Replace Contact Group

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 

contact_group = ConnectWise::ContactGroup.new # ContactGroup | 


begin
  result = api_instance.company_contacts_id_groups_groupid_put(id, groupid, contact_group)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_groupid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 
 **contact_group** | [**ContactGroup**](ContactGroup.md)|  | 

### Return type

[**ContactGroup**](ContactGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_groups_post**
> ContactGroup company_contacts_id_groups_post(id, contact_group)



Create Contact Group

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

api_instance = ConnectWise::ContactGroupsApi.new

id = 56 # Integer | 

contact_group = ConnectWise::ContactGroup.new # ContactGroup | 


begin
  result = api_instance.company_contacts_id_groups_post(id, contact_group)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactGroupsApi->company_contacts_id_groups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_group** | [**ContactGroup**](ContactGroup.md)|  | 

### Return type

[**ContactGroup**](ContactGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




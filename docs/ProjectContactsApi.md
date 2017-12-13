# ConnectWise::ProjectContactsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_projects_id_contacts_contact_id_delete**](ProjectContactsApi.md#project_projects_id_contacts_contact_id_delete) | **DELETE** /project/projects/{id}/contacts/{contactId} | 
[**project_projects_id_contacts_contact_id_get**](ProjectContactsApi.md#project_projects_id_contacts_contact_id_get) | **GET** /project/projects/{id}/contacts/{contactId} | 
[**project_projects_id_contacts_get**](ProjectContactsApi.md#project_projects_id_contacts_get) | **GET** /project/projects/{id}/contacts | 
[**project_projects_id_contacts_post**](ProjectContactsApi.md#project_projects_id_contacts_post) | **POST** /project/projects/{id}/contacts | 


# **project_projects_id_contacts_contact_id_delete**
> project_projects_id_contacts_contact_id_delete(id, contact_id)



Delete Project Contact By Id

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

api_instance = ConnectWise::ProjectContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  api_instance.project_projects_id_contacts_contact_id_delete(id, contact_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectContactsApi->project_projects_id_contacts_contact_id_delete: #{e}"
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



# **project_projects_id_contacts_contact_id_get**
> ProjectContact project_projects_id_contacts_contact_id_get(id, contact_id)



Get Project Contact By Id

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

api_instance = ConnectWise::ProjectContactsApi.new

id = 56 # Integer | 

contact_id = 56 # Integer | 


begin
  result = api_instance.project_projects_id_contacts_contact_id_get(id, contact_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectContactsApi->project_projects_id_contacts_contact_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_id** | **Integer**|  | 

### Return type

[**ProjectContact**](ProjectContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_contacts_get**
> Array&lt;ProjectContact&gt; project_projects_id_contacts_get(id, opts)



Get Project Contacts

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

api_instance = ConnectWise::ProjectContactsApi.new

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
  result = api_instance.project_projects_id_contacts_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectContactsApi->project_projects_id_contacts_get: #{e}"
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

[**Array&lt;ProjectContact&gt;**](ProjectContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_contacts_post**
> ProjectContact project_projects_id_contacts_post(id, contact)



Create Project Contact

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

api_instance = ConnectWise::ProjectContactsApi.new

id = 56 # Integer | 

contact = ConnectWise::ProjectContact.new # ProjectContact | 


begin
  result = api_instance.project_projects_id_contacts_post(id, contact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectContactsApi->project_projects_id_contacts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact** | [**ProjectContact**](ProjectContact.md)|  | 

### Return type

[**ProjectContact**](ProjectContact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




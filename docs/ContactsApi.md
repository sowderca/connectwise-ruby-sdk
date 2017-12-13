# ConnectWise::ContactsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_count_get**](ContactsApi.md#company_contacts_count_get) | **GET** /company/contacts/count | 
[**company_contacts_get**](ContactsApi.md#company_contacts_get) | **GET** /company/contacts | 
[**company_contacts_id_delete**](ContactsApi.md#company_contacts_id_delete) | **DELETE** /company/contacts/{id} | 
[**company_contacts_id_get**](ContactsApi.md#company_contacts_id_get) | **GET** /company/contacts/{id} | 
[**company_contacts_id_image_get**](ContactsApi.md#company_contacts_id_image_get) | **GET** /company/contacts/{id}/image | 
[**company_contacts_id_patch**](ContactsApi.md#company_contacts_id_patch) | **PATCH** /company/contacts/{id} | 
[**company_contacts_id_portal_security_get**](ContactsApi.md#company_contacts_id_portal_security_get) | **GET** /company/contacts/{id}/portalSecurity | 
[**company_contacts_id_put**](ContactsApi.md#company_contacts_id_put) | **PUT** /company/contacts/{id} | 
[**company_contacts_post**](ContactsApi.md#company_contacts_post) | **POST** /company/contacts | 
[**company_contacts_request_password_post**](ContactsApi.md#company_contacts_request_password_post) | **POST** /company/contacts/requestPassword | 
[**company_contacts_validate_portal_credentials_post**](ContactsApi.md#company_contacts_validate_portal_credentials_post) | **POST** /company/contacts/validatePortalCredentials | 


# **company_contacts_count_get**
> Count company_contacts_count_get(opts)



Get Contacts Count

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

api_instance = ConnectWise::ContactsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
  child_conditions: "child_conditions_example" # String | 
}

begin
  result = api_instance.company_contacts_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 
 **child_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_get**
> Array&lt;Contact&gt; company_contacts_get(opts)



Get Contacts

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

api_instance = ConnectWise::ContactsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_get: #{e}"
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

[**Array&lt;Contact&gt;**](Contact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_delete**
> company_contacts_id_delete(id, opts)



Delete Contact By Id

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 

opts = { 
  transfer_contact_id: 56 # Integer | 
}

begin
  api_instance.company_contacts_id_delete(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **transfer_contact_id** | **Integer**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_contacts_id_get**
> Contact company_contacts_id_get(id)



Get Contact By Id

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_image_get**
> company_contacts_id_image_get(id, opts)



Get Contact Image

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 

opts = { 
  use_default_flag: true, # BOOLEAN | 
  last_modified: "last_modified_example" # String | 
}

begin
  api_instance.company_contacts_id_image_get(id, opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **use_default_flag** | **BOOLEAN**|  | [optional] 
 **last_modified** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **company_contacts_id_patch**
> Contact company_contacts_id_patch(id, operations)



Update Contact

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_portal_security_get**
> Array&lt;PortalSecurity&gt; company_contacts_id_portal_security_get(id)



Get Portal Security

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_portal_security_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_portal_security_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Array&lt;PortalSecurity&gt;**](PortalSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_put**
> Contact company_contacts_id_put(id, contact)



Replace Contact

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

api_instance = ConnectWise::ContactsApi.new

id = 56 # Integer | 

contact = ConnectWise::Contact.new # Contact | 


begin
  result = api_instance.company_contacts_id_put(id, contact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact** | [**Contact**](Contact.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_post**
> Contact company_contacts_post(contact)



Create Contact

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

api_instance = ConnectWise::ContactsApi.new

contact = ConnectWise::Contact.new # Contact | 


begin
  result = api_instance.company_contacts_post(contact)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact** | [**Contact**](Contact.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_request_password_post**
> company_contacts_request_password_post(request)



Request Password

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

api_instance = ConnectWise::ContactsApi.new

request = ConnectWise::RequestPasswordRequest.new # RequestPasswordRequest | 


begin
  api_instance.company_contacts_request_password_post(request)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_request_password_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**RequestPasswordRequest**](RequestPasswordRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **company_contacts_validate_portal_credentials_post**
> ValidatePortalResponse company_contacts_validate_portal_credentials_post(request)



Validate Portal Credentials

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

api_instance = ConnectWise::ContactsApi.new

request = ConnectWise::ValidatePortalRequest.new # ValidatePortalRequest | 


begin
  result = api_instance.company_contacts_validate_portal_credentials_post(request)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactsApi->company_contacts_validate_portal_credentials_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ValidatePortalRequest**](ValidatePortalRequest.md)|  | 

### Return type

[**ValidatePortalResponse**](ValidatePortalResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




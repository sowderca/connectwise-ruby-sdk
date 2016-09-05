# Connectwise::ContactDepartmentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_departments_count_get**](ContactDepartmentsApi.md#company_contacts_departments_count_get) | **GET** /company/contacts/departments/count | 
[**company_contacts_departments_get**](ContactDepartmentsApi.md#company_contacts_departments_get) | **GET** /company/contacts/departments | 
[**company_contacts_departments_id_delete**](ContactDepartmentsApi.md#company_contacts_departments_id_delete) | **DELETE** /company/contacts/departments/{id} | 
[**company_contacts_departments_id_get**](ContactDepartmentsApi.md#company_contacts_departments_id_get) | **GET** /company/contacts/departments/{id} | 
[**company_contacts_departments_id_patch**](ContactDepartmentsApi.md#company_contacts_departments_id_patch) | **PATCH** /company/contacts/departments/{id} | 
[**company_contacts_departments_id_put**](ContactDepartmentsApi.md#company_contacts_departments_id_put) | **PUT** /company/contacts/departments/{id} | 
[**company_contacts_departments_post**](ContactDepartmentsApi.md#company_contacts_departments_post) | **POST** /company/contacts/departments | 


# **company_contacts_departments_count_get**
> Count company_contacts_departments_count_get(opts)



Get Contact Departments Count

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

api_instance = Connectwise::ContactDepartmentsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_contacts_departments_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_count_get: #{e}"
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



# **company_contacts_departments_get**
> Array&lt;ContactDepartment&gt; company_contacts_departments_get(opts)



Get Contact Departments

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

api_instance = Connectwise::ContactDepartmentsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_departments_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ContactDepartment&gt;**](ContactDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_departments_id_delete**
> company_contacts_departments_id_delete(id)



Delete Contact Department By Id

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

api_instance = Connectwise::ContactDepartmentsApi.new

id = 56 # Integer | 


begin
  api_instance.company_contacts_departments_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_id_delete: #{e}"
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



# **company_contacts_departments_id_get**
> ContactDepartment company_contacts_departments_id_get(id)



Get Contact Department By Id

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

api_instance = Connectwise::ContactDepartmentsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_contacts_departments_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ContactDepartment**](ContactDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_departments_id_patch**
> ContactDepartment company_contacts_departments_id_patch(id, operations)



Update Contact Department

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

api_instance = Connectwise::ContactDepartmentsApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_contacts_departments_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ContactDepartment**](ContactDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_departments_id_put**
> ContactDepartment company_contacts_departments_id_put(id, contact_department)



Replace Contact Department

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

api_instance = Connectwise::ContactDepartmentsApi.new

id = 56 # Integer | 

contact_department = Connectwise::ContactDepartment.new # ContactDepartment | 


begin
  result = api_instance.company_contacts_departments_id_put(id, contact_department)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **contact_department** | [**ContactDepartment**](ContactDepartment.md)|  | 

### Return type

[**ContactDepartment**](ContactDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_departments_post**
> ContactDepartment company_contacts_departments_post(contact_department)



Create Contact Department

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

api_instance = Connectwise::ContactDepartmentsApi.new

contact_department = Connectwise::ContactDepartment.new # ContactDepartment | 


begin
  result = api_instance.company_contacts_departments_post(contact_department)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ContactDepartmentsApi->company_contacts_departments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_department** | [**ContactDepartment**](ContactDepartment.md)|  | 

### Return type

[**ContactDepartment**](ContactDepartment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




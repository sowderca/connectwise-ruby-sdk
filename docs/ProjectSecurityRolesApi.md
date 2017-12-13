# ConnectWise::ProjectSecurityRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_project_security_roles_count_get**](ProjectSecurityRolesApi.md#system_project_security_roles_count_get) | **GET** /system/projectSecurityRoles/count | 
[**system_project_security_roles_get**](ProjectSecurityRolesApi.md#system_project_security_roles_get) | **GET** /system/projectSecurityRoles | 
[**system_project_security_roles_id_delete**](ProjectSecurityRolesApi.md#system_project_security_roles_id_delete) | **DELETE** /system/projectSecurityRoles/{id} | 
[**system_project_security_roles_id_get**](ProjectSecurityRolesApi.md#system_project_security_roles_id_get) | **GET** /system/projectSecurityRoles/{id} | 
[**system_project_security_roles_id_patch**](ProjectSecurityRolesApi.md#system_project_security_roles_id_patch) | **PATCH** /system/projectSecurityRoles/{id} | 
[**system_project_security_roles_id_put**](ProjectSecurityRolesApi.md#system_project_security_roles_id_put) | **PUT** /system/projectSecurityRoles/{id} | 
[**system_project_security_roles_post**](ProjectSecurityRolesApi.md#system_project_security_roles_post) | **POST** /system/projectSecurityRoles | 


# **system_project_security_roles_count_get**
> Count system_project_security_roles_count_get(opts)



Get Project Security Role Count

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_project_security_roles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_count_get: #{e}"
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



# **system_project_security_roles_get**
> Array&lt;ProjectSecurityRole&gt; system_project_security_roles_get(opts)



Get Project Security Roles

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_project_security_roles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_get: #{e}"
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

[**Array&lt;ProjectSecurityRole&gt;**](ProjectSecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_project_security_roles_id_delete**
> system_project_security_roles_id_delete(id)



Delete Project Security Roley By Id

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

id = 56 # Integer | 


begin
  api_instance.system_project_security_roles_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_id_delete: #{e}"
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



# **system_project_security_roles_id_get**
> ProjectSecurityRole system_project_security_roles_id_get(id)



Get Project Security Role By Id

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_project_security_roles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ProjectSecurityRole**](ProjectSecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_project_security_roles_id_patch**
> ProjectSecurityRole system_project_security_roles_id_patch(id, operations)



Update Project Security Role

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_project_security_roles_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectSecurityRole**](ProjectSecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_project_security_roles_id_put**
> ProjectSecurityRole system_project_security_roles_id_put(id, project_security_role)



Replace Project Security Role

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

id = 56 # Integer | 

project_security_role = ConnectWise::ProjectSecurityRole.new # ProjectSecurityRole | 


begin
  result = api_instance.system_project_security_roles_id_put(id, project_security_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **project_security_role** | [**ProjectSecurityRole**](ProjectSecurityRole.md)|  | 

### Return type

[**ProjectSecurityRole**](ProjectSecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_project_security_roles_post**
> ProjectSecurityRole system_project_security_roles_post(project_security_role)



Create Project Security Role

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

api_instance = ConnectWise::ProjectSecurityRolesApi.new

project_security_role = ConnectWise::ProjectSecurityRole.new # ProjectSecurityRole | 


begin
  result = api_instance.system_project_security_roles_post(project_security_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRolesApi->system_project_security_roles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_security_role** | [**ProjectSecurityRole**](ProjectSecurityRole.md)|  | 

### Return type

[**ProjectSecurityRole**](ProjectSecurityRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




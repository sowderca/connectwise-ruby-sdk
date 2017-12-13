# ConnectWise::ProjectSecurityRoleSettingsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_project_security_roles_id_settings_count_get**](ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_count_get) | **GET** /system/projectSecurityRoles/{id}/settings/count | 
[**system_project_security_roles_id_settings_get**](ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_get) | **GET** /system/projectSecurityRoles/{id}/settings | 
[**system_project_security_roles_id_settings_setting_id_get**](ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_get) | **GET** /system/projectSecurityRoles/{id}/settings/{settingId} | 
[**system_project_security_roles_id_settings_setting_id_patch**](ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_patch) | **PATCH** /system/projectSecurityRoles/{id}/settings/{settingId} | 
[**system_project_security_roles_id_settings_setting_id_put**](ProjectSecurityRoleSettingsApi.md#system_project_security_roles_id_settings_setting_id_put) | **PUT** /system/projectSecurityRoles/{id}/settings/{settingId} | 


# **system_project_security_roles_id_settings_count_get**
> Count system_project_security_roles_id_settings_count_get(id, opts)



Get Project Security Role Setting Count

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

api_instance = ConnectWise::ProjectSecurityRoleSettingsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_project_security_roles_id_settings_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRoleSettingsApi->system_project_security_roles_id_settings_count_get: #{e}"
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



# **system_project_security_roles_id_settings_get**
> Array&lt;ProjectSecurityRoleSetting&gt; system_project_security_roles_id_settings_get(id, opts)



Get Project Security Role Settings

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

api_instance = ConnectWise::ProjectSecurityRoleSettingsApi.new

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
  result = api_instance.system_project_security_roles_id_settings_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRoleSettingsApi->system_project_security_roles_id_settings_get: #{e}"
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

[**Array&lt;ProjectSecurityRoleSetting&gt;**](ProjectSecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_project_security_roles_id_settings_setting_id_get**
> ProjectSecurityRoleSetting system_project_security_roles_id_settings_setting_id_get(id, setting_id)



Get Project Security Role Setting By Id

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

api_instance = ConnectWise::ProjectSecurityRoleSettingsApi.new

id = 56 # Integer | 

setting_id = 56 # Integer | 


begin
  result = api_instance.system_project_security_roles_id_settings_setting_id_get(id, setting_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRoleSettingsApi->system_project_security_roles_id_settings_setting_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **setting_id** | **Integer**|  | 

### Return type

[**ProjectSecurityRoleSetting**](ProjectSecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_project_security_roles_id_settings_setting_id_patch**
> ProjectSecurityRoleSetting system_project_security_roles_id_settings_setting_id_patch(id, setting_id, operations)



Update Project Security Role Setting

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

api_instance = ConnectWise::ProjectSecurityRoleSettingsApi.new

id = 56 # Integer | 

setting_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_project_security_roles_id_settings_setting_id_patch(id, setting_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRoleSettingsApi->system_project_security_roles_id_settings_setting_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **setting_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectSecurityRoleSetting**](ProjectSecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_project_security_roles_id_settings_setting_id_put**
> ProjectSecurityRoleSetting system_project_security_roles_id_settings_setting_id_put(id, setting_id, project_security_role_setting)



Replace Project Security Role Setting

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

api_instance = ConnectWise::ProjectSecurityRoleSettingsApi.new

id = 56 # Integer | 

setting_id = 56 # Integer | 

project_security_role_setting = ConnectWise::ProjectSecurityRoleSetting.new # ProjectSecurityRoleSetting | 


begin
  result = api_instance.system_project_security_roles_id_settings_setting_id_put(id, setting_id, project_security_role_setting)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectSecurityRoleSettingsApi->system_project_security_roles_id_settings_setting_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **setting_id** | **Integer**|  | 
 **project_security_role_setting** | [**ProjectSecurityRoleSetting**](ProjectSecurityRoleSetting.md)|  | 

### Return type

[**ProjectSecurityRoleSetting**](ProjectSecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




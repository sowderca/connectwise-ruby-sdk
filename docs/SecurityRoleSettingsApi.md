# ConnectWise::SecurityRoleSettingsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_security_roles_id_settings_count_get**](SecurityRoleSettingsApi.md#system_security_roles_id_settings_count_get) | **GET** /system/securityRoles/{id}/settings/count | 
[**system_security_roles_id_settings_get**](SecurityRoleSettingsApi.md#system_security_roles_id_settings_get) | **GET** /system/securityRoles/{id}/settings | 
[**system_security_roles_id_settings_settings_id_get**](SecurityRoleSettingsApi.md#system_security_roles_id_settings_settings_id_get) | **GET** /system/securityRoles/{id}/settings/{settingsId} | 


# **system_security_roles_id_settings_count_get**
> Count system_security_roles_id_settings_count_get(id, opts)



Get Security Role Settings Count

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

api_instance = ConnectWise::SecurityRoleSettingsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_security_roles_id_settings_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRoleSettingsApi->system_security_roles_id_settings_count_get: #{e}"
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



# **system_security_roles_id_settings_get**
> Array&lt;SecurityRoleSetting&gt; system_security_roles_id_settings_get(id, opts)



Get Security Role Settings

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

api_instance = ConnectWise::SecurityRoleSettingsApi.new

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
  result = api_instance.system_security_roles_id_settings_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRoleSettingsApi->system_security_roles_id_settings_get: #{e}"
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

[**Array&lt;SecurityRoleSetting&gt;**](SecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_security_roles_id_settings_settings_id_get**
> SecurityRoleSetting system_security_roles_id_settings_settings_id_get(id, settings_id)



Get Security Role Setting By Id

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

api_instance = ConnectWise::SecurityRoleSettingsApi.new

id = 56 # Integer | 

settings_id = 56 # Integer | 


begin
  result = api_instance.system_security_roles_id_settings_settings_id_get(id, settings_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SecurityRoleSettingsApi->system_security_roles_id_settings_settings_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **settings_id** | **Integer**|  | 

### Return type

[**SecurityRoleSetting**](SecurityRoleSetting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




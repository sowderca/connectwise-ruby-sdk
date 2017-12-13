# ConnectWise::LdapConfigurationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_ldap_configurations_count_get**](LdapConfigurationsApi.md#system_ldap_configurations_count_get) | **GET** /system/ldapConfigurations/count | 
[**system_ldap_configurations_get**](LdapConfigurationsApi.md#system_ldap_configurations_get) | **GET** /system/ldapConfigurations | 
[**system_ldap_configurations_id_delete**](LdapConfigurationsApi.md#system_ldap_configurations_id_delete) | **DELETE** /system/ldapConfigurations/{id} | 
[**system_ldap_configurations_id_get**](LdapConfigurationsApi.md#system_ldap_configurations_id_get) | **GET** /system/ldapConfigurations/{id} | 
[**system_ldap_configurations_id_patch**](LdapConfigurationsApi.md#system_ldap_configurations_id_patch) | **PATCH** /system/ldapConfigurations/{id} | 
[**system_ldap_configurations_id_put**](LdapConfigurationsApi.md#system_ldap_configurations_id_put) | **PUT** /system/ldapConfigurations/{id} | 
[**system_ldap_configurations_post**](LdapConfigurationsApi.md#system_ldap_configurations_post) | **POST** /system/ldapConfigurations | 


# **system_ldap_configurations_count_get**
> Count system_ldap_configurations_count_get(opts)



Get Ldap Configurations Count

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

api_instance = ConnectWise::LdapConfigurationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_ldap_configurations_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_count_get: #{e}"
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



# **system_ldap_configurations_get**
> Array&lt;LdapConfiguration&gt; system_ldap_configurations_get(opts)



Get Ldap Configurations

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

api_instance = ConnectWise::LdapConfigurationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_ldap_configurations_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_get: #{e}"
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

[**Array&lt;LdapConfiguration&gt;**](LdapConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_ldap_configurations_id_delete**
> system_ldap_configurations_id_delete(id)



Delete Ldap Configuration By Id

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

api_instance = ConnectWise::LdapConfigurationsApi.new

id = 56 # Integer | 


begin
  api_instance.system_ldap_configurations_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_id_delete: #{e}"
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



# **system_ldap_configurations_id_get**
> LdapConfiguration system_ldap_configurations_id_get(id)



Get Ldap Configuration By Id

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

api_instance = ConnectWise::LdapConfigurationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_ldap_configurations_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**LdapConfiguration**](LdapConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_ldap_configurations_id_patch**
> LdapConfiguration system_ldap_configurations_id_patch(id, operations)



Update Ldap Configuration

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

api_instance = ConnectWise::LdapConfigurationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_ldap_configurations_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**LdapConfiguration**](LdapConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_ldap_configurations_id_put**
> LdapConfiguration system_ldap_configurations_id_put(id, ldap_configuration)



Replace Ldap Configuration

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

api_instance = ConnectWise::LdapConfigurationsApi.new

id = 56 # Integer | 

ldap_configuration = ConnectWise::LdapConfiguration.new # LdapConfiguration | 


begin
  result = api_instance.system_ldap_configurations_id_put(id, ldap_configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **ldap_configuration** | [**LdapConfiguration**](LdapConfiguration.md)|  | 

### Return type

[**LdapConfiguration**](LdapConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_ldap_configurations_post**
> LdapConfiguration system_ldap_configurations_post(ldap_configuration)



Create Ldap Configuration

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

api_instance = ConnectWise::LdapConfigurationsApi.new

ldap_configuration = ConnectWise::LdapConfiguration.new # LdapConfiguration | 


begin
  result = api_instance.system_ldap_configurations_post(ldap_configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LdapConfigurationsApi->system_ldap_configurations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldap_configuration** | [**LdapConfiguration**](LdapConfiguration.md)|  | 

### Return type

[**LdapConfiguration**](LdapConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ManagedDevicesIntegrationLoginsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_managed_devices_integrations_id_logins_count_get**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_count_get) | **GET** /company/managedDevicesIntegrations/{id}/logins/count | 
[**company_managed_devices_integrations_id_logins_get**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_get) | **GET** /company/managedDevicesIntegrations/{id}/logins | 
[**company_managed_devices_integrations_id_logins_login_id_delete**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_delete) | **DELETE** /company/managedDevicesIntegrations/{id}/logins/{loginID} | 
[**company_managed_devices_integrations_id_logins_login_id_get**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_get) | **GET** /company/managedDevicesIntegrations/{id}/logins/{loginID} | 
[**company_managed_devices_integrations_id_logins_login_id_patch**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_patch) | **PATCH** /company/managedDevicesIntegrations/{id}/logins/{loginID} | 
[**company_managed_devices_integrations_id_logins_login_id_put**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_login_id_put) | **PUT** /company/managedDevicesIntegrations/{id}/logins/{loginID} | 
[**company_managed_devices_integrations_id_logins_post**](ManagedDevicesIntegrationLoginsApi.md#company_managed_devices_integrations_id_logins_post) | **POST** /company/managedDevicesIntegrations/{id}/logins | 


# **company_managed_devices_integrations_id_logins_count_get**
> Count company_managed_devices_integrations_id_logins_count_get(id, opts)



Get Login Count

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_managed_devices_integrations_id_logins_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_count_get: #{e}"
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



# **company_managed_devices_integrations_id_logins_get**
> Array&lt;ManagedDevicesIntegrationLogin&gt; company_managed_devices_integrations_id_logins_get(id, opts)



Get Login

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

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
  result = api_instance.company_managed_devices_integrations_id_logins_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_get: #{e}"
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

[**Array&lt;ManagedDevicesIntegrationLogin&gt;**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_logins_login_id_delete**
> ManagedDevicesIntegrationLogin company_managed_devices_integrations_id_logins_login_id_delete(id, login_id)



Delete Login

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

login_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_logins_login_id_delete(id, login_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_login_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **login_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_logins_login_id_get**
> ManagedDevicesIntegrationLogin company_managed_devices_integrations_id_logins_login_id_get(id, login_id)



Get Login By Id

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

login_id = 56 # Integer | 


begin
  result = api_instance.company_managed_devices_integrations_id_logins_login_id_get(id, login_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_login_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **login_id** | **Integer**|  | 

### Return type

[**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_managed_devices_integrations_id_logins_login_id_patch**
> ManagedDevicesIntegrationLogin company_managed_devices_integrations_id_logins_login_id_patch(id, login_id, operations)



Update Login

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

login_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_managed_devices_integrations_id_logins_login_id_patch(id, login_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_login_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **login_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_logins_login_id_put**
> ManagedDevicesIntegrationLogin company_managed_devices_integrations_id_logins_login_id_put(id, login_id, login)



Replace Login

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

login_id = 56 # Integer | 

login = ConnectWise::ManagedDevicesIntegrationLogin.new # ManagedDevicesIntegrationLogin | 


begin
  result = api_instance.company_managed_devices_integrations_id_logins_login_id_put(id, login_id, login)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_login_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **login_id** | **Integer**|  | 
 **login** | [**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)|  | 

### Return type

[**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_managed_devices_integrations_id_logins_post**
> ManagedDevicesIntegrationLogin company_managed_devices_integrations_id_logins_post(id, login)



Create Login

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

api_instance = ConnectWise::ManagedDevicesIntegrationLoginsApi.new

id = 56 # Integer | 

login = ConnectWise::ManagedDevicesIntegrationLogin.new # ManagedDevicesIntegrationLogin | 


begin
  result = api_instance.company_managed_devices_integrations_id_logins_post(id, login)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagedDevicesIntegrationLoginsApi->company_managed_devices_integrations_id_logins_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **login** | [**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)|  | 

### Return type

[**ManagedDevicesIntegrationLogin**](ManagedDevicesIntegrationLogin.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




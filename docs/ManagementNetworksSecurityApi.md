# ConnectWise::ManagementNetworksSecurityApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_management_network_securities_count_get**](ManagementNetworksSecurityApi.md#system_management_network_securities_count_get) | **GET** /system/managementNetworkSecurities/count | 
[**system_management_network_securities_get**](ManagementNetworksSecurityApi.md#system_management_network_securities_get) | **GET** /system/managementNetworkSecurities | 
[**system_management_network_securities_id_delete**](ManagementNetworksSecurityApi.md#system_management_network_securities_id_delete) | **DELETE** /system/managementNetworkSecurities/{id} | 
[**system_management_network_securities_id_get**](ManagementNetworksSecurityApi.md#system_management_network_securities_id_get) | **GET** /system/managementNetworkSecurities/{id} | 
[**system_management_network_securities_id_patch**](ManagementNetworksSecurityApi.md#system_management_network_securities_id_patch) | **PATCH** /system/managementNetworkSecurities/{id} | 
[**system_management_network_securities_id_put**](ManagementNetworksSecurityApi.md#system_management_network_securities_id_put) | **PUT** /system/managementNetworkSecurities/{id} | 
[**system_management_network_securities_post**](ManagementNetworksSecurityApi.md#system_management_network_securities_post) | **POST** /system/managementNetworkSecurities | 
[**system_management_network_securities_test_credentials_get**](ManagementNetworksSecurityApi.md#system_management_network_securities_test_credentials_get) | **GET** /system/managementNetworkSecurities/testCredentials | 


# **system_management_network_securities_count_get**
> Count system_management_network_securities_count_get(opts)



Get Management Network Security Count

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_management_network_securities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_count_get: #{e}"
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



# **system_management_network_securities_get**
> Array&lt;ManagementNetworkSecurity&gt; system_management_network_securities_get(opts)



Get Management Networks Security

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_management_network_securities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_get: #{e}"
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

[**Array&lt;ManagementNetworkSecurity&gt;**](ManagementNetworkSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_management_network_securities_id_delete**
> system_management_network_securities_id_delete(id)



Delete Management Network Security By Id

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

id = 56 # Integer | 


begin
  api_instance.system_management_network_securities_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_id_delete: #{e}"
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



# **system_management_network_securities_id_get**
> ManagementNetworkSecurity system_management_network_securities_id_get(id)



Get Management Network Security By Id

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_management_network_securities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_management_network_securities_id_patch**
> ManagementNetworkSecurity system_management_network_securities_id_patch(id, operations)



Update Management Network Security

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_management_network_securities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_management_network_securities_id_put**
> ManagementNetworkSecurity system_management_network_securities_id_put(id, management_network_security)



Replace Management Network Security

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

id = 56 # Integer | 

management_network_security = ConnectWise::ManagementNetworkSecurity.new # ManagementNetworkSecurity | 


begin
  result = api_instance.system_management_network_securities_id_put(id, management_network_security)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_network_security** | [**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)|  | 

### Return type

[**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_management_network_securities_post**
> ManagementNetworkSecurity system_management_network_securities_post(management_network_security)



Create Management Network Security

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

management_network_security = ConnectWise::ManagementNetworkSecurity.new # ManagementNetworkSecurity | 


begin
  result = api_instance.system_management_network_securities_post(management_network_security)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **management_network_security** | [**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)|  | 

### Return type

[**ManagementNetworkSecurity**](ManagementNetworkSecurity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_management_network_securities_test_credentials_get**
> SuccessResponse system_management_network_securities_test_credentials_get(opts)



Test Credentials

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

api_instance = ConnectWise::ManagementNetworksSecurityApi.new

opts = { 
  id: 56, # Integer | 
}

begin
  result = api_instance.system_management_network_securities_test_credentials_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementNetworksSecurityApi->system_management_network_securities_test_credentials_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




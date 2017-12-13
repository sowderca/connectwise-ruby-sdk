# ConnectWise::MemberTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_types_count_get**](MemberTypesApi.md#system_members_types_count_get) | **GET** /system/members/types/count | 
[**system_members_types_get**](MemberTypesApi.md#system_members_types_get) | **GET** /system/members/types | 
[**system_members_types_id_delete**](MemberTypesApi.md#system_members_types_id_delete) | **DELETE** /system/members/types/{id} | 
[**system_members_types_id_get**](MemberTypesApi.md#system_members_types_id_get) | **GET** /system/members/types/{id} | 
[**system_members_types_id_patch**](MemberTypesApi.md#system_members_types_id_patch) | **PATCH** /system/members/types/{id} | 
[**system_members_types_id_put**](MemberTypesApi.md#system_members_types_id_put) | **PUT** /system/members/types/{id} | 
[**system_members_types_post**](MemberTypesApi.md#system_members_types_post) | **POST** /system/members/types | 


# **system_members_types_count_get**
> Count system_members_types_count_get(opts)



Get Type Count

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

api_instance = ConnectWise::MemberTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_count_get: #{e}"
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



# **system_members_types_get**
> Array&lt;Type&gt; system_members_types_get(opts)



Get Type

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

api_instance = ConnectWise::MemberTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_members_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_get: #{e}"
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

[**Array&lt;Type&gt;**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_types_id_delete**
> system_members_types_id_delete(id)



Delete Type By Id

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

api_instance = ConnectWise::MemberTypesApi.new

id = 56 # Integer | 


begin
  api_instance.system_members_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_id_delete: #{e}"
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



# **system_members_types_id_get**
> Type system_members_types_id_get(id)



Get Type By Id

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

api_instance = ConnectWise::MemberTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_members_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_types_id_patch**
> Type system_members_types_id_patch(id, operations)



Update Type

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

api_instance = ConnectWise::MemberTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_types_id_put**
> Type system_members_types_id_put(id, type)



Replace Type

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

api_instance = ConnectWise::MemberTypesApi.new

id = 56 # Integer | 

type = ConnectWise::Type.new # Type | 


begin
  result = api_instance.system_members_types_id_put(id, type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **type** | [**Type**](Type.md)|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_types_post**
> Type system_members_types_post(type)



Create Type

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

api_instance = ConnectWise::MemberTypesApi.new

type = ConnectWise::Type.new # Type | 


begin
  result = api_instance.system_members_types_post(type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberTypesApi->system_members_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**Type**](Type.md)|  | 

### Return type

[**Type**](Type.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




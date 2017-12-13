# ConnectWise::UserDefinedFieldsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_user_defined_fields_count_get**](UserDefinedFieldsApi.md#system_user_defined_fields_count_get) | **GET** /system/userDefinedFields/count | 
[**system_user_defined_fields_get**](UserDefinedFieldsApi.md#system_user_defined_fields_get) | **GET** /system/userDefinedFields | 
[**system_user_defined_fields_id_delete**](UserDefinedFieldsApi.md#system_user_defined_fields_id_delete) | **DELETE** /system/userDefinedFields/{id} | 
[**system_user_defined_fields_id_get**](UserDefinedFieldsApi.md#system_user_defined_fields_id_get) | **GET** /system/userDefinedFields/{id} | 
[**system_user_defined_fields_id_patch**](UserDefinedFieldsApi.md#system_user_defined_fields_id_patch) | **PATCH** /system/userDefinedFields/{id} | 
[**system_user_defined_fields_id_put**](UserDefinedFieldsApi.md#system_user_defined_fields_id_put) | **PUT** /system/userDefinedFields/{id} | 
[**system_user_defined_fields_post**](UserDefinedFieldsApi.md#system_user_defined_fields_post) | **POST** /system/userDefinedFields | 


# **system_user_defined_fields_count_get**
> Count system_user_defined_fields_count_get(opts)



Get User Defined Fields Count

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_user_defined_fields_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_count_get: #{e}"
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



# **system_user_defined_fields_get**
> Array&lt;UserDefinedField&gt; system_user_defined_fields_get(opts)



Get User Defined Fields

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_user_defined_fields_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_get: #{e}"
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

[**Array&lt;UserDefinedField&gt;**](UserDefinedField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_user_defined_fields_id_delete**
> system_user_defined_fields_id_delete(id)



Delete User Defined Field By Id

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

id = 56 # Integer | 


begin
  api_instance.system_user_defined_fields_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_id_delete: #{e}"
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



# **system_user_defined_fields_id_get**
> UserDefinedField system_user_defined_fields_id_get(id)



Get User Defined Field By Id

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_user_defined_fields_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**UserDefinedField**](UserDefinedField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_user_defined_fields_id_patch**
> UserDefinedField system_user_defined_fields_id_patch(id, operations)



Update User Defined Field

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_user_defined_fields_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**UserDefinedField**](UserDefinedField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_user_defined_fields_id_put**
> UserDefinedField system_user_defined_fields_id_put(id, user_defined_field)



Replace User Defined Field

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

id = 56 # Integer | 

user_defined_field = ConnectWise::UserDefinedField.new # UserDefinedField | 


begin
  result = api_instance.system_user_defined_fields_id_put(id, user_defined_field)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **user_defined_field** | [**UserDefinedField**](UserDefinedField.md)|  | 

### Return type

[**UserDefinedField**](UserDefinedField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_user_defined_fields_post**
> UserDefinedField system_user_defined_fields_post(user_defined_field)



Create User Defined Field

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

api_instance = ConnectWise::UserDefinedFieldsApi.new

user_defined_field = ConnectWise::UserDefinedField.new # UserDefinedField | 


begin
  result = api_instance.system_user_defined_fields_post(user_defined_field)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling UserDefinedFieldsApi->system_user_defined_fields_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_defined_field** | [**UserDefinedField**](UserDefinedField.md)|  | 

### Return type

[**UserDefinedField**](UserDefinedField.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




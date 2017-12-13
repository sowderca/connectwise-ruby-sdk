# ConnectWise::DepartmentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_departments_count_get**](DepartmentsApi.md#system_departments_count_get) | **GET** /system/departments/count | 
[**system_departments_get**](DepartmentsApi.md#system_departments_get) | **GET** /system/departments | 
[**system_departments_id_delete**](DepartmentsApi.md#system_departments_id_delete) | **DELETE** /system/departments/{id} | 
[**system_departments_id_get**](DepartmentsApi.md#system_departments_id_get) | **GET** /system/departments/{id} | 
[**system_departments_id_patch**](DepartmentsApi.md#system_departments_id_patch) | **PATCH** /system/departments/{id} | 
[**system_departments_id_put**](DepartmentsApi.md#system_departments_id_put) | **PUT** /system/departments/{id} | 
[**system_departments_post**](DepartmentsApi.md#system_departments_post) | **POST** /system/departments | 


# **system_departments_count_get**
> Count system_departments_count_get(opts)



Get Department Count

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

api_instance = ConnectWise::DepartmentsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_departments_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_count_get: #{e}"
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



# **system_departments_get**
> Array&lt;Department&gt; system_departments_get(opts)



Get Department

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

api_instance = ConnectWise::DepartmentsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_departments_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_get: #{e}"
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

[**Array&lt;Department&gt;**](Department.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_departments_id_delete**
> system_departments_id_delete(id)



Delete Department By Id

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

api_instance = ConnectWise::DepartmentsApi.new

id = 56 # Integer | 


begin
  api_instance.system_departments_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_id_delete: #{e}"
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



# **system_departments_id_get**
> Department system_departments_id_get(id)



Get Department By Id

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

api_instance = ConnectWise::DepartmentsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_departments_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Department**](Department.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_departments_id_patch**
> Department system_departments_id_patch(id, operations)



Update Department

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

api_instance = ConnectWise::DepartmentsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_departments_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Department**](Department.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_departments_id_put**
> Department system_departments_id_put(id, department)



Replace Department

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

api_instance = ConnectWise::DepartmentsApi.new

id = 56 # Integer | 

department = ConnectWise::Department.new # Department | 


begin
  result = api_instance.system_departments_id_put(id, department)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **department** | [**Department**](Department.md)|  | 

### Return type

[**Department**](Department.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_departments_post**
> Department system_departments_post(department)



Create Department

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

api_instance = ConnectWise::DepartmentsApi.new

department = ConnectWise::Department.new # Department | 


begin
  result = api_instance.system_departments_post(department)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling DepartmentsApi->system_departments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **department** | [**Department**](Department.md)|  | 

### Return type

[**Department**](Department.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




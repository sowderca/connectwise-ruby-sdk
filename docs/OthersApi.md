# ConnectWise::OthersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_my_company_other_count_get**](OthersApi.md#system_my_company_other_count_get) | **GET** /system/myCompany/other/count | 
[**system_my_company_other_get**](OthersApi.md#system_my_company_other_get) | **GET** /system/myCompany/other | 
[**system_my_company_other_id_get**](OthersApi.md#system_my_company_other_id_get) | **GET** /system/myCompany/other/{id} | 
[**system_my_company_other_id_patch**](OthersApi.md#system_my_company_other_id_patch) | **PATCH** /system/myCompany/other/{id} | 
[**system_my_company_other_id_put**](OthersApi.md#system_my_company_other_id_put) | **PUT** /system/myCompany/other/{id} | 


# **system_my_company_other_count_get**
> Count system_my_company_other_count_get(opts)



Get Others Count

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

api_instance = ConnectWise::OthersApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_my_company_other_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OthersApi->system_my_company_other_count_get: #{e}"
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



# **system_my_company_other_get**
> Array&lt;Other&gt; system_my_company_other_get(opts)



Get Others

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

api_instance = ConnectWise::OthersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_my_company_other_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OthersApi->system_my_company_other_get: #{e}"
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

[**Array&lt;Other&gt;**](Other.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_other_id_get**
> Other system_my_company_other_id_get(id)



Get Other By Id

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

api_instance = ConnectWise::OthersApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_my_company_other_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OthersApi->system_my_company_other_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Other**](Other.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_other_id_patch**
> Other system_my_company_other_id_patch(id, operations)



Update Other

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

api_instance = ConnectWise::OthersApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_my_company_other_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OthersApi->system_my_company_other_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Other**](Other.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_my_company_other_id_put**
> Other system_my_company_other_id_put(id, other)



Replace Other

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

api_instance = ConnectWise::OthersApi.new

id = 56 # Integer | 

other = ConnectWise::Other.new # Other | 


begin
  result = api_instance.system_my_company_other_id_put(id, other)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OthersApi->system_my_company_other_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **other** | [**Other**](Other.md)|  | 

### Return type

[**Other**](Other.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




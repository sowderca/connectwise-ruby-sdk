# ConnectWise::MemberAccrualsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_id_accruals_accrual_id_delete**](MemberAccrualsApi.md#system_members_id_accruals_accrual_id_delete) | **DELETE** /system/members/{id}/accruals/{accrualId} | 
[**system_members_id_accruals_accrual_id_get**](MemberAccrualsApi.md#system_members_id_accruals_accrual_id_get) | **GET** /system/members/{id}/accruals/{accrualId} | 
[**system_members_id_accruals_accrual_id_patch**](MemberAccrualsApi.md#system_members_id_accruals_accrual_id_patch) | **PATCH** /system/members/{id}/accruals/{accrualId} | 
[**system_members_id_accruals_accrual_id_put**](MemberAccrualsApi.md#system_members_id_accruals_accrual_id_put) | **PUT** /system/members/{id}/accruals/{accrualId} | 
[**system_members_id_accruals_count_get**](MemberAccrualsApi.md#system_members_id_accruals_count_get) | **GET** /system/members/{id}/accruals/count | 
[**system_members_id_accruals_get**](MemberAccrualsApi.md#system_members_id_accruals_get) | **GET** /system/members/{id}/accruals | 
[**system_members_id_accruals_post**](MemberAccrualsApi.md#system_members_id_accruals_post) | **POST** /system/members/{id}/accruals | 


# **system_members_id_accruals_accrual_id_delete**
> system_members_id_accruals_accrual_id_delete(id, accrual_id)



Delete Member Accrual By Id

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

accrual_id = 56 # Integer | 


begin
  api_instance.system_members_id_accruals_accrual_id_delete(id, accrual_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_accrual_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **accrual_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_members_id_accruals_accrual_id_get**
> MemberAccrual system_members_id_accruals_accrual_id_get(id, accrual_id)



Get Member Accrual By Id

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

accrual_id = 56 # Integer | 


begin
  result = api_instance.system_members_id_accruals_accrual_id_get(id, accrual_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_accrual_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **accrual_id** | **Integer**|  | 

### Return type

[**MemberAccrual**](MemberAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_accruals_accrual_id_patch**
> MemberAccrual system_members_id_accruals_accrual_id_patch(id, accrual_id, operations)



Update Member Accrual

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

accrual_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_id_accruals_accrual_id_patch(id, accrual_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_accrual_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **accrual_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MemberAccrual**](MemberAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_accruals_accrual_id_put**
> MemberAccrual system_members_id_accruals_accrual_id_put(id, accrual_id, member_accrual)



Replace Member Accrual

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

accrual_id = 56 # Integer | 

member_accrual = ConnectWise::MemberAccrual.new # MemberAccrual | 


begin
  result = api_instance.system_members_id_accruals_accrual_id_put(id, accrual_id, member_accrual)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_accrual_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **accrual_id** | **Integer**|  | 
 **member_accrual** | [**MemberAccrual**](MemberAccrual.md)|  | 

### Return type

[**MemberAccrual**](MemberAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_accruals_count_get**
> Count system_members_id_accruals_count_get(id, opts)



Get Member Accruals Count

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_id_accruals_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_count_get: #{e}"
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



# **system_members_id_accruals_get**
> Array&lt;MemberAccrual&gt; system_members_id_accruals_get(id, opts)



Get Member Accruals

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

api_instance = ConnectWise::MemberAccrualsApi.new

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
  result = api_instance.system_members_id_accruals_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_get: #{e}"
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

[**Array&lt;MemberAccrual&gt;**](MemberAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_accruals_post**
> MemberAccrual system_members_id_accruals_post(id, member_accrual)



Create Member Accrual

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

api_instance = ConnectWise::MemberAccrualsApi.new

id = 56 # Integer | 

member_accrual = ConnectWise::MemberAccrual.new # MemberAccrual | 


begin
  result = api_instance.system_members_id_accruals_post(id, member_accrual)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberAccrualsApi->system_members_id_accruals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **member_accrual** | [**MemberAccrual**](MemberAccrual.md)|  | 

### Return type

[**MemberAccrual**](MemberAccrual.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




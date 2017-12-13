# ConnectWise::MemberDelegationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_id_delegations_count_get**](MemberDelegationsApi.md#system_members_id_delegations_count_get) | **GET** /system/members/{id}/delegations/count | 
[**system_members_id_delegations_delegation_id_delete**](MemberDelegationsApi.md#system_members_id_delegations_delegation_id_delete) | **DELETE** /system/members/{id}/delegations/{delegationId} | 
[**system_members_id_delegations_delegation_id_get**](MemberDelegationsApi.md#system_members_id_delegations_delegation_id_get) | **GET** /system/members/{id}/delegations/{delegationId} | 
[**system_members_id_delegations_delegation_id_patch**](MemberDelegationsApi.md#system_members_id_delegations_delegation_id_patch) | **PATCH** /system/members/{id}/delegations/{delegationId} | 
[**system_members_id_delegations_delegation_id_put**](MemberDelegationsApi.md#system_members_id_delegations_delegation_id_put) | **PUT** /system/members/{id}/delegations/{delegationId} | 
[**system_members_id_delegations_get**](MemberDelegationsApi.md#system_members_id_delegations_get) | **GET** /system/members/{id}/delegations | 
[**system_members_id_delegations_post**](MemberDelegationsApi.md#system_members_id_delegations_post) | **POST** /system/members/{id}/delegations | 


# **system_members_id_delegations_count_get**
> Count system_members_id_delegations_count_get(id, opts)



Get Member Delegations Count

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_id_delegations_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_count_get: #{e}"
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



# **system_members_id_delegations_delegation_id_delete**
> system_members_id_delegations_delegation_id_delete(id, delegation_id)



Delete Member Delegation By Id

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

delegation_id = 56 # Integer | 


begin
  api_instance.system_members_id_delegations_delegation_id_delete(id, delegation_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_delegation_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **delegation_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_members_id_delegations_delegation_id_get**
> MemberDelegation system_members_id_delegations_delegation_id_get(id, delegation_id)



Get Member Delegation By Id

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

delegation_id = 56 # Integer | 


begin
  result = api_instance.system_members_id_delegations_delegation_id_get(id, delegation_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_delegation_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **delegation_id** | **Integer**|  | 

### Return type

[**MemberDelegation**](MemberDelegation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_delegations_delegation_id_patch**
> MemberDelegation system_members_id_delegations_delegation_id_patch(id, delegation_id, operations)



Update Member Delegation

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

delegation_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_id_delegations_delegation_id_patch(id, delegation_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_delegation_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **delegation_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MemberDelegation**](MemberDelegation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_delegations_delegation_id_put**
> MemberDelegation system_members_id_delegations_delegation_id_put(id, delegation_id, member_delegation)



Replace Member Delegation

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

delegation_id = 56 # Integer | 

member_delegation = ConnectWise::MemberDelegation.new # MemberDelegation | 


begin
  result = api_instance.system_members_id_delegations_delegation_id_put(id, delegation_id, member_delegation)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_delegation_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **delegation_id** | **Integer**|  | 
 **member_delegation** | [**MemberDelegation**](MemberDelegation.md)|  | 

### Return type

[**MemberDelegation**](MemberDelegation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_delegations_get**
> Array&lt;MemberDelegation&gt; system_members_id_delegations_get(id, opts)



Get Member Delegations

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

api_instance = ConnectWise::MemberDelegationsApi.new

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
  result = api_instance.system_members_id_delegations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_get: #{e}"
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

[**Array&lt;MemberDelegation&gt;**](MemberDelegation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_delegations_post**
> MemberDelegation system_members_id_delegations_post(id, member_delegation)



Create Member Delegation

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

api_instance = ConnectWise::MemberDelegationsApi.new

id = 56 # Integer | 

member_delegation = ConnectWise::MemberDelegation.new # MemberDelegation | 


begin
  result = api_instance.system_members_id_delegations_post(id, member_delegation)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberDelegationsApi->system_members_id_delegations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **member_delegation** | [**MemberDelegation**](MemberDelegation.md)|  | 

### Return type

[**MemberDelegation**](MemberDelegation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




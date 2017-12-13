# ConnectWise::MembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_count_get**](MembersApi.md#system_members_count_get) | **GET** /system/members/count | 
[**system_members_get**](MembersApi.md#system_members_get) | **GET** /system/members | 
[**system_members_id_deactivate_post**](MembersApi.md#system_members_id_deactivate_post) | **POST** /system/members/{id}/deactivate | 
[**system_members_id_get**](MembersApi.md#system_members_id_get) | **GET** /system/members/{id} | 
[**system_members_id_patch**](MembersApi.md#system_members_id_patch) | **PATCH** /system/members/{id} | 
[**system_members_id_put**](MembersApi.md#system_members_id_put) | **PUT** /system/members/{id} | 
[**system_members_id_unused_time_sheets_delete**](MembersApi.md#system_members_id_unused_time_sheets_delete) | **DELETE** /system/members/{id}/unusedTimeSheets | 
[**system_members_member_identifier_tokens_post**](MembersApi.md#system_members_member_identifier_tokens_post) | **POST** /system/members/{memberIdentifier}/tokens | 
[**system_members_post**](MembersApi.md#system_members_post) | **POST** /system/members | 


# **system_members_count_get**
> Count system_members_count_get(opts)



Get Members Count

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

api_instance = ConnectWise::MembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_count_get: #{e}"
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



# **system_members_get**
> Array&lt;Member&gt; system_members_get(opts)



Get Members

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

api_instance = ConnectWise::MembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_members_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_get: #{e}"
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

[**Array&lt;Member&gt;**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_deactivate_post**
> MemberDeactivation system_members_id_deactivate_post(id, item)



Deactivatemember

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

api_instance = ConnectWise::MembersApi.new

id = 56 # Integer | 

item = ConnectWise::MemberDeactivation.new # MemberDeactivation | 


begin
  result = api_instance.system_members_id_deactivate_post(id, item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_id_deactivate_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **item** | [**MemberDeactivation**](MemberDeactivation.md)|  | 

### Return type

[**MemberDeactivation**](MemberDeactivation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_get**
> Member system_members_id_get(id)



Get Member By Id

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

api_instance = ConnectWise::MembersApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_members_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Member**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_patch**
> Member system_members_id_patch(id, operations)



Update Member

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

api_instance = ConnectWise::MembersApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_put**
> Member system_members_id_put(id, member)



Replace Member

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

api_instance = ConnectWise::MembersApi.new

id = 56 # Integer | 

member = ConnectWise::Member.new # Member | 


begin
  result = api_instance.system_members_id_put(id, member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **member** | [**Member**](Member.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_unused_time_sheets_delete**
> system_members_id_unused_time_sheets_delete(id)



Delete Member Unused Time Sheets

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

api_instance = ConnectWise::MembersApi.new

id = 56 # Integer | 


begin
  api_instance.system_members_id_unused_time_sheets_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_id_unused_time_sheets_delete: #{e}"
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



# **system_members_member_identifier_tokens_post**
> Token system_members_member_identifier_tokens_post(member_identifier)



Create Token By Member Identifier

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

api_instance = ConnectWise::MembersApi.new

member_identifier = "member_identifier_example" # String | 


begin
  result = api_instance.system_members_member_identifier_tokens_post(member_identifier)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_member_identifier_tokens_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_identifier** | **String**|  | 

### Return type

[**Token**](Token.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_post**
> Member system_members_post(member)



Create Member

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

api_instance = ConnectWise::MembersApi.new

member = ConnectWise::Member.new # Member | 


begin
  result = api_instance.system_members_post(member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MembersApi->system_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member** | [**Member**](Member.md)|  | 

### Return type

[**Member**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




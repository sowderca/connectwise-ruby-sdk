# Connectwise::MembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_count_get**](MembersApi.md#system_members_count_get) | **GET** /system/members/count | 
[**system_members_get**](MembersApi.md#system_members_get) | **GET** /system/members | 
[**system_members_member_identifier_get**](MembersApi.md#system_members_member_identifier_get) | **GET** /system/members/{memberIdentifier} | 
[**system_members_member_identifier_image_get**](MembersApi.md#system_members_member_identifier_image_get) | **GET** /system/members/{memberIdentifier}/image | 
[**system_members_member_identifier_tokens_post**](MembersApi.md#system_members_member_identifier_tokens_post) | **POST** /system/members/{memberIdentifier}/tokens | 


# **system_members_count_get**
> Count system_members_count_get(opts)



Get Members Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::MembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_count_get(opts)
  p result
rescue Connectwise::ApiError => e
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
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::MembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_members_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling MembersApi->system_members_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Member&gt;**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_member_identifier_get**
> Member system_members_member_identifier_get(member_identifier)



Get Member By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::MembersApi.new

member_identifier = "member_identifier_example" # String | 


begin
  result = api_instance.system_members_member_identifier_get(member_identifier)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling MembersApi->system_members_member_identifier_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_identifier** | **String**|  | 

### Return type

[**Member**](Member.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_member_identifier_image_get**
> system_members_member_identifier_image_get(member_identifier, opts)



Get Member Image

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::MembersApi.new

member_identifier = "member_identifier_example" # String | 

opts = { 
  use_default_flag: true, # BOOLEAN | 
  lastmodified: "lastmodified_example", # String | 
}

begin
  api_instance.system_members_member_identifier_image_get(member_identifier, opts)
rescue Connectwise::ApiError => e
  puts "Exception when calling MembersApi->system_members_member_identifier_image_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member_identifier** | **String**|  | 
 **use_default_flag** | **BOOLEAN**|  | [optional] 
 **lastmodified** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **system_members_member_identifier_tokens_post**
> Token system_members_member_identifier_tokens_post(member_identifier)



Create Token By Member Identifier

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::MembersApi.new

member_identifier = "member_identifier_example" # String | 


begin
  result = api_instance.system_members_member_identifier_tokens_post(member_identifier)
  p result
rescue Connectwise::ApiError => e
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




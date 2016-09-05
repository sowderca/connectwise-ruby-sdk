# Connectwise::GroupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_groups_count_get**](GroupsApi.md#marketing_groups_count_get) | **GET** /marketing/groups/count | 
[**marketing_groups_get**](GroupsApi.md#marketing_groups_get) | **GET** /marketing/groups | 
[**marketing_groups_id_delete**](GroupsApi.md#marketing_groups_id_delete) | **DELETE** /marketing/groups/{id} | 
[**marketing_groups_id_get**](GroupsApi.md#marketing_groups_id_get) | **GET** /marketing/groups/{id} | 
[**marketing_groups_id_patch**](GroupsApi.md#marketing_groups_id_patch) | **PATCH** /marketing/groups/{id} | 
[**marketing_groups_id_put**](GroupsApi.md#marketing_groups_id_put) | **PUT** /marketing/groups/{id} | 
[**marketing_groups_post**](GroupsApi.md#marketing_groups_post) | **POST** /marketing/groups | 


# **marketing_groups_count_get**
> Count marketing_groups_count_get(opts)



Get Groups Count

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

api_instance = Connectwise::GroupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_groups_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_count_get: #{e}"
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



# **marketing_groups_get**
> Array&lt;Group&gt; marketing_groups_get(opts)



Get Groups

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

api_instance = Connectwise::GroupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_groups_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_get: #{e}"
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

[**Array&lt;Group&gt;**](Group.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_delete**
> marketing_groups_id_delete(id)



Delete Group By Id

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

api_instance = Connectwise::GroupsApi.new

id = 56 # Integer | 


begin
  api_instance.marketing_groups_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_id_delete: #{e}"
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



# **marketing_groups_id_get**
> Group marketing_groups_id_get(id)



Get Group By Id

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

api_instance = Connectwise::GroupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_groups_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Group**](Group.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_patch**
> Group marketing_groups_id_patch(id, operations)



Update Group

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

api_instance = Connectwise::GroupsApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_groups_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Group**](Group.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_id_put**
> Group marketing_groups_id_put(id, group)



Replace Group

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

api_instance = Connectwise::GroupsApi.new

id = 56 # Integer | 

group = Connectwise::Group.new # Group | 


begin
  result = api_instance.marketing_groups_id_put(id, group)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **group** | [**Group**](Group.md)|  | 

### Return type

[**Group**](Group.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_post**
> Group marketing_groups_post(group)



Create Group

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

api_instance = Connectwise::GroupsApi.new

group = Connectwise::Group.new # Group | 


begin
  result = api_instance.marketing_groups_post(group)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling GroupsApi->marketing_groups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | [**Group**](Group.md)|  | 

### Return type

[**Group**](Group.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




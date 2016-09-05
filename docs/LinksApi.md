# Connectwise::LinksApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_links_count_get**](LinksApi.md#system_links_count_get) | **GET** /system/links/count | 
[**system_links_get**](LinksApi.md#system_links_get) | **GET** /system/links | 
[**system_links_id_delete**](LinksApi.md#system_links_id_delete) | **DELETE** /system/links/{id} | 
[**system_links_id_get**](LinksApi.md#system_links_id_get) | **GET** /system/links/{id} | 
[**system_links_id_patch**](LinksApi.md#system_links_id_patch) | **PATCH** /system/links/{id} | 
[**system_links_id_put**](LinksApi.md#system_links_id_put) | **PUT** /system/links/{id} | 
[**system_links_post**](LinksApi.md#system_links_post) | **POST** /system/links | 


# **system_links_count_get**
> Count system_links_count_get(opts)



Get Links Count

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

api_instance = Connectwise::LinksApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_links_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_count_get: #{e}"
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



# **system_links_get**
> Array&lt;Link&gt; system_links_get(opts)



Get Links

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

api_instance = Connectwise::LinksApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_links_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_get: #{e}"
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

[**Array&lt;Link&gt;**](Link.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_links_id_delete**
> system_links_id_delete(id)



Delete Link By Id

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

api_instance = Connectwise::LinksApi.new

id = 56 # Integer | 


begin
  api_instance.system_links_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_id_delete: #{e}"
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



# **system_links_id_get**
> Link system_links_id_get(id)



Get Link By Id

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

api_instance = Connectwise::LinksApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_links_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Link**](Link.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_links_id_patch**
> Link system_links_id_patch(id, operations)



Update Link

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

api_instance = Connectwise::LinksApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_links_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Link**](Link.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_links_id_put**
> Link system_links_id_put(id, link)



Replace Link

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

api_instance = Connectwise::LinksApi.new

id = 56 # Integer | 

link = Connectwise::Link.new # Link | 


begin
  result = api_instance.system_links_id_put(id, link)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link** | [**Link**](Link.md)|  | 

### Return type

[**Link**](Link.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_links_post**
> Link system_links_post(link)



Create Link

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

api_instance = Connectwise::LinksApi.new

link = Connectwise::Link.new # Link | 


begin
  result = api_instance.system_links_post(link)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling LinksApi->system_links_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **link** | [**Link**](Link.md)|  | 

### Return type

[**Link**](Link.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




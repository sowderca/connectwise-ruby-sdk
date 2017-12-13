# ConnectWise::ScheduleColorsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**schedule_colors_count_get**](ScheduleColorsApi.md#schedule_colors_count_get) | **GET** /schedule/colors/count | 
[**schedule_colors_get**](ScheduleColorsApi.md#schedule_colors_get) | **GET** /schedule/colors | 
[**schedule_colors_id_clear_post**](ScheduleColorsApi.md#schedule_colors_id_clear_post) | **POST** /schedule/colors/{id}/clear | 
[**schedule_colors_id_get**](ScheduleColorsApi.md#schedule_colors_id_get) | **GET** /schedule/colors/{id} | 
[**schedule_colors_id_patch**](ScheduleColorsApi.md#schedule_colors_id_patch) | **PATCH** /schedule/colors/{id} | 
[**schedule_colors_id_put**](ScheduleColorsApi.md#schedule_colors_id_put) | **PUT** /schedule/colors/{id} | 
[**schedule_colors_reset_post**](ScheduleColorsApi.md#schedule_colors_reset_post) | **POST** /schedule/colors/reset | 


# **schedule_colors_count_get**
> Count schedule_colors_count_get(opts)



Get Schedule Colors Count

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

api_instance = ConnectWise::ScheduleColorsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.schedule_colors_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_count_get: #{e}"
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



# **schedule_colors_get**
> Array&lt;ScheduleColor&gt; schedule_colors_get(opts)



Get Schedule Colors

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

api_instance = ConnectWise::ScheduleColorsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.schedule_colors_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_get: #{e}"
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

[**Array&lt;ScheduleColor&gt;**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_colors_id_clear_post**
> ScheduleColor schedule_colors_id_clear_post(id)



Clear Schedule Color

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

api_instance = ConnectWise::ScheduleColorsApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_colors_id_clear_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_id_clear_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleColor**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_colors_id_get**
> ScheduleColor schedule_colors_id_get(id)



Get Schedule Color By Id

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

api_instance = ConnectWise::ScheduleColorsApi.new

id = 56 # Integer | 


begin
  result = api_instance.schedule_colors_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ScheduleColor**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **schedule_colors_id_patch**
> ScheduleColor schedule_colors_id_patch(id, operations)



Update Schedule Color

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

api_instance = ConnectWise::ScheduleColorsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.schedule_colors_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ScheduleColor**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_colors_id_put**
> ScheduleColor schedule_colors_id_put(id, schedule_color)



Replace Schedule Color

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

api_instance = ConnectWise::ScheduleColorsApi.new

id = 56 # Integer | 

schedule_color = ConnectWise::ScheduleColor.new # ScheduleColor | 


begin
  result = api_instance.schedule_colors_id_put(id, schedule_color)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **schedule_color** | [**ScheduleColor**](ScheduleColor.md)|  | 

### Return type

[**ScheduleColor**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **schedule_colors_reset_post**
> Array&lt;ScheduleColor&gt; schedule_colors_reset_post



Reset Schedule Colors

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

api_instance = ConnectWise::ScheduleColorsApi.new

begin
  result = api_instance.schedule_colors_reset_post
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ScheduleColorsApi->schedule_colors_reset_post: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;ScheduleColor&gt;**](ScheduleColor.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




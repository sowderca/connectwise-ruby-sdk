# ConnectWise::SystemTracksApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_tracks_count_get**](SystemTracksApi.md#system_tracks_count_get) | **GET** /system/tracks/count | 
[**system_tracks_get**](SystemTracksApi.md#system_tracks_get) | **GET** /system/tracks | 
[**system_tracks_id_delete**](SystemTracksApi.md#system_tracks_id_delete) | **DELETE** /system/tracks/{id} | 
[**system_tracks_id_get**](SystemTracksApi.md#system_tracks_id_get) | **GET** /system/tracks/{id} | 
[**system_tracks_id_patch**](SystemTracksApi.md#system_tracks_id_patch) | **PATCH** /system/tracks/{id} | 
[**system_tracks_id_put**](SystemTracksApi.md#system_tracks_id_put) | **PUT** /system/tracks/{id} | 
[**system_tracks_post**](SystemTracksApi.md#system_tracks_post) | **POST** /system/tracks | 


# **system_tracks_count_get**
> Count system_tracks_count_get(opts)



Get Trackses Count

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

api_instance = ConnectWise::SystemTracksApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_tracks_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_count_get: #{e}"
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



# **system_tracks_get**
> Array&lt;Track&gt; system_tracks_get(opts)



Get Trackses

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

api_instance = ConnectWise::SystemTracksApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_tracks_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_get: #{e}"
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

[**Array&lt;Track&gt;**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_tracks_id_delete**
> system_tracks_id_delete(id)



Delete Tracks By Id

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

api_instance = ConnectWise::SystemTracksApi.new

id = 56 # Integer | 


begin
  api_instance.system_tracks_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_id_delete: #{e}"
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



# **system_tracks_id_get**
> Track system_tracks_id_get(id)



Get Tracks By Id

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

api_instance = ConnectWise::SystemTracksApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_tracks_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_tracks_id_patch**
> Track system_tracks_id_patch(id, operations)



Update Tracks

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

api_instance = ConnectWise::SystemTracksApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_tracks_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_tracks_id_put**
> Track system_tracks_id_put(id, track)



Replace Tracks

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

api_instance = ConnectWise::SystemTracksApi.new

id = 56 # Integer | 

track = ConnectWise::Track.new # Track | 


begin
  result = api_instance.system_tracks_id_put(id, track)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **track** | [**Track**](Track.md)|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_tracks_post**
> Track system_tracks_post(track)



Create Tracks

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

api_instance = ConnectWise::SystemTracksApi.new

track = ConnectWise::Track.new # Track | 


begin
  result = api_instance.system_tracks_post(track)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SystemTracksApi->system_tracks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **track** | [**Track**](Track.md)|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




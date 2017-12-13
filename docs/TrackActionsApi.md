# ConnectWise::TrackActionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_tracks_id_actions_action_id_delete**](TrackActionsApi.md#system_tracks_id_actions_action_id_delete) | **DELETE** /system/tracks/{id}/actions/{actionId} | 
[**system_tracks_id_actions_action_id_get**](TrackActionsApi.md#system_tracks_id_actions_action_id_get) | **GET** /system/tracks/{id}/actions/{actionId} | 
[**system_tracks_id_actions_action_id_patch**](TrackActionsApi.md#system_tracks_id_actions_action_id_patch) | **PATCH** /system/tracks/{id}/actions/{actionId} | 
[**system_tracks_id_actions_action_id_put**](TrackActionsApi.md#system_tracks_id_actions_action_id_put) | **PUT** /system/tracks/{id}/actions/{actionId} | 
[**system_tracks_id_actions_count_get**](TrackActionsApi.md#system_tracks_id_actions_count_get) | **GET** /system/tracks/{id}/actions/count | 
[**system_tracks_id_actions_get**](TrackActionsApi.md#system_tracks_id_actions_get) | **GET** /system/tracks/{id}/actions | 
[**system_tracks_id_actions_post**](TrackActionsApi.md#system_tracks_id_actions_post) | **POST** /system/tracks/{id}/actions | 


# **system_tracks_id_actions_action_id_delete**
> system_tracks_id_actions_action_id_delete(id, action_id)



Delete Track Action By Id

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

action_id = 56 # Integer | 


begin
  api_instance.system_tracks_id_actions_action_id_delete(id, action_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_action_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **action_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_tracks_id_actions_action_id_get**
> TrackAction system_tracks_id_actions_action_id_get(id, action_id)



Get Track Action By Id

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

action_id = 56 # Integer | 


begin
  result = api_instance.system_tracks_id_actions_action_id_get(id, action_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_action_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **action_id** | **Integer**|  | 

### Return type

[**TrackAction**](TrackAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_tracks_id_actions_action_id_patch**
> TrackAction system_tracks_id_actions_action_id_patch(id, action_id, operations)



Update Track Action

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

action_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_tracks_id_actions_action_id_patch(id, action_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_action_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **action_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TrackAction**](TrackAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_tracks_id_actions_action_id_put**
> TrackAction system_tracks_id_actions_action_id_put(id, action_id, track_action)



Replace Track Action

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

action_id = 56 # Integer | 

track_action = ConnectWise::TrackAction.new # TrackAction | 


begin
  result = api_instance.system_tracks_id_actions_action_id_put(id, action_id, track_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_action_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **action_id** | **Integer**|  | 
 **track_action** | [**TrackAction**](TrackAction.md)|  | 

### Return type

[**TrackAction**](TrackAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_tracks_id_actions_count_get**
> Count system_tracks_id_actions_count_get(id, opts)



Get Track Actions Count

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_tracks_id_actions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_count_get: #{e}"
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



# **system_tracks_id_actions_get**
> Array&lt;TrackAction&gt; system_tracks_id_actions_get(id, opts)



Get Track Actions

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

api_instance = ConnectWise::TrackActionsApi.new

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
  result = api_instance.system_tracks_id_actions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_get: #{e}"
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

[**Array&lt;TrackAction&gt;**](TrackAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_tracks_id_actions_post**
> TrackAction system_tracks_id_actions_post(id, track_action)



Create Track Action

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

api_instance = ConnectWise::TrackActionsApi.new

id = 56 # Integer | 

track_action = ConnectWise::TrackAction.new # TrackAction | 


begin
  result = api_instance.system_tracks_id_actions_post(id, track_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TrackActionsApi->system_tracks_id_actions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **track_action** | [**TrackAction**](TrackAction.md)|  | 

### Return type

[**TrackAction**](TrackAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




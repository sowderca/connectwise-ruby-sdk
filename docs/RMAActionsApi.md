# ConnectWise::RMAActionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_rma_actions_count_get**](RMAActionsApi.md#procurement_rma_actions_count_get) | **GET** /procurement/rmaActions/count | 
[**procurement_rma_actions_get**](RMAActionsApi.md#procurement_rma_actions_get) | **GET** /procurement/rmaActions | 
[**procurement_rma_actions_id_delete**](RMAActionsApi.md#procurement_rma_actions_id_delete) | **DELETE** /procurement/rmaActions/{id} | 
[**procurement_rma_actions_id_get**](RMAActionsApi.md#procurement_rma_actions_id_get) | **GET** /procurement/rmaActions/{id} | 
[**procurement_rma_actions_id_patch**](RMAActionsApi.md#procurement_rma_actions_id_patch) | **PATCH** /procurement/rmaActions/{id} | 
[**procurement_rma_actions_id_put**](RMAActionsApi.md#procurement_rma_actions_id_put) | **PUT** /procurement/rmaActions/{id} | 
[**procurement_rma_actions_post**](RMAActionsApi.md#procurement_rma_actions_post) | **POST** /procurement/rmaActions | 


# **procurement_rma_actions_count_get**
> Count procurement_rma_actions_count_get(opts)



Get R M A Action Count

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

api_instance = ConnectWise::RMAActionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_rma_actions_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_count_get: #{e}"
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



# **procurement_rma_actions_get**
> Array&lt;RMAAction&gt; procurement_rma_actions_get(opts)



Get R M A Action

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

api_instance = ConnectWise::RMAActionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_rma_actions_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_get: #{e}"
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

[**Array&lt;RMAAction&gt;**](RMAAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_actions_id_delete**
> procurement_rma_actions_id_delete(id)



Delete R M A Action By Id

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

api_instance = ConnectWise::RMAActionsApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_rma_actions_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_id_delete: #{e}"
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



# **procurement_rma_actions_id_get**
> RMAAction procurement_rma_actions_id_get(id)



Get R M A Action By Id

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

api_instance = ConnectWise::RMAActionsApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_rma_actions_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**RMAAction**](RMAAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_actions_id_patch**
> RMAAction procurement_rma_actions_id_patch(id, operations)



Update R M A Action

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

api_instance = ConnectWise::RMAActionsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_rma_actions_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**RMAAction**](RMAAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_actions_id_put**
> RMAAction procurement_rma_actions_id_put(id, rma_action)



Replace R M A Action

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

api_instance = ConnectWise::RMAActionsApi.new

id = 56 # Integer | 

rma_action = ConnectWise::RMAAction.new # RMAAction | 


begin
  result = api_instance.procurement_rma_actions_id_put(id, rma_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **rma_action** | [**RMAAction**](RMAAction.md)|  | 

### Return type

[**RMAAction**](RMAAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_actions_post**
> RMAAction procurement_rma_actions_post(rma_action)



Create R M A Action

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

api_instance = ConnectWise::RMAActionsApi.new

rma_action = ConnectWise::RMAAction.new # RMAAction | 


begin
  result = api_instance.procurement_rma_actions_post(rma_action)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RMAActionsApi->procurement_rma_actions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rma_action** | [**RMAAction**](RMAAction.md)|  | 

### Return type

[**RMAAction**](RMAAction.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




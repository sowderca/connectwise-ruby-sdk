# ConnectWise::StatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_states_count_get**](StatesApi.md#system_states_count_get) | **GET** /system/states/count | 
[**system_states_get**](StatesApi.md#system_states_get) | **GET** /system/states | 
[**system_states_id_get**](StatesApi.md#system_states_id_get) | **GET** /system/states/{id} | 
[**system_states_post**](StatesApi.md#system_states_post) | **POST** /system/states | 


# **system_states_count_get**
> Count system_states_count_get(opts)



Get States Count

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

api_instance = ConnectWise::StatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_states_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatesApi->system_states_count_get: #{e}"
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



# **system_states_get**
> Array&lt;State&gt; system_states_get(opts)



Get States

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

api_instance = ConnectWise::StatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_states_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatesApi->system_states_get: #{e}"
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

[**Array&lt;State&gt;**](State.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_states_id_get**
> State system_states_id_get(id)



Get State By Id

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

api_instance = ConnectWise::StatesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_states_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatesApi->system_states_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**State**](State.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_states_post**
> State system_states_post(billing_setup)



Create State

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

api_instance = ConnectWise::StatesApi.new

billing_setup = ConnectWise::State.new # State | 


begin
  result = api_instance.system_states_post(billing_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling StatesApi->system_states_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_setup** | [**State**](State.md)|  | 

### Return type

[**State**](State.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




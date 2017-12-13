# ConnectWise::InOutBoardsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_in_out_boards_count_get**](InOutBoardsApi.md#system_in_out_boards_count_get) | **GET** /system/inOutBoards/count | 
[**system_in_out_boards_get**](InOutBoardsApi.md#system_in_out_boards_get) | **GET** /system/inOutBoards | 
[**system_in_out_boards_id_delete**](InOutBoardsApi.md#system_in_out_boards_id_delete) | **DELETE** /system/inOutBoards/{id} | 
[**system_in_out_boards_id_get**](InOutBoardsApi.md#system_in_out_boards_id_get) | **GET** /system/inOutBoards/{id} | 
[**system_in_out_boards_id_patch**](InOutBoardsApi.md#system_in_out_boards_id_patch) | **PATCH** /system/inOutBoards/{id} | 
[**system_in_out_boards_id_put**](InOutBoardsApi.md#system_in_out_boards_id_put) | **PUT** /system/inOutBoards/{id} | 
[**system_in_out_boards_post**](InOutBoardsApi.md#system_in_out_boards_post) | **POST** /system/inOutBoards | 


# **system_in_out_boards_count_get**
> Count system_in_out_boards_count_get(opts)



Get In Out Board Count

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

api_instance = ConnectWise::InOutBoardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_in_out_boards_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_count_get: #{e}"
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



# **system_in_out_boards_get**
> Array&lt;InOutBoard&gt; system_in_out_boards_get(opts)



Get In Out Board

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

api_instance = ConnectWise::InOutBoardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_in_out_boards_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_get: #{e}"
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

[**Array&lt;InOutBoard&gt;**](InOutBoard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_in_out_boards_id_delete**
> system_in_out_boards_id_delete(id)



Delete In Out Board By Id

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

api_instance = ConnectWise::InOutBoardsApi.new

id = 56 # Integer | 


begin
  api_instance.system_in_out_boards_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_id_delete: #{e}"
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



# **system_in_out_boards_id_get**
> InOutBoard system_in_out_boards_id_get(id)



Get In Out Board By Id

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

api_instance = ConnectWise::InOutBoardsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_in_out_boards_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InOutBoard**](InOutBoard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_in_out_boards_id_patch**
> InOutBoard system_in_out_boards_id_patch(id, operations)



Update In Out Board

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

api_instance = ConnectWise::InOutBoardsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_in_out_boards_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**InOutBoard**](InOutBoard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_in_out_boards_id_put**
> InOutBoard system_in_out_boards_id_put(id, in_out_board)



Replace In Out Board

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

api_instance = ConnectWise::InOutBoardsApi.new

id = 56 # Integer | 

in_out_board = ConnectWise::InOutBoard.new # InOutBoard | 


begin
  result = api_instance.system_in_out_boards_id_put(id, in_out_board)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **in_out_board** | [**InOutBoard**](InOutBoard.md)|  | 

### Return type

[**InOutBoard**](InOutBoard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_in_out_boards_post**
> InOutBoard system_in_out_boards_post(in_out_board)



Create In Out Board

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

api_instance = ConnectWise::InOutBoardsApi.new

in_out_board = ConnectWise::InOutBoard.new # InOutBoard | 


begin
  result = api_instance.system_in_out_boards_post(in_out_board)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InOutBoardsApi->system_in_out_boards_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **in_out_board** | [**InOutBoard**](InOutBoard.md)|  | 

### Return type

[**InOutBoard**](InOutBoard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




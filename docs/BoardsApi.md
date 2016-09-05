# Connectwise::BoardsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_count_get**](BoardsApi.md#service_boards_count_get) | **GET** /service/boards/count | 
[**service_boards_get**](BoardsApi.md#service_boards_get) | **GET** /service/boards | 
[**service_boards_id_delete**](BoardsApi.md#service_boards_id_delete) | **DELETE** /service/boards/{id} | 
[**service_boards_id_get**](BoardsApi.md#service_boards_id_get) | **GET** /service/boards/{id} | 
[**service_boards_id_patch**](BoardsApi.md#service_boards_id_patch) | **PATCH** /service/boards/{id} | 
[**service_boards_id_put**](BoardsApi.md#service_boards_id_put) | **PUT** /service/boards/{id} | 
[**service_boards_post**](BoardsApi.md#service_boards_post) | **POST** /service/boards | 


# **service_boards_count_get**
> Count service_boards_count_get(opts)



Get Boards Count

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

api_instance = Connectwise::BoardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_count_get: #{e}"
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



# **service_boards_get**
> Array&lt;Board&gt; service_boards_get(opts)



Get Boards

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

api_instance = Connectwise::BoardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_boards_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_get: #{e}"
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

[**Array&lt;Board&gt;**](Board.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_delete**
> service_boards_id_delete(id)



Delete Board By Id

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

api_instance = Connectwise::BoardsApi.new

id = 56 # Integer | 


begin
  api_instance.service_boards_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_id_delete: #{e}"
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



# **service_boards_id_get**
> Board service_boards_id_get(id)



Get Board By Id

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

api_instance = Connectwise::BoardsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Board**](Board.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_patch**
> Board service_boards_id_patch(id, operations)



Update Board

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

api_instance = Connectwise::BoardsApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Board**](Board.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_put**
> Board service_boards_id_put(id, board)



Replace Board

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

api_instance = Connectwise::BoardsApi.new

id = 56 # Integer | 

board = Connectwise::Board.new # Board | 


begin
  result = api_instance.service_boards_id_put(id, board)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board** | [**Board**](Board.md)|  | 

### Return type

[**Board**](Board.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_post**
> Board service_boards_post(board)



Create Board

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

api_instance = Connectwise::BoardsApi.new

board = Connectwise::Board.new # Board | 


begin
  result = api_instance.service_boards_post(board)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling BoardsApi->service_boards_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **board** | [**Board**](Board.md)|  | 

### Return type

[**Board**](Board.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




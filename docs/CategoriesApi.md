# ConnectWise::CategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_categories_count_get**](CategoriesApi.md#procurement_categories_count_get) | **GET** /procurement/categories/count | 
[**procurement_categories_get**](CategoriesApi.md#procurement_categories_get) | **GET** /procurement/categories | 
[**procurement_categories_id_delete**](CategoriesApi.md#procurement_categories_id_delete) | **DELETE** /procurement/categories/{id} | 
[**procurement_categories_id_get**](CategoriesApi.md#procurement_categories_id_get) | **GET** /procurement/categories/{id} | 
[**procurement_categories_id_patch**](CategoriesApi.md#procurement_categories_id_patch) | **PATCH** /procurement/categories/{id} | 
[**procurement_categories_id_put**](CategoriesApi.md#procurement_categories_id_put) | **PUT** /procurement/categories/{id} | 
[**procurement_categories_post**](CategoriesApi.md#procurement_categories_post) | **POST** /procurement/categories | 


# **procurement_categories_count_get**
> Count procurement_categories_count_get(opts)



Get Categories Count

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

api_instance = ConnectWise::CategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_categories_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_count_get: #{e}"
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



# **procurement_categories_get**
> Array&lt;Category&gt; procurement_categories_get(opts)



Get Categories

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

api_instance = ConnectWise::CategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_categories_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_get: #{e}"
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

[**Array&lt;Category&gt;**](Category.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_categories_id_delete**
> procurement_categories_id_delete(id)



Delete Category By Id

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

api_instance = ConnectWise::CategoriesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_categories_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_id_delete: #{e}"
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



# **procurement_categories_id_get**
> Category procurement_categories_id_get(id)



Get Category By Id

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

api_instance = ConnectWise::CategoriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_categories_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Category**](Category.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_categories_id_patch**
> Category procurement_categories_id_patch(id, operations)



Update Category

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

api_instance = ConnectWise::CategoriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_categories_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_categories_id_put**
> Category procurement_categories_id_put(id, category)



Replace Category

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

api_instance = ConnectWise::CategoriesApi.new

id = 56 # Integer | 

category = ConnectWise::Category.new # Category | 


begin
  result = api_instance.procurement_categories_id_put(id, category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **category** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_categories_post**
> Category procurement_categories_post(category)



Create Category

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

api_instance = ConnectWise::CategoriesApi.new

category = ConnectWise::Category.new # Category | 


begin
  result = api_instance.procurement_categories_post(category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CategoriesApi->procurement_categories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




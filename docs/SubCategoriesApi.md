# ConnectWise::SubCategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_subcategories_count_get**](SubCategoriesApi.md#procurement_subcategories_count_get) | **GET** /procurement/subcategories/count | 
[**procurement_subcategories_get**](SubCategoriesApi.md#procurement_subcategories_get) | **GET** /procurement/subcategories | 
[**procurement_subcategories_id_delete**](SubCategoriesApi.md#procurement_subcategories_id_delete) | **DELETE** /procurement/subcategories/{id} | 
[**procurement_subcategories_id_get**](SubCategoriesApi.md#procurement_subcategories_id_get) | **GET** /procurement/subcategories/{id} | 
[**procurement_subcategories_id_patch**](SubCategoriesApi.md#procurement_subcategories_id_patch) | **PATCH** /procurement/subcategories/{id} | 
[**procurement_subcategories_id_put**](SubCategoriesApi.md#procurement_subcategories_id_put) | **PUT** /procurement/subcategories/{id} | 
[**procurement_subcategories_post**](SubCategoriesApi.md#procurement_subcategories_post) | **POST** /procurement/subcategories | 


# **procurement_subcategories_count_get**
> Count procurement_subcategories_count_get(opts)



Get Sub Categories Count

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

api_instance = ConnectWise::SubCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_subcategories_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_count_get: #{e}"
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



# **procurement_subcategories_get**
> Array&lt;SubCategory&gt; procurement_subcategories_get(opts)



Get Sub Categories

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

api_instance = ConnectWise::SubCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_subcategories_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_get: #{e}"
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

[**Array&lt;SubCategory&gt;**](SubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_subcategories_id_delete**
> procurement_subcategories_id_delete(id)



Delete Sub Category By Id

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

api_instance = ConnectWise::SubCategoriesApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_subcategories_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_id_delete: #{e}"
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



# **procurement_subcategories_id_get**
> SubCategory procurement_subcategories_id_get(id)



Get Sub Category By Id

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

api_instance = ConnectWise::SubCategoriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_subcategories_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SubCategory**](SubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_subcategories_id_patch**
> SubCategory procurement_subcategories_id_patch(id, operations)



Update Sub Category

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

api_instance = ConnectWise::SubCategoriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_subcategories_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SubCategory**](SubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_subcategories_id_put**
> SubCategory procurement_subcategories_id_put(id, sub_category)



Replace Sub Category

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

api_instance = ConnectWise::SubCategoriesApi.new

id = 56 # Integer | 

sub_category = ConnectWise::SubCategory.new # SubCategory | 


begin
  result = api_instance.procurement_subcategories_id_put(id, sub_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_category** | [**SubCategory**](SubCategory.md)|  | 

### Return type

[**SubCategory**](SubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_subcategories_post**
> SubCategory procurement_subcategories_post(sub_category)



Create Sub Category

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

api_instance = ConnectWise::SubCategoriesApi.new

sub_category = ConnectWise::SubCategory.new # SubCategory | 


begin
  result = api_instance.procurement_subcategories_post(sub_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SubCategoriesApi->procurement_subcategories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_category** | [**SubCategory**](SubCategory.md)|  | 

### Return type

[**SubCategory**](SubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




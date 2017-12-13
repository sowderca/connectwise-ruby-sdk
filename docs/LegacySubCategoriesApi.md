# ConnectWise::LegacySubCategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_categories_id_subcategories_count_get**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_count_get) | **GET** /procurement/categories/{id}/subcategories/count | 
[**procurement_categories_id_subcategories_get**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_get) | **GET** /procurement/categories/{id}/subcategories | 
[**procurement_categories_id_subcategories_post**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_post) | **POST** /procurement/categories/{id}/subcategories | 
[**procurement_categories_id_subcategories_subcategory_id_delete**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_delete) | **DELETE** /procurement/categories/{id}/subcategories/{subcategoryID} | 
[**procurement_categories_id_subcategories_subcategory_id_get**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_get) | **GET** /procurement/categories/{id}/subcategories/{subcategoryID} | 
[**procurement_categories_id_subcategories_subcategory_id_patch**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_patch) | **PATCH** /procurement/categories/{id}/subcategories/{subcategoryID} | 
[**procurement_categories_id_subcategories_subcategory_id_put**](LegacySubCategoriesApi.md#procurement_categories_id_subcategories_subcategory_id_put) | **PUT** /procurement/categories/{id}/subcategories/{subcategoryID} | 


# **procurement_categories_id_subcategories_count_get**
> Count procurement_categories_id_subcategories_count_get(id, opts)



Get Legacy Sub Categories Count

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_categories_id_subcategories_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_count_get: #{e}"
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



# **procurement_categories_id_subcategories_get**
> Array&lt;LegacySubCategory&gt; procurement_categories_id_subcategories_get(id, opts)



Get Legacy Sub Categories

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

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
  result = api_instance.procurement_categories_id_subcategories_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_get: #{e}"
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

[**Array&lt;LegacySubCategory&gt;**](LegacySubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_categories_id_subcategories_post**
> LegacySubCategory procurement_categories_id_subcategories_post(id, sub_category)



Create Legacy Sub Category

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

sub_category = ConnectWise::LegacySubCategory.new # LegacySubCategory | 


begin
  result = api_instance.procurement_categories_id_subcategories_post(id, sub_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_category** | [**LegacySubCategory**](LegacySubCategory.md)|  | 

### Return type

[**LegacySubCategory**](LegacySubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_categories_id_subcategories_subcategory_id_delete**
> procurement_categories_id_subcategories_subcategory_id_delete(id, subcategory_id)



Delete Legacy Sub Category By Id

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

subcategory_id = 56 # Integer | 


begin
  api_instance.procurement_categories_id_subcategories_subcategory_id_delete(id, subcategory_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_subcategory_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subcategory_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_categories_id_subcategories_subcategory_id_get**
> LegacySubCategory procurement_categories_id_subcategories_subcategory_id_get(id, subcategory_id)



Get Legacy Sub Category By Id

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

subcategory_id = 56 # Integer | 


begin
  result = api_instance.procurement_categories_id_subcategories_subcategory_id_get(id, subcategory_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_subcategory_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subcategory_id** | **Integer**|  | 

### Return type

[**LegacySubCategory**](LegacySubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_categories_id_subcategories_subcategory_id_patch**
> LegacySubCategory procurement_categories_id_subcategories_subcategory_id_patch(id, subcategory_id, operations)



Update Legacy Sub Category

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

subcategory_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_categories_id_subcategories_subcategory_id_patch(id, subcategory_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_subcategory_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subcategory_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**LegacySubCategory**](LegacySubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_categories_id_subcategories_subcategory_id_put**
> LegacySubCategory procurement_categories_id_subcategories_subcategory_id_put(id, subcategory_id, sub_category)



Replace Legacy Sub Category

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

api_instance = ConnectWise::LegacySubCategoriesApi.new

id = 56 # Integer | 

subcategory_id = 56 # Integer | 

sub_category = ConnectWise::LegacySubCategory.new # LegacySubCategory | 


begin
  result = api_instance.procurement_categories_id_subcategories_subcategory_id_put(id, subcategory_id, sub_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacySubCategoriesApi->procurement_categories_id_subcategories_subcategory_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **subcategory_id** | **Integer**|  | 
 **sub_category** | [**LegacySubCategory**](LegacySubCategory.md)|  | 

### Return type

[**LegacySubCategory**](LegacySubCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




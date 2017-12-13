# ConnectWise::TodayPageCategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_today_page_categories_count_get**](TodayPageCategoriesApi.md#system_today_page_categories_count_get) | **GET** /system/todayPageCategories/count | 
[**system_today_page_categories_get**](TodayPageCategoriesApi.md#system_today_page_categories_get) | **GET** /system/todayPageCategories | 
[**system_today_page_categories_id_delete**](TodayPageCategoriesApi.md#system_today_page_categories_id_delete) | **DELETE** /system/todayPageCategories/{id} | 
[**system_today_page_categories_id_get**](TodayPageCategoriesApi.md#system_today_page_categories_id_get) | **GET** /system/todayPageCategories/{id} | 
[**system_today_page_categories_id_patch**](TodayPageCategoriesApi.md#system_today_page_categories_id_patch) | **PATCH** /system/todayPageCategories/{id} | 
[**system_today_page_categories_id_put**](TodayPageCategoriesApi.md#system_today_page_categories_id_put) | **PUT** /system/todayPageCategories/{id} | 
[**system_today_page_categories_post**](TodayPageCategoriesApi.md#system_today_page_categories_post) | **POST** /system/todayPageCategories | 


# **system_today_page_categories_count_get**
> Count system_today_page_categories_count_get(opts)



Get Today Page Categories Count

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_today_page_categories_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_count_get: #{e}"
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



# **system_today_page_categories_get**
> Array&lt;TodayPageCategory&gt; system_today_page_categories_get(opts)



Get Today Page Categories

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_today_page_categories_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_get: #{e}"
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

[**Array&lt;TodayPageCategory&gt;**](TodayPageCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_today_page_categories_id_delete**
> system_today_page_categories_id_delete(id)



Delete Today Page Category By Id

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

id = 56 # Integer | 


begin
  api_instance.system_today_page_categories_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_id_delete: #{e}"
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



# **system_today_page_categories_id_get**
> TodayPageCategory system_today_page_categories_id_get(id)



Get Today Page Category By Id

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_today_page_categories_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TodayPageCategory**](TodayPageCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_today_page_categories_id_patch**
> TodayPageCategory system_today_page_categories_id_patch(id, operations)



Update Today Page Category

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_today_page_categories_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TodayPageCategory**](TodayPageCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_today_page_categories_id_put**
> TodayPageCategory system_today_page_categories_id_put(id, today_page_category)



Replace Today Page Category

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

id = 56 # Integer | 

today_page_category = ConnectWise::TodayPageCategory.new # TodayPageCategory | 


begin
  result = api_instance.system_today_page_categories_id_put(id, today_page_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **today_page_category** | [**TodayPageCategory**](TodayPageCategory.md)|  | 

### Return type

[**TodayPageCategory**](TodayPageCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_today_page_categories_post**
> TodayPageCategory system_today_page_categories_post(today_page_category)



Create Today Page Category

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

api_instance = ConnectWise::TodayPageCategoriesApi.new

today_page_category = ConnectWise::TodayPageCategory.new # TodayPageCategory | 


begin
  result = api_instance.system_today_page_categories_post(today_page_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TodayPageCategoriesApi->system_today_page_categories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **today_page_category** | [**TodayPageCategory**](TodayPageCategory.md)|  | 

### Return type

[**TodayPageCategory**](TodayPageCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




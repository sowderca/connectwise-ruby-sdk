# ConnectWise::SkillCategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_skill_categories_count_get**](SkillCategoriesApi.md#system_skill_categories_count_get) | **GET** /system/skillCategories/count | 
[**system_skill_categories_get**](SkillCategoriesApi.md#system_skill_categories_get) | **GET** /system/skillCategories | 
[**system_skill_categories_id_delete**](SkillCategoriesApi.md#system_skill_categories_id_delete) | **DELETE** /system/skillCategories/{id} | 
[**system_skill_categories_id_get**](SkillCategoriesApi.md#system_skill_categories_id_get) | **GET** /system/skillCategories/{id} | 
[**system_skill_categories_id_patch**](SkillCategoriesApi.md#system_skill_categories_id_patch) | **PATCH** /system/skillCategories/{id} | 
[**system_skill_categories_id_put**](SkillCategoriesApi.md#system_skill_categories_id_put) | **PUT** /system/skillCategories/{id} | 
[**system_skill_categories_post**](SkillCategoriesApi.md#system_skill_categories_post) | **POST** /system/skillCategories | 


# **system_skill_categories_count_get**
> Count system_skill_categories_count_get(opts)



Get Skill Categories Count

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

api_instance = ConnectWise::SkillCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_skill_categories_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_count_get: #{e}"
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



# **system_skill_categories_get**
> Array&lt;SkillCategory&gt; system_skill_categories_get(opts)



Get Skill Categories

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

api_instance = ConnectWise::SkillCategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_skill_categories_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_get: #{e}"
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

[**Array&lt;SkillCategory&gt;**](SkillCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_skill_categories_id_delete**
> system_skill_categories_id_delete(id)



Delete Skill Category By Id

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

api_instance = ConnectWise::SkillCategoriesApi.new

id = 56 # Integer | 


begin
  api_instance.system_skill_categories_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_id_delete: #{e}"
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



# **system_skill_categories_id_get**
> SkillCategory system_skill_categories_id_get(id)



Get Skill Category By Id

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

api_instance = ConnectWise::SkillCategoriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_skill_categories_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SkillCategory**](SkillCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_skill_categories_id_patch**
> SkillCategory system_skill_categories_id_patch(id, operations)



Update Skill Category

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

api_instance = ConnectWise::SkillCategoriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_skill_categories_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SkillCategory**](SkillCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_skill_categories_id_put**
> SkillCategory system_skill_categories_id_put(id, skill_category)



Replace Skill Category

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

api_instance = ConnectWise::SkillCategoriesApi.new

id = 56 # Integer | 

skill_category = ConnectWise::SkillCategory.new # SkillCategory | 


begin
  result = api_instance.system_skill_categories_id_put(id, skill_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill_category** | [**SkillCategory**](SkillCategory.md)|  | 

### Return type

[**SkillCategory**](SkillCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_skill_categories_post**
> SkillCategory system_skill_categories_post(skill_category)



Create Skill Category

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

api_instance = ConnectWise::SkillCategoriesApi.new

skill_category = ConnectWise::SkillCategory.new # SkillCategory | 


begin
  result = api_instance.system_skill_categories_post(skill_category)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillCategoriesApi->system_skill_categories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skill_category** | [**SkillCategory**](SkillCategory.md)|  | 

### Return type

[**SkillCategory**](SkillCategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




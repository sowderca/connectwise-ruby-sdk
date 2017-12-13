# ConnectWise::SkillsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_skills_count_get**](SkillsApi.md#system_skills_count_get) | **GET** /system/skills/count | 
[**system_skills_get**](SkillsApi.md#system_skills_get) | **GET** /system/skills | 
[**system_skills_id_delete**](SkillsApi.md#system_skills_id_delete) | **DELETE** /system/skills/{id} | 
[**system_skills_id_get**](SkillsApi.md#system_skills_id_get) | **GET** /system/skills/{id} | 
[**system_skills_id_patch**](SkillsApi.md#system_skills_id_patch) | **PATCH** /system/skills/{id} | 
[**system_skills_id_put**](SkillsApi.md#system_skills_id_put) | **PUT** /system/skills/{id} | 
[**system_skills_post**](SkillsApi.md#system_skills_post) | **POST** /system/skills | 


# **system_skills_count_get**
> Count system_skills_count_get(opts)



Get Skill Count

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

api_instance = ConnectWise::SkillsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_skills_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_count_get: #{e}"
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



# **system_skills_get**
> Array&lt;Skill&gt; system_skills_get(opts)



Get Skill

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

api_instance = ConnectWise::SkillsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_skills_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_get: #{e}"
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

[**Array&lt;Skill&gt;**](Skill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_skills_id_delete**
> system_skills_id_delete(id)



Delete Skill By Id

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

api_instance = ConnectWise::SkillsApi.new

id = 56 # Integer | 


begin
  api_instance.system_skills_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_id_delete: #{e}"
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



# **system_skills_id_get**
> Skill system_skills_id_get(id)



Get Skill By Id

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

api_instance = ConnectWise::SkillsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_skills_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Skill**](Skill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_skills_id_patch**
> Skill system_skills_id_patch(id, operations)



Update Skill

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

api_instance = ConnectWise::SkillsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_skills_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Skill**](Skill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_skills_id_put**
> Skill system_skills_id_put(id, skill)



Replace Skill

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

api_instance = ConnectWise::SkillsApi.new

id = 56 # Integer | 

skill = ConnectWise::Skill.new # Skill | 


begin
  result = api_instance.system_skills_id_put(id, skill)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill** | [**Skill**](Skill.md)|  | 

### Return type

[**Skill**](Skill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_skills_post**
> Skill system_skills_post(skill)



Create Skill

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

api_instance = ConnectWise::SkillsApi.new

skill = ConnectWise::Skill.new # Skill | 


begin
  result = api_instance.system_skills_post(skill)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SkillsApi->system_skills_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **skill** | [**Skill**](Skill.md)|  | 

### Return type

[**Skill**](Skill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




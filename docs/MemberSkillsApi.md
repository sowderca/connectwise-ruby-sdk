# ConnectWise::MemberSkillsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_id_skills_count_get**](MemberSkillsApi.md#system_members_id_skills_count_get) | **GET** /system/members/{id}/skills/count | 
[**system_members_id_skills_get**](MemberSkillsApi.md#system_members_id_skills_get) | **GET** /system/members/{id}/skills | 
[**system_members_id_skills_post**](MemberSkillsApi.md#system_members_id_skills_post) | **POST** /system/members/{id}/skills | 
[**system_members_id_skills_skill_id_delete**](MemberSkillsApi.md#system_members_id_skills_skill_id_delete) | **DELETE** /system/members/{id}/skills/{skillId} | 
[**system_members_id_skills_skill_id_get**](MemberSkillsApi.md#system_members_id_skills_skill_id_get) | **GET** /system/members/{id}/skills/{skillId} | 
[**system_members_id_skills_skill_id_patch**](MemberSkillsApi.md#system_members_id_skills_skill_id_patch) | **PATCH** /system/members/{id}/skills/{skillId} | 
[**system_members_id_skills_skill_id_put**](MemberSkillsApi.md#system_members_id_skills_skill_id_put) | **PUT** /system/members/{id}/skills/{skillId} | 


# **system_members_id_skills_count_get**
> Count system_members_id_skills_count_get(id, opts)



Get Member Skill Count

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_id_skills_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_count_get: #{e}"
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



# **system_members_id_skills_get**
> Array&lt;MemberSkill&gt; system_members_id_skills_get(id, opts)



Get Member Skill

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

api_instance = ConnectWise::MemberSkillsApi.new

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
  result = api_instance.system_members_id_skills_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_get: #{e}"
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

[**Array&lt;MemberSkill&gt;**](MemberSkill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_skills_post**
> MemberSkill system_members_id_skills_post(id, member_skill)



Create Member Skill

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

member_skill = ConnectWise::MemberSkill.new # MemberSkill | 


begin
  result = api_instance.system_members_id_skills_post(id, member_skill)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **member_skill** | [**MemberSkill**](MemberSkill.md)|  | 

### Return type

[**MemberSkill**](MemberSkill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_skills_skill_id_delete**
> system_members_id_skills_skill_id_delete(id, skill_id)



Delete Member Skill By Id

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

skill_id = 56 # Integer | 


begin
  api_instance.system_members_id_skills_skill_id_delete(id, skill_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_skill_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_members_id_skills_skill_id_get**
> MemberSkill system_members_id_skills_skill_id_get(id, skill_id)



Get Member Skill By Id

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

skill_id = 56 # Integer | 


begin
  result = api_instance.system_members_id_skills_skill_id_get(id, skill_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_skill_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill_id** | **Integer**|  | 

### Return type

[**MemberSkill**](MemberSkill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_skills_skill_id_patch**
> MemberSkill system_members_id_skills_skill_id_patch(id, skill_id, operations)



Update Member Skill

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

skill_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_id_skills_skill_id_patch(id, skill_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_skill_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MemberSkill**](MemberSkill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_skills_skill_id_put**
> MemberSkill system_members_id_skills_skill_id_put(id, skill_id, member_skill)



Replace Member Skill

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

api_instance = ConnectWise::MemberSkillsApi.new

id = 56 # Integer | 

skill_id = 56 # Integer | 

member_skill = ConnectWise::MemberSkill.new # MemberSkill | 


begin
  result = api_instance.system_members_id_skills_skill_id_put(id, skill_id, member_skill)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberSkillsApi->system_members_id_skills_skill_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **skill_id** | **Integer**|  | 
 **member_skill** | [**MemberSkill**](MemberSkill.md)|  | 

### Return type

[**MemberSkill**](MemberSkill.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# Connectwise::ProjectsTeamMembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_projects_id_team_members_count_get**](ProjectsTeamMembersApi.md#project_projects_id_team_members_count_get) | **GET** /project/projects/{id}/teamMembers/count | 
[**project_projects_id_team_members_get**](ProjectsTeamMembersApi.md#project_projects_id_team_members_get) | **GET** /project/projects/{id}/teamMembers | 
[**project_projects_id_team_members_post**](ProjectsTeamMembersApi.md#project_projects_id_team_members_post) | **POST** /project/projects/{id}/teamMembers | 
[**project_projects_id_team_members_team_member_id_delete**](ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_delete) | **DELETE** /project/projects/{id}/teamMembers/{teamMemberId} | 
[**project_projects_id_team_members_team_member_id_get**](ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_get) | **GET** /project/projects/{id}/teamMembers/{teamMemberId} | 
[**project_projects_id_team_members_team_member_id_patch**](ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_patch) | **PATCH** /project/projects/{id}/teamMembers/{teamMemberId} | 
[**project_projects_id_team_members_team_member_id_put**](ProjectsTeamMembersApi.md#project_projects_id_team_members_team_member_id_put) | **PUT** /project/projects/{id}/teamMembers/{teamMemberId} | 


# **project_projects_id_team_members_count_get**
> Count project_projects_id_team_members_count_get(id, opts)



Get Team Members Count

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.project_projects_id_team_members_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_count_get: #{e}"
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



# **project_projects_id_team_members_get**
> Array&lt;ProjectTeamMember&gt; project_projects_id_team_members_get(id, opts)



Get Team Members

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.project_projects_id_team_members_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ProjectTeamMember&gt;**](ProjectTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_team_members_post**
> ProjectTeamMember project_projects_id_team_members_post(id, team_member)



Create Team Member

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

team_member = Connectwise::ProjectTeamMember.new # ProjectTeamMember | 


begin
  result = api_instance.project_projects_id_team_members_post(id, team_member)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_member** | [**ProjectTeamMember**](ProjectTeamMember.md)|  | 

### Return type

[**ProjectTeamMember**](ProjectTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_team_members_team_member_id_delete**
> project_projects_id_team_members_team_member_id_delete(id, team_member_id)



Delete Team Member By Id

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

team_member_id = 56 # Integer | 


begin
  api_instance.project_projects_id_team_members_team_member_id_delete(id, team_member_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_team_member_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_member_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **project_projects_id_team_members_team_member_id_get**
> ProjectTeamMember project_projects_id_team_members_team_member_id_get(id, team_member_id)



Get Team Member By Id

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

team_member_id = 56 # Integer | 


begin
  result = api_instance.project_projects_id_team_members_team_member_id_get(id, team_member_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_team_member_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_member_id** | **Integer**|  | 

### Return type

[**ProjectTeamMember**](ProjectTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_team_members_team_member_id_patch**
> ProjectTeamMember project_projects_id_team_members_team_member_id_patch(id, team_member_id, operations)



Update Team Member

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

team_member_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.project_projects_id_team_members_team_member_id_patch(id, team_member_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_team_member_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_member_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectTeamMember**](ProjectTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_team_members_team_member_id_put**
> ProjectTeamMember project_projects_id_team_members_team_member_id_put(id, team_member_id, team_member)



Replace Team Member

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

api_instance = Connectwise::ProjectsTeamMembersApi.new

id = 56 # Integer | 

team_member_id = 56 # Integer | 

team_member = Connectwise::ProjectTeamMember.new # ProjectTeamMember | 


begin
  result = api_instance.project_projects_id_team_members_team_member_id_put(id, team_member_id, team_member)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ProjectsTeamMembersApi->project_projects_id_team_members_team_member_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_member_id** | **Integer**|  | 
 **team_member** | [**ProjectTeamMember**](ProjectTeamMember.md)|  | 

### Return type

[**ProjectTeamMember**](ProjectTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::SalesTeamMembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_sales_teams_id_members_count_get**](SalesTeamMembersApi.md#system_sales_teams_id_members_count_get) | **GET** /system/salesTeams/{id}/members/count | 
[**system_sales_teams_id_members_get**](SalesTeamMembersApi.md#system_sales_teams_id_members_get) | **GET** /system/salesTeams/{id}/members | 
[**system_sales_teams_id_members_post**](SalesTeamMembersApi.md#system_sales_teams_id_members_post) | **POST** /system/salesTeams/{id}/members | 
[**system_sales_teams_id_members_sales_team_member_id_delete**](SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_delete) | **DELETE** /system/salesTeams/{id}/members/{salesTeamMemberId} | 
[**system_sales_teams_id_members_sales_team_member_id_get**](SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_get) | **GET** /system/salesTeams/{id}/members/{salesTeamMemberId} | 
[**system_sales_teams_id_members_sales_team_member_id_patch**](SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_patch) | **PATCH** /system/salesTeams/{id}/members/{salesTeamMemberId} | 
[**system_sales_teams_id_members_sales_team_member_id_put**](SalesTeamMembersApi.md#system_sales_teams_id_members_sales_team_member_id_put) | **PUT** /system/salesTeams/{id}/members/{salesTeamMemberId} | 


# **system_sales_teams_id_members_count_get**
> Count system_sales_teams_id_members_count_get(id, opts)



Get Sales Team Members Count

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_sales_teams_id_members_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_count_get: #{e}"
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



# **system_sales_teams_id_members_get**
> Array&lt;SalesTeamMember&gt; system_sales_teams_id_members_get(id, opts)



Get Sales Team Members

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

api_instance = ConnectWise::SalesTeamMembersApi.new

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
  result = api_instance.system_sales_teams_id_members_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_get: #{e}"
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

[**Array&lt;SalesTeamMember&gt;**](SalesTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_sales_teams_id_members_post**
> SalesTeamMember system_sales_teams_id_members_post(id, sales_team_member)



Create Sales Team Member

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

sales_team_member = ConnectWise::SalesTeamMember.new # SalesTeamMember | 


begin
  result = api_instance.system_sales_teams_id_members_post(id, sales_team_member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team_member** | [**SalesTeamMember**](SalesTeamMember.md)|  | 

### Return type

[**SalesTeamMember**](SalesTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_sales_teams_id_members_sales_team_member_id_delete**
> system_sales_teams_id_members_sales_team_member_id_delete(id, sales_team_member_id)



Delete Sales Team Member By Id

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

sales_team_member_id = 56 # Integer | 


begin
  api_instance.system_sales_teams_id_members_sales_team_member_id_delete(id, sales_team_member_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_sales_team_member_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team_member_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_sales_teams_id_members_sales_team_member_id_get**
> SalesTeamMember system_sales_teams_id_members_sales_team_member_id_get(id, sales_team_member_id)



Get Sales Team Member By Id

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

sales_team_member_id = 56 # Integer | 


begin
  result = api_instance.system_sales_teams_id_members_sales_team_member_id_get(id, sales_team_member_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_sales_team_member_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team_member_id** | **Integer**|  | 

### Return type

[**SalesTeamMember**](SalesTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_sales_teams_id_members_sales_team_member_id_patch**
> SalesTeamMember system_sales_teams_id_members_sales_team_member_id_patch(id, sales_team_member_id, operations)



Update Sales Team Member

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

sales_team_member_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_sales_teams_id_members_sales_team_member_id_patch(id, sales_team_member_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_sales_team_member_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team_member_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SalesTeamMember**](SalesTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_sales_teams_id_members_sales_team_member_id_put**
> SalesTeamMember system_sales_teams_id_members_sales_team_member_id_put(id, sales_team_member_id, sales_team_member)



Replace Sales Team Member

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

api_instance = ConnectWise::SalesTeamMembersApi.new

id = 56 # Integer | 

sales_team_member_id = 56 # Integer | 

sales_team_member = ConnectWise::SalesTeamMember.new # SalesTeamMember | 


begin
  result = api_instance.system_sales_teams_id_members_sales_team_member_id_put(id, sales_team_member_id, sales_team_member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamMembersApi->system_sales_teams_id_members_sales_team_member_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team_member_id** | **Integer**|  | 
 **sales_team_member** | [**SalesTeamMember**](SalesTeamMember.md)|  | 

### Return type

[**SalesTeamMember**](SalesTeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




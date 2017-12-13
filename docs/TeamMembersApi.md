# ConnectWise::TeamMembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_team_members_count_get**](TeamMembersApi.md#service_team_members_count_get) | **GET** /service/teamMembers/count | 
[**service_team_members_get**](TeamMembersApi.md#service_team_members_get) | **GET** /service/teamMembers | 
[**service_team_members_id_delete**](TeamMembersApi.md#service_team_members_id_delete) | **DELETE** /service/teamMembers/{id} | 
[**service_team_members_id_get**](TeamMembersApi.md#service_team_members_id_get) | **GET** /service/teamMembers/{id} | 
[**service_team_members_post**](TeamMembersApi.md#service_team_members_post) | **POST** /service/teamMembers | 


# **service_team_members_count_get**
> Count service_team_members_count_get(opts)



Get Team Members Count

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

api_instance = ConnectWise::TeamMembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_team_members_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamMembersApi->service_team_members_count_get: #{e}"
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



# **service_team_members_get**
> Array&lt;TeamMember&gt; service_team_members_get(opts)



Get Team Members

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

api_instance = ConnectWise::TeamMembersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_team_members_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamMembersApi->service_team_members_get: #{e}"
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

[**Array&lt;TeamMember&gt;**](TeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_team_members_id_delete**
> service_team_members_id_delete(id)



Delete Team By Id

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

api_instance = ConnectWise::TeamMembersApi.new

id = 56 # Integer | 


begin
  api_instance.service_team_members_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamMembersApi->service_team_members_id_delete: #{e}"
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



# **service_team_members_id_get**
> TeamMember service_team_members_id_get(id)



Get Team Member By Id

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

api_instance = ConnectWise::TeamMembersApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_team_members_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamMembersApi->service_team_members_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_team_members_post**
> TeamMember service_team_members_post(team_member)



Create Team Member

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

api_instance = ConnectWise::TeamMembersApi.new

team_member = ConnectWise::TeamMember.new # TeamMember | 


begin
  result = api_instance.service_team_members_post(team_member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamMembersApi->service_team_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_member** | [**TeamMember**](TeamMember.md)|  | 

### Return type

[**TeamMember**](TeamMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::TeamRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_team_roles_count_get**](TeamRolesApi.md#company_team_roles_count_get) | **GET** /company/teamRoles/count | 
[**company_team_roles_get**](TeamRolesApi.md#company_team_roles_get) | **GET** /company/teamRoles | 
[**company_team_roles_id_delete**](TeamRolesApi.md#company_team_roles_id_delete) | **DELETE** /company/teamRoles/{id} | 
[**company_team_roles_id_get**](TeamRolesApi.md#company_team_roles_id_get) | **GET** /company/teamRoles/{id} | 
[**company_team_roles_id_patch**](TeamRolesApi.md#company_team_roles_id_patch) | **PATCH** /company/teamRoles/{id} | 
[**company_team_roles_id_put**](TeamRolesApi.md#company_team_roles_id_put) | **PUT** /company/teamRoles/{id} | 
[**company_team_roles_post**](TeamRolesApi.md#company_team_roles_post) | **POST** /company/teamRoles | 


# **company_team_roles_count_get**
> Count company_team_roles_count_get(opts)



Get Team Role Count

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

api_instance = ConnectWise::TeamRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_team_roles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_count_get: #{e}"
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



# **company_team_roles_get**
> Array&lt;TeamRole&gt; company_team_roles_get(opts)



Get Team Role

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

api_instance = ConnectWise::TeamRolesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_team_roles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_get: #{e}"
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

[**Array&lt;TeamRole&gt;**](TeamRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_team_roles_id_delete**
> company_team_roles_id_delete(id)



Delete Team Role By Id

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

api_instance = ConnectWise::TeamRolesApi.new

id = 56 # Integer | 


begin
  api_instance.company_team_roles_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_id_delete: #{e}"
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



# **company_team_roles_id_get**
> TeamRole company_team_roles_id_get(id)



Get Team Role By Id

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

api_instance = ConnectWise::TeamRolesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_team_roles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TeamRole**](TeamRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_team_roles_id_patch**
> TeamRole company_team_roles_id_patch(id, operations)



Update Team Role

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

api_instance = ConnectWise::TeamRolesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_team_roles_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TeamRole**](TeamRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_team_roles_id_put**
> TeamRole company_team_roles_id_put(id, team_role)



Replace Team Role

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

api_instance = ConnectWise::TeamRolesApi.new

id = 56 # Integer | 

team_role = ConnectWise::TeamRole.new # TeamRole | 


begin
  result = api_instance.company_team_roles_id_put(id, team_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_role** | [**TeamRole**](TeamRole.md)|  | 

### Return type

[**TeamRole**](TeamRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_team_roles_post**
> TeamRole company_team_roles_post(team_role)



Create Team Role

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

api_instance = ConnectWise::TeamRolesApi.new

team_role = ConnectWise::TeamRole.new # TeamRole | 


begin
  result = api_instance.company_team_roles_post(team_role)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TeamRolesApi->company_team_roles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_role** | [**TeamRole**](TeamRole.md)|  | 

### Return type

[**TeamRole**](TeamRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




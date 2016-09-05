# Connectwise::CompanyTeamsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_teams_count_get**](CompanyTeamsApi.md#company_companies_id_teams_count_get) | **GET** /company/companies/{id}/teams/count | 
[**company_companies_id_teams_get**](CompanyTeamsApi.md#company_companies_id_teams_get) | **GET** /company/companies/{id}/teams | 
[**company_companies_id_teams_post**](CompanyTeamsApi.md#company_companies_id_teams_post) | **POST** /company/companies/{id}/teams | 
[**company_companies_id_teams_team_id_delete**](CompanyTeamsApi.md#company_companies_id_teams_team_id_delete) | **DELETE** /company/companies/{id}/teams/{teamId} | 
[**company_companies_id_teams_team_id_get**](CompanyTeamsApi.md#company_companies_id_teams_team_id_get) | **GET** /company/companies/{id}/teams/{teamId} | 
[**company_companies_id_teams_team_id_patch**](CompanyTeamsApi.md#company_companies_id_teams_team_id_patch) | **PATCH** /company/companies/{id}/teams/{teamId} | 
[**company_companies_id_teams_team_id_put**](CompanyTeamsApi.md#company_companies_id_teams_team_id_put) | **PUT** /company/companies/{id}/teams/{teamId} | 


# **company_companies_id_teams_count_get**
> Count company_companies_id_teams_count_get(id, opts)



Get Company Teams Count

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_companies_id_teams_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_count_get: #{e}"
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



# **company_companies_id_teams_get**
> Array&lt;CompanyTeam&gt; company_companies_id_teams_get(id, opts)



Get Company Teams

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_id_teams_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_get: #{e}"
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

[**Array&lt;CompanyTeam&gt;**](CompanyTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_teams_post**
> CompanyTeam company_companies_id_teams_post(id, company_team)



Create Company Team

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

company_team = Connectwise::CompanyTeam.new # CompanyTeam | 


begin
  result = api_instance.company_companies_id_teams_post(id, company_team)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_team** | [**CompanyTeam**](CompanyTeam.md)|  | 

### Return type

[**CompanyTeam**](CompanyTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_teams_team_id_delete**
> company_companies_id_teams_team_id_delete(id, team_id)



Delete Company Team By Id

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  api_instance.company_companies_id_teams_team_id_delete(id, team_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_team_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_companies_id_teams_team_id_get**
> CompanyTeam company_companies_id_teams_team_id_get(id, team_id)



Get Company Team By Id

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_teams_team_id_get(id, team_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_team_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 

### Return type

[**CompanyTeam**](CompanyTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_teams_team_id_patch**
> CompanyTeam company_companies_id_teams_team_id_patch(id, team_id, operations)



Update Company Team

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_teams_team_id_patch(id, team_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_team_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyTeam**](CompanyTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_teams_team_id_put**
> CompanyTeam company_companies_id_teams_team_id_put(id, team_id, company_team)



Replace Company Team

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

api_instance = Connectwise::CompanyTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

company_team = Connectwise::CompanyTeam.new # CompanyTeam | 


begin
  result = api_instance.company_companies_id_teams_team_id_put(id, team_id, company_team)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyTeamsApi->company_companies_id_teams_team_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **company_team** | [**CompanyTeam**](CompanyTeam.md)|  | 

### Return type

[**CompanyTeam**](CompanyTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




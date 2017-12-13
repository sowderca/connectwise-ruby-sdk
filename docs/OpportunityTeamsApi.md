# ConnectWise::OpportunityTeamsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_id_team_count_get**](OpportunityTeamsApi.md#sales_opportunities_id_team_count_get) | **GET** /sales/opportunities/{id}/team/count | 
[**sales_opportunities_id_team_get**](OpportunityTeamsApi.md#sales_opportunities_id_team_get) | **GET** /sales/opportunities/{id}/team | 
[**sales_opportunities_id_team_post**](OpportunityTeamsApi.md#sales_opportunities_id_team_post) | **POST** /sales/opportunities/{id}/team | 
[**sales_opportunities_id_team_team_id_delete**](OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_delete) | **DELETE** /sales/opportunities/{id}/team/{teamId} | 
[**sales_opportunities_id_team_team_id_get**](OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_get) | **GET** /sales/opportunities/{id}/team/{teamId} | 
[**sales_opportunities_id_team_team_id_patch**](OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_patch) | **PATCH** /sales/opportunities/{id}/team/{teamId} | 
[**sales_opportunities_id_team_team_id_put**](OpportunityTeamsApi.md#sales_opportunities_id_team_team_id_put) | **PUT** /sales/opportunities/{id}/team/{teamId} | 


# **sales_opportunities_id_team_count_get**
> Count sales_opportunities_id_team_count_get(id, opts)



Get Teams Count

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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_id_team_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_count_get: #{e}"
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



# **sales_opportunities_id_team_get**
> Array&lt;Team&gt; sales_opportunities_id_team_get(id, opts)



Get Teams

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

api_instance = ConnectWise::OpportunityTeamsApi.new

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
  result = api_instance.sales_opportunities_id_team_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_get: #{e}"
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

[**Array&lt;Team&gt;**](Team.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_team_post**
> Team sales_opportunities_id_team_post(id, team)



Create Team

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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

team = ConnectWise::Team.new # Team | 


begin
  result = api_instance.sales_opportunities_id_team_post(id, team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_team_team_id_delete**
> sales_opportunities_id_team_team_id_delete(id, team_id)



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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  api_instance.sales_opportunities_id_team_team_id_delete(id, team_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_team_id_delete: #{e}"
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



# **sales_opportunities_id_team_team_id_get**
> Team sales_opportunities_id_team_team_id_get(id, team_id)



Get Team By Id

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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_id_team_team_id_get(id, team_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_team_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 

### Return type

[**Team**](Team.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_team_team_id_patch**
> Team sales_opportunities_id_team_team_id_patch(id, team_id, operations)



Update Team

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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_id_team_team_id_patch(id, team_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_team_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_team_team_id_put**
> Team sales_opportunities_id_team_team_id_put(id, team_id, team)



Replace Team

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

api_instance = ConnectWise::OpportunityTeamsApi.new

id = 56 # Integer | 

team_id = 56 # Integer | 

team = ConnectWise::Team.new # Team | 


begin
  result = api_instance.sales_opportunities_id_team_team_id_put(id, team_id, team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTeamsApi->sales_opportunities_id_team_team_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **team_id** | **Integer**|  | 
 **team** | [**Team**](Team.md)|  | 

### Return type

[**Team**](Team.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




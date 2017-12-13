# ConnectWise::SalesTeamsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_sales_teams_count_get**](SalesTeamsApi.md#system_sales_teams_count_get) | **GET** /system/salesTeams/count | 
[**system_sales_teams_get**](SalesTeamsApi.md#system_sales_teams_get) | **GET** /system/salesTeams | 
[**system_sales_teams_id_delete**](SalesTeamsApi.md#system_sales_teams_id_delete) | **DELETE** /system/salesTeams/{id} | 
[**system_sales_teams_id_get**](SalesTeamsApi.md#system_sales_teams_id_get) | **GET** /system/salesTeams/{id} | 
[**system_sales_teams_id_patch**](SalesTeamsApi.md#system_sales_teams_id_patch) | **PATCH** /system/salesTeams/{id} | 
[**system_sales_teams_id_put**](SalesTeamsApi.md#system_sales_teams_id_put) | **PUT** /system/salesTeams/{id} | 
[**system_sales_teams_post**](SalesTeamsApi.md#system_sales_teams_post) | **POST** /system/salesTeams | 


# **system_sales_teams_count_get**
> Count system_sales_teams_count_get(opts)



Get Sales Teams Count

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

api_instance = ConnectWise::SalesTeamsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_sales_teams_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_count_get: #{e}"
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



# **system_sales_teams_get**
> Array&lt;SalesTeam&gt; system_sales_teams_get(opts)



Get Sales Teams

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

api_instance = ConnectWise::SalesTeamsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_sales_teams_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_get: #{e}"
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

[**Array&lt;SalesTeam&gt;**](SalesTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_sales_teams_id_delete**
> system_sales_teams_id_delete(id)



Delete Sales Team By Id

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

api_instance = ConnectWise::SalesTeamsApi.new

id = 56 # Integer | 


begin
  api_instance.system_sales_teams_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_id_delete: #{e}"
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



# **system_sales_teams_id_get**
> SalesTeam system_sales_teams_id_get(id)



Get Sales Team By Id

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

api_instance = ConnectWise::SalesTeamsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_sales_teams_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SalesTeam**](SalesTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_sales_teams_id_patch**
> SalesTeam system_sales_teams_id_patch(id, operations)



Update Sales Team

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

api_instance = ConnectWise::SalesTeamsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_sales_teams_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SalesTeam**](SalesTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_sales_teams_id_put**
> SalesTeam system_sales_teams_id_put(id, sales_team)



Replace Sales Team

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

api_instance = ConnectWise::SalesTeamsApi.new

id = 56 # Integer | 

sales_team = ConnectWise::SalesTeam.new # SalesTeam | 


begin
  result = api_instance.system_sales_teams_id_put(id, sales_team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_team** | [**SalesTeam**](SalesTeam.md)|  | 

### Return type

[**SalesTeam**](SalesTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_sales_teams_post**
> SalesTeam system_sales_teams_post(sales_team)



Create Sales Team

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

api_instance = ConnectWise::SalesTeamsApi.new

sales_team = ConnectWise::SalesTeam.new # SalesTeam | 


begin
  result = api_instance.system_sales_teams_post(sales_team)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesTeamsApi->system_sales_teams_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sales_team** | [**SalesTeam**](SalesTeam.md)|  | 

### Return type

[**SalesTeam**](SalesTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




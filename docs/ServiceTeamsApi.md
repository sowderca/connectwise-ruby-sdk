# ConnectWise::ServiceTeamsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_teams_count_get**](ServiceTeamsApi.md#service_teams_count_get) | **GET** /service/teams/count | 
[**service_teams_get**](ServiceTeamsApi.md#service_teams_get) | **GET** /service/teams | 
[**service_teams_id_get**](ServiceTeamsApi.md#service_teams_id_get) | **GET** /service/teams/{id} | 


# **service_teams_count_get**
> Count service_teams_count_get(opts)



Get Service Teams Count

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

api_instance = ConnectWise::ServiceTeamsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_teams_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceTeamsApi->service_teams_count_get: #{e}"
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



# **service_teams_get**
> Array&lt;ServiceTeam&gt; service_teams_get(opts)



Get Service Teams

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

api_instance = ConnectWise::ServiceTeamsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_teams_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceTeamsApi->service_teams_get: #{e}"
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

[**Array&lt;ServiceTeam&gt;**](ServiceTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_teams_id_get**
> ServiceTeam service_teams_id_get(id)



Get Service Team By Id

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

api_instance = ConnectWise::ServiceTeamsApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_teams_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceTeamsApi->service_teams_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ServiceTeam**](ServiceTeam.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




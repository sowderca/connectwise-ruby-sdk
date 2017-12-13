# ConnectWise::ActivitiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_activities_count_get**](ActivitiesApi.md#sales_activities_count_get) | **GET** /sales/activities/count | 
[**sales_activities_get**](ActivitiesApi.md#sales_activities_get) | **GET** /sales/activities | 
[**sales_activities_id_delete**](ActivitiesApi.md#sales_activities_id_delete) | **DELETE** /sales/activities/{id} | 
[**sales_activities_id_get**](ActivitiesApi.md#sales_activities_id_get) | **GET** /sales/activities/{id} | 
[**sales_activities_id_patch**](ActivitiesApi.md#sales_activities_id_patch) | **PATCH** /sales/activities/{id} | 
[**sales_activities_id_put**](ActivitiesApi.md#sales_activities_id_put) | **PUT** /sales/activities/{id} | 
[**sales_activities_post**](ActivitiesApi.md#sales_activities_post) | **POST** /sales/activities | 


# **sales_activities_count_get**
> Count sales_activities_count_get(opts)



Get Activities Count

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

api_instance = ConnectWise::ActivitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.sales_activities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_get**
> Array&lt;Activity&gt; sales_activities_get(opts)



Get Activities

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

api_instance = ConnectWise::ActivitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_activities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_get: #{e}"
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

[**Array&lt;Activity&gt;**](Activity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_id_delete**
> sales_activities_id_delete(id)



Delete Activity By Id

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

api_instance = ConnectWise::ActivitiesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_activities_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_id_delete: #{e}"
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



# **sales_activities_id_get**
> Activity sales_activities_id_get(id)



Get Activity By Id

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

api_instance = ConnectWise::ActivitiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_activities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Activity**](Activity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_activities_id_patch**
> Activity sales_activities_id_patch(id, operations)



Update Activity

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

api_instance = ConnectWise::ActivitiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_activities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Activity**](Activity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_id_put**
> Activity sales_activities_id_put(id, activity)



Replace Activity

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

api_instance = ConnectWise::ActivitiesApi.new

id = 56 # Integer | 

activity = ConnectWise::Activity.new # Activity | 


begin
  result = api_instance.sales_activities_id_put(id, activity)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **activity** | [**Activity**](Activity.md)|  | 

### Return type

[**Activity**](Activity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_activities_post**
> Activity sales_activities_post(activity)



Create Activity

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

api_instance = ConnectWise::ActivitiesApi.new

activity = ConnectWise::Activity.new # Activity | 


begin
  result = api_instance.sales_activities_post(activity)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ActivitiesApi->sales_activities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**Activity**](Activity.md)|  | 

### Return type

[**Activity**](Activity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




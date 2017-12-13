# ConnectWise::BoardAutoAssignResourcesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_auto_assign_resources_auto_assign_resource_id_delete**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_delete) | **DELETE** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} | 
[**service_boards_id_auto_assign_resources_auto_assign_resource_id_get**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_get) | **GET** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} | 
[**service_boards_id_auto_assign_resources_auto_assign_resource_id_patch**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_patch) | **PATCH** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} | 
[**service_boards_id_auto_assign_resources_auto_assign_resource_id_put**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_auto_assign_resource_id_put) | **PUT** /service/boards/{id}/autoAssignResources/{autoAssignResourceId} | 
[**service_boards_id_auto_assign_resources_count_get**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_count_get) | **GET** /service/boards/{id}/autoAssignResources/count | 
[**service_boards_id_auto_assign_resources_get**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_get) | **GET** /service/boards/{id}/autoAssignResources | 
[**service_boards_id_auto_assign_resources_post**](BoardAutoAssignResourcesApi.md#service_boards_id_auto_assign_resources_post) | **POST** /service/boards/{id}/autoAssignResources | 


# **service_boards_id_auto_assign_resources_auto_assign_resource_id_delete**
> service_boards_id_auto_assign_resources_auto_assign_resource_id_delete(id, auto_assign_resource_id)



Delete Board Auto Assign Resource By Id

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

auto_assign_resource_id = 56 # Integer | 


begin
  api_instance.service_boards_id_auto_assign_resources_auto_assign_resource_id_delete(id, auto_assign_resource_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_auto_assign_resource_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_assign_resource_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_auto_assign_resources_auto_assign_resource_id_get**
> BoardAutoAssignResource service_boards_id_auto_assign_resources_auto_assign_resource_id_get(id, auto_assign_resource_id)



Get Board Auto Assign Resource By Id

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

auto_assign_resource_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_auto_assign_resources_auto_assign_resource_id_get(id, auto_assign_resource_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_auto_assign_resource_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_assign_resource_id** | **Integer**|  | 

### Return type

[**BoardAutoAssignResource**](BoardAutoAssignResource.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_auto_assign_resources_auto_assign_resource_id_patch**
> BoardAutoAssignResource service_boards_id_auto_assign_resources_auto_assign_resource_id_patch(id, auto_assign_resource_id, operations)



Update Board Auto Assign Resource

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

auto_assign_resource_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_auto_assign_resources_auto_assign_resource_id_patch(id, auto_assign_resource_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_auto_assign_resource_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_assign_resource_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardAutoAssignResource**](BoardAutoAssignResource.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_auto_assign_resources_auto_assign_resource_id_put**
> BoardAutoAssignResource service_boards_id_auto_assign_resources_auto_assign_resource_id_put(id, auto_assign_resource_id, board_auto_assign_resource)



Replace Board Auto Assign Resource

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

auto_assign_resource_id = 56 # Integer | 

board_auto_assign_resource = ConnectWise::BoardAutoAssignResource.new # BoardAutoAssignResource | 


begin
  result = api_instance.service_boards_id_auto_assign_resources_auto_assign_resource_id_put(id, auto_assign_resource_id, board_auto_assign_resource)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_auto_assign_resource_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_assign_resource_id** | **Integer**|  | 
 **board_auto_assign_resource** | [**BoardAutoAssignResource**](BoardAutoAssignResource.md)|  | 

### Return type

[**BoardAutoAssignResource**](BoardAutoAssignResource.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_auto_assign_resources_count_get**
> Count service_boards_id_auto_assign_resources_count_get(id, opts)



Get Board Auto Assign Resources Count

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_auto_assign_resources_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_count_get: #{e}"
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



# **service_boards_id_auto_assign_resources_get**
> Array&lt;BoardAutoAssignResource&gt; service_boards_id_auto_assign_resources_get(id, opts)



Get Board Auto Assign Resources

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

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
  result = api_instance.service_boards_id_auto_assign_resources_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_get: #{e}"
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

[**Array&lt;BoardAutoAssignResource&gt;**](BoardAutoAssignResource.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_auto_assign_resources_post**
> BoardAutoAssignResource service_boards_id_auto_assign_resources_post(id, board_auto_assign_resource)



Create Board Auto Assign Resource

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

api_instance = ConnectWise::BoardAutoAssignResourcesApi.new

id = 56 # Integer | 

board_auto_assign_resource = ConnectWise::BoardAutoAssignResource.new # BoardAutoAssignResource | 


begin
  result = api_instance.service_boards_id_auto_assign_resources_post(id, board_auto_assign_resource)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoAssignResourcesApi->service_boards_id_auto_assign_resources_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_auto_assign_resource** | [**BoardAutoAssignResource**](BoardAutoAssignResource.md)|  | 

### Return type

[**BoardAutoAssignResource**](BoardAutoAssignResource.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




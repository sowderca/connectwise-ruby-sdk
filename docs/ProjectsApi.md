# ConnectWise::ProjectsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_projects_count_get**](ProjectsApi.md#project_projects_count_get) | **GET** /project/projects/count | 
[**project_projects_get**](ProjectsApi.md#project_projects_get) | **GET** /project/projects | 
[**project_projects_id_delete**](ProjectsApi.md#project_projects_id_delete) | **DELETE** /project/projects/{id} | 
[**project_projects_id_get**](ProjectsApi.md#project_projects_id_get) | **GET** /project/projects/{id} | 
[**project_projects_id_patch**](ProjectsApi.md#project_projects_id_patch) | **PATCH** /project/projects/{id} | 
[**project_projects_id_put**](ProjectsApi.md#project_projects_id_put) | **PUT** /project/projects/{id} | 
[**project_projects_post**](ProjectsApi.md#project_projects_post) | **POST** /project/projects | 


# **project_projects_count_get**
> Count project_projects_count_get(opts)



Get Projects Count

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

api_instance = ConnectWise::ProjectsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.project_projects_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_count_get: #{e}"
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



# **project_projects_get**
> Array&lt;Project&gt; project_projects_get(opts)



Get Projects

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

api_instance = ConnectWise::ProjectsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.project_projects_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_get: #{e}"
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

[**Array&lt;Project&gt;**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_delete**
> project_projects_id_delete(id)



Delete Project By Id

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

api_instance = ConnectWise::ProjectsApi.new

id = 56 # Integer | 


begin
  api_instance.project_projects_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_id_delete: #{e}"
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



# **project_projects_id_get**
> Project project_projects_id_get(id)



Get Project By Id

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

api_instance = ConnectWise::ProjectsApi.new

id = 56 # Integer | 


begin
  result = api_instance.project_projects_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_patch**
> Project project_projects_id_patch(id, operations)



Update Project

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

api_instance = ConnectWise::ProjectsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.project_projects_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_put**
> Project project_projects_id_put(id, project)



Replace Project

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

api_instance = ConnectWise::ProjectsApi.new

id = 56 # Integer | 

project = ConnectWise::Project.new # Project | 


begin
  result = api_instance.project_projects_id_put(id, project)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **project** | [**Project**](Project.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_post**
> Project project_projects_post(project)



Create Project

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

api_instance = ConnectWise::ProjectsApi.new

project = ConnectWise::Project.new # Project | 


begin
  result = api_instance.project_projects_post(project)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectsApi->project_projects_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project** | [**Project**](Project.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




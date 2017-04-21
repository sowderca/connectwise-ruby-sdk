# ConnectWise::ProjectPhasesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**project_projects_id_phases_count_get**](ProjectPhasesApi.md#project_projects_id_phases_count_get) | **GET** /project/projects/{id}/phases/count | 
[**project_projects_id_phases_get**](ProjectPhasesApi.md#project_projects_id_phases_get) | **GET** /project/projects/{id}/phases | 
[**project_projects_id_phases_phase_id_delete**](ProjectPhasesApi.md#project_projects_id_phases_phase_id_delete) | **DELETE** /project/projects/{id}/phases/{phaseId} | 
[**project_projects_id_phases_phase_id_get**](ProjectPhasesApi.md#project_projects_id_phases_phase_id_get) | **GET** /project/projects/{id}/phases/{phaseId} | 
[**project_projects_id_phases_phase_id_patch**](ProjectPhasesApi.md#project_projects_id_phases_phase_id_patch) | **PATCH** /project/projects/{id}/phases/{phaseId} | 
[**project_projects_id_phases_phase_id_put**](ProjectPhasesApi.md#project_projects_id_phases_phase_id_put) | **PUT** /project/projects/{id}/phases/{phaseId} | 
[**project_projects_id_phases_post**](ProjectPhasesApi.md#project_projects_id_phases_post) | **POST** /project/projects/{id}/phases | 


# **project_projects_id_phases_count_get**
> Count project_projects_id_phases_count_get(id, opts)



Get Project Phases Count

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.project_projects_id_phases_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_count_get: #{e}"
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



# **project_projects_id_phases_get**
> Array&lt;ProjectPhase&gt; project_projects_id_phases_get(id, opts)



Get Project Phases

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.project_projects_id_phases_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_get: #{e}"
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

[**Array&lt;ProjectPhase&gt;**](ProjectPhase.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_phases_phase_id_delete**
> project_projects_id_phases_phase_id_delete(id, phase_id)



Delete Project Phase By Id

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

phase_id = 56 # Integer | 


begin
  api_instance.project_projects_id_phases_phase_id_delete(id, phase_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_phase_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **phase_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **project_projects_id_phases_phase_id_get**
> ProjectPhase project_projects_id_phases_phase_id_get(id, phase_id)



Get Project Phase By Id

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

phase_id = 56 # Integer | 


begin
  result = api_instance.project_projects_id_phases_phase_id_get(id, phase_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_phase_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **phase_id** | **Integer**|  | 

### Return type

[**ProjectPhase**](ProjectPhase.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **project_projects_id_phases_phase_id_patch**
> ProjectPhase project_projects_id_phases_phase_id_patch(id, phase_id, operations)



Update Project Phase

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

phase_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.project_projects_id_phases_phase_id_patch(id, phase_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_phase_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **phase_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ProjectPhase**](ProjectPhase.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_phases_phase_id_put**
> ProjectPhase project_projects_id_phases_phase_id_put(id, phase_id, project_phase)



Replace Project Phase

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

phase_id = 56 # Integer | 

project_phase = ConnectWise::ProjectPhase.new # ProjectPhase | 


begin
  result = api_instance.project_projects_id_phases_phase_id_put(id, phase_id, project_phase)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_phase_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **phase_id** | **Integer**|  | 
 **project_phase** | [**ProjectPhase**](ProjectPhase.md)|  | 

### Return type

[**ProjectPhase**](ProjectPhase.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **project_projects_id_phases_post**
> ProjectPhase project_projects_id_phases_post(id, project_phase)



Create Project Phase

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

api_instance = ConnectWise::ProjectPhasesApi.new

id = 56 # Integer | 

project_phase = ConnectWise::ProjectPhase.new # ProjectPhase | 


begin
  result = api_instance.project_projects_id_phases_post(id, project_phase)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProjectPhasesApi->project_projects_id_phases_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **project_phase** | [**ProjectPhase**](ProjectPhase.md)|  | 

### Return type

[**ProjectPhase**](ProjectPhase.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




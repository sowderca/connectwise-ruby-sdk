# ConnectWise::TicketTasksApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_tickets_id_tasks_count_get**](TicketTasksApi.md#service_tickets_id_tasks_count_get) | **GET** /service/tickets/{id}/tasks/count | 
[**service_tickets_id_tasks_get**](TicketTasksApi.md#service_tickets_id_tasks_get) | **GET** /service/tickets/{id}/tasks | 
[**service_tickets_id_tasks_post**](TicketTasksApi.md#service_tickets_id_tasks_post) | **POST** /service/tickets/{id}/tasks | 
[**service_tickets_id_tasks_task_id_delete**](TicketTasksApi.md#service_tickets_id_tasks_task_id_delete) | **DELETE** /service/tickets/{id}/tasks/{taskId} | 
[**service_tickets_id_tasks_task_id_get**](TicketTasksApi.md#service_tickets_id_tasks_task_id_get) | **GET** /service/tickets/{id}/tasks/{taskId} | 
[**service_tickets_id_tasks_task_id_patch**](TicketTasksApi.md#service_tickets_id_tasks_task_id_patch) | **PATCH** /service/tickets/{id}/tasks/{taskId} | 
[**service_tickets_id_tasks_task_id_put**](TicketTasksApi.md#service_tickets_id_tasks_task_id_put) | **PUT** /service/tickets/{id}/tasks/{taskId} | 


# **service_tickets_id_tasks_count_get**
> Count service_tickets_id_tasks_count_get(id, opts)



Get Tasks Count

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_tickets_id_tasks_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_count_get: #{e}"
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



# **service_tickets_id_tasks_get**
> Array&lt;Task&gt; service_tickets_id_tasks_get(id, opts)



Get Tasks

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

api_instance = ConnectWise::TicketTasksApi.new

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
  result = api_instance.service_tickets_id_tasks_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_get: #{e}"
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

[**Array&lt;Task&gt;**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_tasks_post**
> Task service_tickets_id_tasks_post(id, task)



Create Task

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

task = ConnectWise::Task.new # Task | 


begin
  result = api_instance.service_tickets_id_tasks_post(id, task)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **task** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_tasks_task_id_delete**
> service_tickets_id_tasks_task_id_delete(id, task_id)



Delete Task By Id

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

task_id = 56 # Integer | 


begin
  api_instance.service_tickets_id_tasks_task_id_delete(id, task_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_task_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **task_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_tickets_id_tasks_task_id_get**
> Task service_tickets_id_tasks_task_id_get(id, task_id)



Get Task By Id

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

task_id = 56 # Integer | 


begin
  result = api_instance.service_tickets_id_tasks_task_id_get(id, task_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_task_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **task_id** | **Integer**|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_tickets_id_tasks_task_id_patch**
> Task service_tickets_id_tasks_task_id_patch(id, task_id, operations)



Update Task

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

task_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_tickets_id_tasks_task_id_patch(id, task_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_task_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **task_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_tickets_id_tasks_task_id_put**
> Task service_tickets_id_tasks_task_id_put(id, task_id, task)



Replace Task

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

api_instance = ConnectWise::TicketTasksApi.new

id = 56 # Integer | 

task_id = 56 # Integer | 

task = ConnectWise::Task.new # Task | 


begin
  result = api_instance.service_tickets_id_tasks_task_id_put(id, task_id, task)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketTasksApi->service_tickets_id_tasks_task_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **task_id** | **Integer**|  | 
 **task** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




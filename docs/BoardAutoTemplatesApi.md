# ConnectWise::BoardAutoTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_auto_templates_auto_template_id_delete**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_delete) | **DELETE** /service/boards/{id}/autoTemplates/{autoTemplateId} | 
[**service_boards_id_auto_templates_auto_template_id_get**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_get) | **GET** /service/boards/{id}/autoTemplates/{autoTemplateId} | 
[**service_boards_id_auto_templates_auto_template_id_patch**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_patch) | **PATCH** /service/boards/{id}/autoTemplates/{autoTemplateId} | 
[**service_boards_id_auto_templates_auto_template_id_put**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_auto_template_id_put) | **PUT** /service/boards/{id}/autoTemplates/{autoTemplateId} | 
[**service_boards_id_auto_templates_count_get**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_count_get) | **GET** /service/boards/{id}/autoTemplates/count | 
[**service_boards_id_auto_templates_get**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_get) | **GET** /service/boards/{id}/autoTemplates | 
[**service_boards_id_auto_templates_post**](BoardAutoTemplatesApi.md#service_boards_id_auto_templates_post) | **POST** /service/boards/{id}/autoTemplates | 


# **service_boards_id_auto_templates_auto_template_id_delete**
> service_boards_id_auto_templates_auto_template_id_delete(id, auto_template_id)



Delete Auto Template By Id

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

auto_template_id = 56 # Integer | 


begin
  api_instance.service_boards_id_auto_templates_auto_template_id_delete(id, auto_template_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_auto_template_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_template_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_auto_templates_auto_template_id_get**
> BoardAutoTemplate service_boards_id_auto_templates_auto_template_id_get(id, auto_template_id)



Get Auto Template By Id

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

auto_template_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_auto_templates_auto_template_id_get(id, auto_template_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_auto_template_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_template_id** | **Integer**|  | 

### Return type

[**BoardAutoTemplate**](BoardAutoTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_auto_templates_auto_template_id_patch**
> BoardAutoTemplate service_boards_id_auto_templates_auto_template_id_patch(id, auto_template_id, operations)



Update Auto Template

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

auto_template_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_boards_id_auto_templates_auto_template_id_patch(id, auto_template_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_auto_template_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_template_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardAutoTemplate**](BoardAutoTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_auto_templates_auto_template_id_put**
> BoardAutoTemplate service_boards_id_auto_templates_auto_template_id_put(id, auto_template_id, board_auto_template)



Replace Auto Template

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

auto_template_id = 56 # Integer | 

board_auto_template = ConnectWise::BoardAutoTemplate.new # BoardAutoTemplate | 


begin
  result = api_instance.service_boards_id_auto_templates_auto_template_id_put(id, auto_template_id, board_auto_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_auto_template_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **auto_template_id** | **Integer**|  | 
 **board_auto_template** | [**BoardAutoTemplate**](BoardAutoTemplate.md)|  | 

### Return type

[**BoardAutoTemplate**](BoardAutoTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_boards_id_auto_templates_count_get**
> Count service_boards_id_auto_templates_count_get(id, opts)



Get Auto Templates Count

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_auto_templates_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_count_get: #{e}"
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



# **service_boards_id_auto_templates_get**
> Array&lt;BoardAutoTemplate&gt; service_boards_id_auto_templates_get(id, opts)



Get Auto Templates

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

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
  result = api_instance.service_boards_id_auto_templates_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_get: #{e}"
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

[**Array&lt;BoardAutoTemplate&gt;**](BoardAutoTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_auto_templates_post**
> BoardAutoTemplate service_boards_id_auto_templates_post(id, board_auto_template)



Create Auto Templates

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

api_instance = ConnectWise::BoardAutoTemplatesApi.new

id = 56 # Integer | 

board_auto_template = ConnectWise::BoardAutoTemplate.new # BoardAutoTemplate | 


begin
  result = api_instance.service_boards_id_auto_templates_post(id, board_auto_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardAutoTemplatesApi->service_boards_id_auto_templates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_auto_template** | [**BoardAutoTemplate**](BoardAutoTemplate.md)|  | 

### Return type

[**BoardAutoTemplate**](BoardAutoTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




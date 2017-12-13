# ConnectWise::ServiceEmailTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_email_templates_count_get**](ServiceEmailTemplatesApi.md#service_email_templates_count_get) | **GET** /service/emailTemplates/count | 
[**service_email_templates_get**](ServiceEmailTemplatesApi.md#service_email_templates_get) | **GET** /service/emailTemplates | 
[**service_email_templates_id_delete**](ServiceEmailTemplatesApi.md#service_email_templates_id_delete) | **DELETE** /service/emailTemplates/{id} | 
[**service_email_templates_id_get**](ServiceEmailTemplatesApi.md#service_email_templates_id_get) | **GET** /service/emailTemplates/{id} | 
[**service_email_templates_id_patch**](ServiceEmailTemplatesApi.md#service_email_templates_id_patch) | **PATCH** /service/emailTemplates/{id} | 
[**service_email_templates_id_put**](ServiceEmailTemplatesApi.md#service_email_templates_id_put) | **PUT** /service/emailTemplates/{id} | 
[**service_email_templates_post**](ServiceEmailTemplatesApi.md#service_email_templates_post) | **POST** /service/emailTemplates | 


# **service_email_templates_count_get**
> Count service_email_templates_count_get(opts)



Get Email Templates Count

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_email_templates_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_count_get: #{e}"
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



# **service_email_templates_get**
> Array&lt;ServiceEmailTemplate&gt; service_email_templates_get(opts)



Get Email Templates

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_email_templates_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_get: #{e}"
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

[**Array&lt;ServiceEmailTemplate&gt;**](ServiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_email_templates_id_delete**
> service_email_templates_id_delete(id)



Delete Email Template By Id

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

id = 56 # Integer | 


begin
  api_instance.service_email_templates_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_id_delete: #{e}"
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



# **service_email_templates_id_get**
> ServiceEmailTemplate service_email_templates_id_get(id)



Get Email Template By Id

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_email_templates_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ServiceEmailTemplate**](ServiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_email_templates_id_patch**
> ServiceEmailTemplate service_email_templates_id_patch(id, operations)



Update Email Template

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_email_templates_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceEmailTemplate**](ServiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_email_templates_id_put**
> ServiceEmailTemplate service_email_templates_id_put(id, service_email_template)



Replace Email Template

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

id = 56 # Integer | 

service_email_template = ConnectWise::ServiceEmailTemplate.new # ServiceEmailTemplate | 


begin
  result = api_instance.service_email_templates_id_put(id, service_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_email_template** | [**ServiceEmailTemplate**](ServiceEmailTemplate.md)|  | 

### Return type

[**ServiceEmailTemplate**](ServiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_email_templates_post**
> ServiceEmailTemplate service_email_templates_post(service_email_template)



Create Email Template

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

api_instance = ConnectWise::ServiceEmailTemplatesApi.new

service_email_template = ConnectWise::ServiceEmailTemplate.new # ServiceEmailTemplate | 


begin
  result = api_instance.service_email_templates_post(service_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceEmailTemplatesApi->service_email_templates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_email_template** | [**ServiceEmailTemplate**](ServiceEmailTemplate.md)|  | 

### Return type

[**ServiceEmailTemplate**](ServiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




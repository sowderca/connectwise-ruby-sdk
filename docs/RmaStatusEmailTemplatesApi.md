# ConnectWise::RmaStatusEmailTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_rma_statuses_id_email_templates_get**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_email_templates_get) | **GET** /procurement/rmaStatuses/{id}/emailTemplates | 
[**procurement_rma_statuses_id_emailtemplates_count_get**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_count_get) | **GET** /procurement/rmaStatuses/{id}/emailtemplates/count | 
[**procurement_rma_statuses_id_emailtemplates_email_template_id_delete**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_delete) | **DELETE** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_rma_statuses_id_emailtemplates_email_template_id_get**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_get) | **GET** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_rma_statuses_id_emailtemplates_email_template_id_patch**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_patch) | **PATCH** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_rma_statuses_id_emailtemplates_email_template_id_put**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_email_template_id_put) | **PUT** /procurement/rmaStatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_rma_statuses_id_emailtemplates_post**](RmaStatusEmailTemplatesApi.md#procurement_rma_statuses_id_emailtemplates_post) | **POST** /procurement/rmaStatuses/{id}/emailtemplates | 


# **procurement_rma_statuses_id_email_templates_get**
> Array&lt;RmaStatusEmailTemplate&gt; procurement_rma_statuses_id_email_templates_get(id, opts)



Get Rma Status Email Templates

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

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
  result = api_instance.procurement_rma_statuses_id_email_templates_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_email_templates_get: #{e}"
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

[**Array&lt;RmaStatusEmailTemplate&gt;**](RmaStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_emailtemplates_count_get**
> Count procurement_rma_statuses_id_emailtemplates_count_get(id, opts)



Get Rma Status Email Templates Count

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_rma_statuses_id_emailtemplates_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_count_get: #{e}"
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



# **procurement_rma_statuses_id_emailtemplates_email_template_id_delete**
> procurement_rma_statuses_id_emailtemplates_email_template_id_delete(id, email_template_id)



Delete Rma Status Email Template By Id

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  api_instance.procurement_rma_statuses_id_emailtemplates_email_template_id_delete(id, email_template_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_email_template_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_rma_statuses_id_emailtemplates_email_template_id_get**
> RmaStatusEmailTemplate procurement_rma_statuses_id_emailtemplates_email_template_id_get(id, email_template_id)



Get Rma Status Email Template By Id

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  result = api_instance.procurement_rma_statuses_id_emailtemplates_email_template_id_get(id, email_template_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_email_template_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 

### Return type

[**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_rma_statuses_id_emailtemplates_email_template_id_patch**
> RmaStatusEmailTemplate procurement_rma_statuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)



Update Rma Status Email Template

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_rma_statuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_email_template_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_id_emailtemplates_email_template_id_put**
> RmaStatusEmailTemplate procurement_rma_statuses_id_emailtemplates_email_template_id_put(id, email_template_id, rma_status_email_template)



Replace Rma Status Email Template

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

rma_status_email_template = ConnectWise::RmaStatusEmailTemplate.new # RmaStatusEmailTemplate | 


begin
  result = api_instance.procurement_rma_statuses_id_emailtemplates_email_template_id_put(id, email_template_id, rma_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_email_template_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **rma_status_email_template** | [**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)|  | 

### Return type

[**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_rma_statuses_id_emailtemplates_post**
> RmaStatusEmailTemplate procurement_rma_statuses_id_emailtemplates_post(id, rma_status_email_template)



Create Rma Status Email Template

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

api_instance = ConnectWise::RmaStatusEmailTemplatesApi.new

id = 56 # Integer | 

rma_status_email_template = ConnectWise::RmaStatusEmailTemplate.new # RmaStatusEmailTemplate | 


begin
  result = api_instance.procurement_rma_statuses_id_emailtemplates_post(id, rma_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling RmaStatusEmailTemplatesApi->procurement_rma_statuses_id_emailtemplates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **rma_status_email_template** | [**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)|  | 

### Return type

[**RmaStatusEmailTemplate**](RmaStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




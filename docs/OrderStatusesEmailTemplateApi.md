# ConnectWise::OrderStatusesEmailTemplateApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_orders_statuses_id_emailtemplates_count_get**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_count_get) | **GET** /sales/orders/statuses/{id}/emailtemplates/count | 
[**sales_orders_statuses_id_emailtemplates_email_template_id_delete**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_delete) | **DELETE** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} | 
[**sales_orders_statuses_id_emailtemplates_email_template_id_get**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_get) | **GET** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} | 
[**sales_orders_statuses_id_emailtemplates_email_template_id_patch**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_patch) | **PATCH** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} | 
[**sales_orders_statuses_id_emailtemplates_email_template_id_put**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_email_template_id_put) | **PUT** /sales/orders/statuses/{id}/emailtemplates/{emailTemplateId} | 
[**sales_orders_statuses_id_emailtemplates_get**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_get) | **GET** /sales/orders/statuses/{id}/emailtemplates | 
[**sales_orders_statuses_id_emailtemplates_post**](OrderStatusesEmailTemplateApi.md#sales_orders_statuses_id_emailtemplates_post) | **POST** /sales/orders/statuses/{id}/emailtemplates | 


# **sales_orders_statuses_id_emailtemplates_count_get**
> Count sales_orders_statuses_id_emailtemplates_count_get(order_status, opts)



Get Order Status Email Template Count

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

order_status = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_orders_statuses_id_emailtemplates_count_get(order_status, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_status** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_emailtemplates_email_template_id_delete**
> sales_orders_statuses_id_emailtemplates_email_template_id_delete(id, email_template_id)



Delete Order Status Email Template By Id

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  api_instance.sales_orders_statuses_id_emailtemplates_email_template_id_delete(id, email_template_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_email_template_id_delete: #{e}"
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



# **sales_orders_statuses_id_emailtemplates_email_template_id_get**
> OrderStatusEmailTemplate sales_orders_statuses_id_emailtemplates_email_template_id_get(id, email_template_id)



Get Order Status Email Template By Id

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  result = api_instance.sales_orders_statuses_id_emailtemplates_email_template_id_get(id, email_template_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_email_template_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 

### Return type

[**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_emailtemplates_email_template_id_patch**
> OrderStatusEmailTemplate sales_orders_statuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)



Update Order Status Email Template

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_orders_statuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_email_template_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_id_emailtemplates_email_template_id_put**
> OrderStatusEmailTemplate sales_orders_statuses_id_emailtemplates_email_template_id_put(id, email_template_id, order_status_email_template)



Replace Order Status Email Template

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

order_status_email_template = ConnectWise::OrderStatusEmailTemplate.new # OrderStatusEmailTemplate | 


begin
  result = api_instance.sales_orders_statuses_id_emailtemplates_email_template_id_put(id, email_template_id, order_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_email_template_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **order_status_email_template** | [**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)|  | 

### Return type

[**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_orders_statuses_id_emailtemplates_get**
> Array&lt;OrderStatusEmailTemplate&gt; sales_orders_statuses_id_emailtemplates_get(id, opts)



Get Order Status Email Template

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

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
  result = api_instance.sales_orders_statuses_id_emailtemplates_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_get: #{e}"
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

[**Array&lt;OrderStatusEmailTemplate&gt;**](OrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_orders_statuses_id_emailtemplates_post**
> OrderStatusEmailTemplate sales_orders_statuses_id_emailtemplates_post(id, order_status_email_template)



Create Order Status Email Template

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

api_instance = ConnectWise::OrderStatusesEmailTemplateApi.new

id = 56 # Integer | 

order_status_email_template = ConnectWise::OrderStatusEmailTemplate.new # OrderStatusEmailTemplate | 


begin
  result = api_instance.sales_orders_statuses_id_emailtemplates_post(id, order_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OrderStatusesEmailTemplateApi->sales_orders_statuses_id_emailtemplates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **order_status_email_template** | [**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)|  | 

### Return type

[**OrderStatusEmailTemplate**](OrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




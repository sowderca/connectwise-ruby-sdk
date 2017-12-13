# ConnectWise::PurchaseOrderStatusEmailTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_purchaseorderstatuses_id_emailtemplates_count_get**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_count_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates/count | 
[**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete) | **DELETE** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch) | **PATCH** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put) | **PUT** /procurement/purchaseorderstatuses/{id}/emailtemplates/{emailTemplateId} | 
[**procurement_purchaseorderstatuses_id_emailtemplates_get**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_get) | **GET** /procurement/purchaseorderstatuses/{id}/emailtemplates | 
[**procurement_purchaseorderstatuses_id_emailtemplates_post**](PurchaseOrderStatusEmailTemplatesApi.md#procurement_purchaseorderstatuses_id_emailtemplates_post) | **POST** /procurement/purchaseorderstatuses/{id}/emailtemplates | 


# **procurement_purchaseorderstatuses_id_emailtemplates_count_get**
> Count procurement_purchaseorderstatuses_id_emailtemplates_count_get(id, opts)



Get Purchase Order Status Email Templates Count

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_count_get: #{e}"
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



# **procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete**
> procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete(id, email_template_id)



Delete Purchase Order Status Email Template By Id

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  api_instance.procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete(id, email_template_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_delete: #{e}"
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



# **procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get**
> PurchaseOrderStatusEmailTemplate procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get(id, email_template_id)



Get Purchase Order Status Email Template By Id

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get(id, email_template_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 

### Return type

[**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch**
> PurchaseOrderStatusEmailTemplate procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)



Update Purchase Order Status Email Template

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch(id, email_template_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put**
> PurchaseOrderStatusEmailTemplate procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put(id, email_template_id, purchase_order_status_email_template)



Replace Purchase Order Status Email Template

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

email_template_id = 56 # Integer | 

purchase_order_status_email_template = ConnectWise::PurchaseOrderStatusEmailTemplate.new # PurchaseOrderStatusEmailTemplate | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put(id, email_template_id, purchase_order_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_email_template_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_template_id** | **Integer**|  | 
 **purchase_order_status_email_template** | [**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)|  | 

### Return type

[**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_emailtemplates_get**
> Array&lt;PurchaseOrderStatusEmailTemplate&gt; procurement_purchaseorderstatuses_id_emailtemplates_get(id, opts)



Get Purchase Order Status Email Templates

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

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
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_get: #{e}"
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

[**Array&lt;PurchaseOrderStatusEmailTemplate&gt;**](PurchaseOrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_purchaseorderstatuses_id_emailtemplates_post**
> PurchaseOrderStatusEmailTemplate procurement_purchaseorderstatuses_id_emailtemplates_post(id, purchase_order_status_email_template)



Create Purchase Order Status Email Template

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

api_instance = ConnectWise::PurchaseOrderStatusEmailTemplatesApi.new

id = 56 # Integer | 

purchase_order_status_email_template = ConnectWise::PurchaseOrderStatusEmailTemplate.new # PurchaseOrderStatusEmailTemplate | 


begin
  result = api_instance.procurement_purchaseorderstatuses_id_emailtemplates_post(id, purchase_order_status_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PurchaseOrderStatusEmailTemplatesApi->procurement_purchaseorderstatuses_id_emailtemplates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchase_order_status_email_template** | [**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)|  | 

### Return type

[**PurchaseOrderStatusEmailTemplate**](PurchaseOrderStatusEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




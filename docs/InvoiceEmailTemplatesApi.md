# ConnectWise::InvoiceEmailTemplatesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_invoice_email_templates_count_get**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_count_get) | **GET** /finance/invoiceEmailTemplates/count | 
[**finance_invoice_email_templates_get**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_get) | **GET** /finance/invoiceEmailTemplates | 
[**finance_invoice_email_templates_id_delete**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_delete) | **DELETE** /finance/invoiceEmailTemplates/{id} | 
[**finance_invoice_email_templates_id_get**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_get) | **GET** /finance/invoiceEmailTemplates/{id} | 
[**finance_invoice_email_templates_id_patch**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_patch) | **PATCH** /finance/invoiceEmailTemplates/{id} | 
[**finance_invoice_email_templates_id_put**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_id_put) | **PUT** /finance/invoiceEmailTemplates/{id} | 
[**finance_invoice_email_templates_post**](InvoiceEmailTemplatesApi.md#finance_invoice_email_templates_post) | **POST** /finance/invoiceEmailTemplates | 


# **finance_invoice_email_templates_count_get**
> Count finance_invoice_email_templates_count_get(opts)



Get Invoice Email Templates Count

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_invoice_email_templates_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_count_get: #{e}"
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



# **finance_invoice_email_templates_get**
> Array&lt;InvoiceEmailTemplate&gt; finance_invoice_email_templates_get(opts)



Get Invoice Email Templates

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_invoice_email_templates_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_get: #{e}"
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

[**Array&lt;InvoiceEmailTemplate&gt;**](InvoiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoice_email_templates_id_delete**
> finance_invoice_email_templates_id_delete(id)



Delete Invoice Email Template By Id

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_invoice_email_templates_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_id_delete: #{e}"
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



# **finance_invoice_email_templates_id_get**
> InvoiceEmailTemplate finance_invoice_email_templates_id_get(id)



Get Invoice Email Template By Id

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_invoice_email_templates_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_invoice_email_templates_id_patch**
> InvoiceEmailTemplate finance_invoice_email_templates_id_patch(id, operations)



Update Invoice Email Template

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_invoice_email_templates_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoice_email_templates_id_put**
> InvoiceEmailTemplate finance_invoice_email_templates_id_put(id, invoice_email_template)



Replace Invoice Email Template

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

id = 56 # Integer | 

invoice_email_template = ConnectWise::InvoiceEmailTemplate.new # InvoiceEmailTemplate | 


begin
  result = api_instance.finance_invoice_email_templates_id_put(id, invoice_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **invoice_email_template** | [**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)|  | 

### Return type

[**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_invoice_email_templates_post**
> InvoiceEmailTemplate finance_invoice_email_templates_post(invoice_email_template)



Create Invoice Email Template

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

api_instance = ConnectWise::InvoiceEmailTemplatesApi.new

invoice_email_template = ConnectWise::InvoiceEmailTemplate.new # InvoiceEmailTemplate | 


begin
  result = api_instance.finance_invoice_email_templates_post(invoice_email_template)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling InvoiceEmailTemplatesApi->finance_invoice_email_templates_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_email_template** | [**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)|  | 

### Return type

[**InvoiceEmailTemplate**](InvoiceEmailTemplate.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




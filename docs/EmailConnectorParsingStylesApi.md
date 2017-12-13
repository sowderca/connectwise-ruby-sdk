# ConnectWise::EmailConnectorParsingStylesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_email_connectors_id_parsing_styles_count_get**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_count_get) | **GET** /system/emailConnectors/{id}/parsingStyles/count | 
[**system_email_connectors_id_parsing_styles_get**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_get) | **GET** /system/emailConnectors/{id}/parsingStyles | 
[**system_email_connectors_id_parsing_styles_post**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_post) | **POST** /system/emailConnectors/{id}/parsingStyles | 
[**system_email_connectors_id_parsing_styles_style_id_delete**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_delete) | **DELETE** /system/emailConnectors/{id}/parsingStyles/{styleId} | 
[**system_email_connectors_id_parsing_styles_style_id_get**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId} | 
[**system_email_connectors_id_parsing_styles_style_id_patch**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_patch) | **PATCH** /system/emailConnectors/{id}/parsingStyles/{styleId} | 
[**system_email_connectors_id_parsing_styles_style_id_put**](EmailConnectorParsingStylesApi.md#system_email_connectors_id_parsing_styles_style_id_put) | **PUT** /system/emailConnectors/{id}/parsingStyles/{styleId} | 


# **system_email_connectors_id_parsing_styles_count_get**
> Count system_email_connectors_id_parsing_styles_count_get(id, opts)



Get Email Connector Parsing Style Count

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_email_connectors_id_parsing_styles_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_count_get: #{e}"
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



# **system_email_connectors_id_parsing_styles_get**
> Array&lt;EmailConnectorParsingStyle&gt; system_email_connectors_id_parsing_styles_get(id, opts)



Get Email Connector Parsing Styles

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

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
  result = api_instance.system_email_connectors_id_parsing_styles_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_get: #{e}"
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

[**Array&lt;EmailConnectorParsingStyle&gt;**](EmailConnectorParsingStyle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_post**
> EmailConnectorParsingStyle system_email_connectors_id_parsing_styles_post(id, email_connector_parsing_style)



Create Email Connector Parsing Style

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

email_connector_parsing_style = ConnectWise::EmailConnectorParsingStyle.new # EmailConnectorParsingStyle | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_post(id, email_connector_parsing_style)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_connector_parsing_style** | [**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)|  | 

### Return type

[**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_delete**
> system_email_connectors_id_parsing_styles_style_id_delete(id, style_id)



Delete Email Connector Parsing Style By Id

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 


begin
  api_instance.system_email_connectors_id_parsing_styles_style_id_delete(id, style_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_style_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_email_connectors_id_parsing_styles_style_id_get**
> EmailConnectorParsingStyle system_email_connectors_id_parsing_styles_style_id_get(id, style_id)



Get Email Connector Parsing Style By Id

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_get(id, style_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_style_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 

### Return type

[**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_patch**
> EmailConnectorParsingStyle system_email_connectors_id_parsing_styles_style_id_patch(id, style_id, operations)



Update Email Connector Parsing Style

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_patch(id, style_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_style_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_put**
> EmailConnectorParsingStyle system_email_connectors_id_parsing_styles_style_id_put(id, style_id, email_connector_parsing_style)



Replace Email Connector Parsing Style

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

api_instance = ConnectWise::EmailConnectorParsingStylesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

email_connector_parsing_style = ConnectWise::EmailConnectorParsingStyle.new # EmailConnectorParsingStyle | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_put(id, style_id, email_connector_parsing_style)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingStylesApi->system_email_connectors_id_parsing_styles_style_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **email_connector_parsing_style** | [**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)|  | 

### Return type

[**EmailConnectorParsingStyle**](EmailConnectorParsingStyle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::EmailConnectorParsingRulesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/count | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_get**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_post**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_post) | **POST** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete) | **DELETE** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get) | **GET** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch) | **PATCH** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} | 
[**system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put**](EmailConnectorParsingRulesApi.md#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put) | **PUT** /system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId} | 


# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get**
> Count system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get(id, style_id, opts)



Get Email Connector Parsing Rule Count

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get(id, style_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_get**
> Array&lt;EmailConnectorParsingRule&gt; system_email_connectors_id_parsing_styles_style_id_parsing_rules_get(id, style_id, opts)



Get Email Connector Parsing Rules

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_get(id, style_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;EmailConnectorParsingRule&gt;**](EmailConnectorParsingRule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_post**
> EmailConnectorParsingRule system_email_connectors_id_parsing_styles_style_id_parsing_rules_post(id, style_id, email_connector_parsing_rule)



Create Email Connector Parsing Rule

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

email_connector_parsing_rule = ConnectWise::EmailConnectorParsingRule.new # EmailConnectorParsingRule | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_post(id, style_id, email_connector_parsing_rule)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **email_connector_parsing_rule** | [**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)|  | 

### Return type

[**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete**
> system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete(id, style_id, rule_id)



Delete Email Connector Parsing Rule By Id

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

rule_id = 56 # Integer | 


begin
  api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete(id, style_id, rule_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **rule_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get**
> EmailConnectorParsingRule system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get(id, style_id, rule_id)



Get Email Connector Parsing Rule By Id

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

rule_id = 56 # Integer | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get(id, style_id, rule_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **rule_id** | **Integer**|  | 

### Return type

[**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch**
> EmailConnectorParsingRule system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch(id, style_id, rule_id, operations)



Update Email Connector Parsing Rule

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

rule_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch(id, style_id, rule_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **rule_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put**
> EmailConnectorParsingRule system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put(id, style_id, rule_id, email_connector_parsing_rule)



Replace Email Connector Parsing Rule

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

api_instance = ConnectWise::EmailConnectorParsingRulesApi.new

id = 56 # Integer | 

style_id = 56 # Integer | 

rule_id = 56 # Integer | 

email_connector_parsing_rule = ConnectWise::EmailConnectorParsingRule.new # EmailConnectorParsingRule | 


begin
  result = api_instance.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put(id, style_id, rule_id, email_connector_parsing_rule)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling EmailConnectorParsingRulesApi->system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **style_id** | **Integer**|  | 
 **rule_id** | **Integer**|  | 
 **email_connector_parsing_rule** | [**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)|  | 

### Return type

[**EmailConnectorParsingRule**](EmailConnectorParsingRule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




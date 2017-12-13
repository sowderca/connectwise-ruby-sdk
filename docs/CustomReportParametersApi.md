# ConnectWise::CustomReportParametersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_custom_reports_id_parameters_count_get**](CustomReportParametersApi.md#system_custom_reports_id_parameters_count_get) | **GET** /system/customReports/{id}/parameters/count | 
[**system_custom_reports_id_parameters_get**](CustomReportParametersApi.md#system_custom_reports_id_parameters_get) | **GET** /system/customReports/{id}/parameters | 
[**system_custom_reports_id_parameters_parameter_id_delete**](CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_delete) | **DELETE** /system/customReports/{id}/parameters/{parameterId} | 
[**system_custom_reports_id_parameters_parameter_id_get**](CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_get) | **GET** /system/customReports/{id}/parameters/{parameterId} | 
[**system_custom_reports_id_parameters_parameter_id_patch**](CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_patch) | **PATCH** /system/customReports/{id}/parameters/{parameterId} | 
[**system_custom_reports_id_parameters_parameter_id_put**](CustomReportParametersApi.md#system_custom_reports_id_parameters_parameter_id_put) | **PUT** /system/customReports/{id}/parameters/{parameterId} | 
[**system_custom_reports_id_parameters_post**](CustomReportParametersApi.md#system_custom_reports_id_parameters_post) | **POST** /system/customReports/{id}/parameters | 


# **system_custom_reports_id_parameters_count_get**
> Count system_custom_reports_id_parameters_count_get(id, opts)



Get Custom Report Parameters Count

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_custom_reports_id_parameters_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_count_get: #{e}"
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



# **system_custom_reports_id_parameters_get**
> Array&lt;CustomReportParameter&gt; system_custom_reports_id_parameters_get(id, opts)



Get Custom Report Parameters

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

api_instance = ConnectWise::CustomReportParametersApi.new

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
  result = api_instance.system_custom_reports_id_parameters_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_get: #{e}"
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

[**Array&lt;CustomReportParameter&gt;**](CustomReportParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_custom_reports_id_parameters_parameter_id_delete**
> system_custom_reports_id_parameters_parameter_id_delete(id, parameter_id)



Delete Custom Report Parameter By Id

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 


begin
  api_instance.system_custom_reports_id_parameters_parameter_id_delete(id, parameter_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_parameter_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_custom_reports_id_parameters_parameter_id_get**
> CustomReportParameter system_custom_reports_id_parameters_parameter_id_get(id, parameter_id)



Get Custom Report Parameter By Id

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 


begin
  result = api_instance.system_custom_reports_id_parameters_parameter_id_get(id, parameter_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_parameter_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 

### Return type

[**CustomReportParameter**](CustomReportParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_custom_reports_id_parameters_parameter_id_patch**
> CustomReportParameter system_custom_reports_id_parameters_parameter_id_patch(id, parameter_id, operations)



Update Custom Report Parameter

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_custom_reports_id_parameters_parameter_id_patch(id, parameter_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_parameter_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CustomReportParameter**](CustomReportParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_custom_reports_id_parameters_parameter_id_put**
> CustomReportParameter system_custom_reports_id_parameters_parameter_id_put(id, parameter_id, custom_report_parameter)



Replace Custom Report Parameter

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

parameter_id = 56 # Integer | 

custom_report_parameter = ConnectWise::CustomReportParameter.new # CustomReportParameter | 


begin
  result = api_instance.system_custom_reports_id_parameters_parameter_id_put(id, parameter_id, custom_report_parameter)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_parameter_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **parameter_id** | **Integer**|  | 
 **custom_report_parameter** | [**CustomReportParameter**](CustomReportParameter.md)|  | 

### Return type

[**CustomReportParameter**](CustomReportParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_custom_reports_id_parameters_post**
> CustomReportParameter system_custom_reports_id_parameters_post(id, custom_report_parameter)



Create Custom Report Parameter

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

api_instance = ConnectWise::CustomReportParametersApi.new

id = 56 # Integer | 

custom_report_parameter = ConnectWise::CustomReportParameter.new # CustomReportParameter | 


begin
  result = api_instance.system_custom_reports_id_parameters_post(id, custom_report_parameter)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportParametersApi->system_custom_reports_id_parameters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_report_parameter** | [**CustomReportParameter**](CustomReportParameter.md)|  | 

### Return type

[**CustomReportParameter**](CustomReportParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




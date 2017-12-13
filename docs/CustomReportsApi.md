# ConnectWise::CustomReportsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_custom_reports_count_get**](CustomReportsApi.md#system_custom_reports_count_get) | **GET** /system/customReports/count | 
[**system_custom_reports_get**](CustomReportsApi.md#system_custom_reports_get) | **GET** /system/customReports | 
[**system_custom_reports_id_delete**](CustomReportsApi.md#system_custom_reports_id_delete) | **DELETE** /system/customReports/{id} | 
[**system_custom_reports_id_get**](CustomReportsApi.md#system_custom_reports_id_get) | **GET** /system/customReports/{id} | 
[**system_custom_reports_id_patch**](CustomReportsApi.md#system_custom_reports_id_patch) | **PATCH** /system/customReports/{id} | 
[**system_custom_reports_id_put**](CustomReportsApi.md#system_custom_reports_id_put) | **PUT** /system/customReports/{id} | 
[**system_custom_reports_post**](CustomReportsApi.md#system_custom_reports_post) | **POST** /system/customReports | 


# **system_custom_reports_count_get**
> Count system_custom_reports_count_get(opts)



Get Custom Report Count

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

api_instance = ConnectWise::CustomReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_custom_reports_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_count_get: #{e}"
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



# **system_custom_reports_get**
> Array&lt;CustomReport&gt; system_custom_reports_get(opts)



Get Custom Report

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

api_instance = ConnectWise::CustomReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_custom_reports_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_get: #{e}"
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

[**Array&lt;CustomReport&gt;**](CustomReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_custom_reports_id_delete**
> system_custom_reports_id_delete(id)



Delete Custom Report By Id

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

api_instance = ConnectWise::CustomReportsApi.new

id = 56 # Integer | 


begin
  api_instance.system_custom_reports_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_id_delete: #{e}"
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



# **system_custom_reports_id_get**
> CustomReport system_custom_reports_id_get(id)



Get Custom Report By Id

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

api_instance = ConnectWise::CustomReportsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_custom_reports_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CustomReport**](CustomReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_custom_reports_id_patch**
> CustomReport system_custom_reports_id_patch(id, operations)



Update Custom Report

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

api_instance = ConnectWise::CustomReportsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_custom_reports_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CustomReport**](CustomReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_custom_reports_id_put**
> CustomReport system_custom_reports_id_put(id, custom_report)



Replace Custom Report

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

api_instance = ConnectWise::CustomReportsApi.new

id = 56 # Integer | 

custom_report = ConnectWise::CustomReport.new # CustomReport | 


begin
  result = api_instance.system_custom_reports_id_put(id, custom_report)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **custom_report** | [**CustomReport**](CustomReport.md)|  | 

### Return type

[**CustomReport**](CustomReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_custom_reports_post**
> CustomReport system_custom_reports_post(custom_report)



Create Custom Report

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

api_instance = ConnectWise::CustomReportsApi.new

custom_report = ConnectWise::CustomReport.new # CustomReport | 


begin
  result = api_instance.system_custom_reports_post(custom_report)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CustomReportsApi->system_custom_reports_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_report** | [**CustomReport**](CustomReport.md)|  | 

### Return type

[**CustomReport**](CustomReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




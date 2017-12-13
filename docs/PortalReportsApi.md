# ConnectWise::PortalReportsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_portal_reports_count_get**](PortalReportsApi.md#system_portal_reports_count_get) | **GET** /system/portalReports/count | 
[**system_portal_reports_get**](PortalReportsApi.md#system_portal_reports_get) | **GET** /system/portalReports | 
[**system_portal_reports_id_delete**](PortalReportsApi.md#system_portal_reports_id_delete) | **DELETE** /system/portalReports/{id} | 
[**system_portal_reports_id_get**](PortalReportsApi.md#system_portal_reports_id_get) | **GET** /system/portalReports/{id} | 
[**system_portal_reports_id_patch**](PortalReportsApi.md#system_portal_reports_id_patch) | **PATCH** /system/portalReports/{id} | 
[**system_portal_reports_id_put**](PortalReportsApi.md#system_portal_reports_id_put) | **PUT** /system/portalReports/{id} | 
[**system_portal_reports_post**](PortalReportsApi.md#system_portal_reports_post) | **POST** /system/portalReports | 


# **system_portal_reports_count_get**
> Count system_portal_reports_count_get(opts)



Get Portal Reports Count

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

api_instance = ConnectWise::PortalReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_portal_reports_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_count_get: #{e}"
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



# **system_portal_reports_get**
> Array&lt;PortalReport&gt; system_portal_reports_get(opts)



Get Portal Reports

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

api_instance = ConnectWise::PortalReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_portal_reports_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_get: #{e}"
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

[**Array&lt;PortalReport&gt;**](PortalReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_reports_id_delete**
> system_portal_reports_id_delete(id)



Delete Portal Report By Id

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

api_instance = ConnectWise::PortalReportsApi.new

id = 56 # Integer | 


begin
  api_instance.system_portal_reports_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_id_delete: #{e}"
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



# **system_portal_reports_id_get**
> PortalReport system_portal_reports_id_get(id)



Get Portal Report By Id

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

api_instance = ConnectWise::PortalReportsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_portal_reports_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**PortalReport**](PortalReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_portal_reports_id_patch**
> PortalReport system_portal_reports_id_patch(id, operations)



Update Portal Report

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

api_instance = ConnectWise::PortalReportsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_portal_reports_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**PortalReport**](PortalReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_reports_id_put**
> PortalReport system_portal_reports_id_put(id, portal_report)



Replace Portal Report

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

api_instance = ConnectWise::PortalReportsApi.new

id = 56 # Integer | 

portal_report = ConnectWise::PortalReport.new # PortalReport | 


begin
  result = api_instance.system_portal_reports_id_put(id, portal_report)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **portal_report** | [**PortalReport**](PortalReport.md)|  | 

### Return type

[**PortalReport**](PortalReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_portal_reports_post**
> PortalReport system_portal_reports_post(portal_report)



Create Portal Report

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

api_instance = ConnectWise::PortalReportsApi.new

portal_report = ConnectWise::PortalReport.new # PortalReport | 


begin
  result = api_instance.system_portal_reports_post(portal_report)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling PortalReportsApi->system_portal_reports_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portal_report** | [**PortalReport**](PortalReport.md)|  | 

### Return type

[**PortalReport**](PortalReport.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




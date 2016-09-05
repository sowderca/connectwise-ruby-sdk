# Connectwise::ReportsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_reports_get**](ReportsApi.md#system_reports_get) | **GET** /system/reports | 
[**system_reports_report_name_columns_get**](ReportsApi.md#system_reports_report_name_columns_get) | **GET** /system/reports/{reportName}/columns | 
[**system_reports_report_name_count_get**](ReportsApi.md#system_reports_report_name_count_get) | **GET** /system/reports/{reportName}/count | 
[**system_reports_report_name_get**](ReportsApi.md#system_reports_report_name_get) | **GET** /system/reports/{reportName} | 


# **system_reports_get**
> Array&lt;Report&gt; system_reports_get(opts)



Get Reports

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::ReportsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
}

begin
  result = api_instance.system_reports_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ReportsApi->system_reports_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 

### Return type

[**Array&lt;Report&gt;**](Report.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_reports_report_name_columns_get**
> Array&lt;JObject&gt; system_reports_report_name_columns_get(report_name)



Get Column Definitions

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::ReportsApi.new

report_name = "report_name_example" # String | 


begin
  result = api_instance.system_reports_report_name_columns_get(report_name)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ReportsApi->system_reports_report_name_columns_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_name** | **String**|  | 

### Return type

[**Array&lt;JObject&gt;**](JObject.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_reports_report_name_count_get**
> Count system_reports_report_name_count_get(report_name, opts)



Get Report Results Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::ReportsApi.new

report_name = "report_name_example" # String | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_reports_report_name_count_get(report_name, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ReportsApi->system_reports_report_name_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_name** | **String**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_reports_report_name_get**
> ReportDataResponse system_reports_report_name_get(report_name, opts)



Get Report Results

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::ReportsApi.new

report_name = "report_name_example" # String | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
  columns: "columns_example" # String | 
}

begin
  result = api_instance.system_reports_report_name_get(report_name, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ReportsApi->system_reports_report_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_name** | **String**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 
 **columns** | **String**|  | [optional] 

### Return type

[**ReportDataResponse**](ReportDataResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




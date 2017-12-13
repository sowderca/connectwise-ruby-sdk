# ConnectWise::ManagementLogsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_id_log_download_get**](ManagementLogsApi.md#company_management_id_log_download_get) | **GET** /company/management/{id}/log/download | 
[**company_management_id_logs_get**](ManagementLogsApi.md#company_management_id_logs_get) | **GET** /company/management/{id}/logs | 


# **company_management_id_log_download_get**
> company_management_id_log_download_get(opts)



Download Document

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

api_instance = ConnectWise::ManagementLogsApi.new

opts = { 
  file_path: "file_path_example" # String | 
}

begin
  api_instance.company_management_id_log_download_get(opts)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementLogsApi->company_management_id_log_download_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_path** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **company_management_id_logs_get**
> Array&lt;ManagementLogDocumentInfo&gt; company_management_id_logs_get(opts)



Get Management Execute Managed It Syncs

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

api_instance = ConnectWise::ManagementLogsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_id_logs_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementLogsApi->company_management_id_logs_get: #{e}"
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

[**Array&lt;ManagementLogDocumentInfo&gt;**](ManagementLogDocumentInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




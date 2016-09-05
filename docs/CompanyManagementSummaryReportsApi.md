# Connectwise::CompanyManagementSummaryReportsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_management_summary_reports_count_get**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_count_get) | **GET** /company/companies/{id}/managementSummaryReports/count | 
[**company_companies_id_management_summary_reports_get**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_get) | **GET** /company/companies/{id}/managementSummaryReports | 
[**company_companies_id_management_summary_reports_post**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_post) | **POST** /company/companies/{id}/managementSummaryReports | 
[**company_companies_id_management_summary_reports_report_id_delete**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_delete) | **DELETE** /company/companies/{id}/managementSummaryReports/{reportId} | 
[**company_companies_id_management_summary_reports_report_id_get**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_get) | **GET** /company/companies/{id}/managementSummaryReports/{reportId} | 
[**company_companies_id_management_summary_reports_report_id_patch**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_patch) | **PATCH** /company/companies/{id}/managementSummaryReports/{reportId} | 
[**company_companies_id_management_summary_reports_report_id_put**](CompanyManagementSummaryReportsApi.md#company_companies_id_management_summary_reports_report_id_put) | **PUT** /company/companies/{id}/managementSummaryReports/{reportId} | 


# **company_companies_id_management_summary_reports_count_get**
> Count company_companies_id_management_summary_reports_count_get(id, opts)



Get Company Types Count

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_companies_id_management_summary_reports_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_count_get: #{e}"
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



# **company_companies_id_management_summary_reports_get**
> Array&lt;CompanyManagementSummary&gt; company_companies_id_management_summary_reports_get(id, opts)



Get Management Summarys

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_id_management_summary_reports_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;CompanyManagementSummary&gt;**](CompanyManagementSummary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_management_summary_reports_post**
> CompanyManagementSummary company_companies_id_management_summary_reports_post(id, management_summary)



Create Management Summary

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

management_summary = Connectwise::CompanyManagementSummary.new # CompanyManagementSummary | 


begin
  result = api_instance.company_companies_id_management_summary_reports_post(id, management_summary)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_summary** | [**CompanyManagementSummary**](CompanyManagementSummary.md)|  | 

### Return type

[**CompanyManagementSummary**](CompanyManagementSummary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_management_summary_reports_report_id_delete**
> company_companies_id_management_summary_reports_report_id_delete(id, report_id)



Delete Management Summary By Id

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

report_id = 56 # Integer | 


begin
  api_instance.company_companies_id_management_summary_reports_report_id_delete(id, report_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_report_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_companies_id_management_summary_reports_report_id_get**
> CompanyManagementSummary company_companies_id_management_summary_reports_report_id_get(id, report_id)



Get Management Summary By Id

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

report_id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_management_summary_reports_report_id_get(id, report_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_report_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_id** | **Integer**|  | 

### Return type

[**CompanyManagementSummary**](CompanyManagementSummary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_management_summary_reports_report_id_patch**
> CompanyManagementSummary company_companies_id_management_summary_reports_report_id_patch(id, report_id, operations)



Update Management Summary

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

report_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_management_summary_reports_report_id_patch(id, report_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_report_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyManagementSummary**](CompanyManagementSummary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_management_summary_reports_report_id_put**
> CompanyManagementSummary company_companies_id_management_summary_reports_report_id_put(id, report_id, management_summary)



Replace Management Summary

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

api_instance = Connectwise::CompanyManagementSummaryReportsApi.new

id = 56 # Integer | 

report_id = 56 # Integer | 

management_summary = Connectwise::CompanyManagementSummary.new # CompanyManagementSummary | 


begin
  result = api_instance.company_companies_id_management_summary_reports_report_id_put(id, report_id, management_summary)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CompanyManagementSummaryReportsApi->company_companies_id_management_summary_reports_report_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_id** | **Integer**|  | 
 **management_summary** | [**CompanyManagementSummary**](CompanyManagementSummary.md)|  | 

### Return type

[**CompanyManagementSummary**](CompanyManagementSummary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




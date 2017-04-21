# ConnectWise::CompanyStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_statuses_count_get**](CompanyStatusesApi.md#company_companies_statuses_count_get) | **GET** /company/companies/statuses/count | 
[**company_companies_statuses_get**](CompanyStatusesApi.md#company_companies_statuses_get) | **GET** /company/companies/statuses | 
[**company_companies_statuses_id_delete**](CompanyStatusesApi.md#company_companies_statuses_id_delete) | **DELETE** /company/companies/statuses/{id} | 
[**company_companies_statuses_id_get**](CompanyStatusesApi.md#company_companies_statuses_id_get) | **GET** /company/companies/statuses/{id} | 
[**company_companies_statuses_id_patch**](CompanyStatusesApi.md#company_companies_statuses_id_patch) | **PATCH** /company/companies/statuses/{id} | 
[**company_companies_statuses_id_put**](CompanyStatusesApi.md#company_companies_statuses_id_put) | **PUT** /company/companies/statuses/{id} | 
[**company_companies_statuses_post**](CompanyStatusesApi.md#company_companies_statuses_post) | **POST** /company/companies/statuses | 


# **company_companies_statuses_count_get**
> Count company_companies_statuses_count_get(opts)



Get Company Statuses Count

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

api_instance = ConnectWise::CompanyStatusesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_companies_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_count_get: #{e}"
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



# **company_companies_statuses_get**
> Array&lt;CompanyStatus&gt; company_companies_statuses_get(opts)



Get Company Statuses

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

api_instance = ConnectWise::CompanyStatusesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_get: #{e}"
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

[**Array&lt;CompanyStatus&gt;**](CompanyStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_statuses_id_delete**
> company_companies_statuses_id_delete(id)



Delete Company Status By Id

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

api_instance = ConnectWise::CompanyStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.company_companies_statuses_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_id_delete: #{e}"
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



# **company_companies_statuses_id_get**
> CompanyStatus company_companies_statuses_id_get(id)



Get Company Status By Id

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

api_instance = ConnectWise::CompanyStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_companies_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CompanyStatus**](CompanyStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_statuses_id_patch**
> CompanyStatus company_companies_statuses_id_patch(id, operations)



Update Company Status

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

api_instance = ConnectWise::CompanyStatusesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_statuses_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyStatus**](CompanyStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_statuses_id_put**
> CompanyStatus company_companies_statuses_id_put(id, company_status)



Replace Company Status

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

api_instance = ConnectWise::CompanyStatusesApi.new

id = 56 # Integer | 

company_status = ConnectWise::CompanyStatus.new # CompanyStatus | 


begin
  result = api_instance.company_companies_statuses_id_put(id, company_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_status** | [**CompanyStatus**](CompanyStatus.md)|  | 

### Return type

[**CompanyStatus**](CompanyStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_statuses_post**
> CompanyStatus company_companies_statuses_post(company_status)



Create Company Status

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

api_instance = ConnectWise::CompanyStatusesApi.new

company_status = ConnectWise::CompanyStatus.new # CompanyStatus | 


begin
  result = api_instance.company_companies_statuses_post(company_status)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyStatusesApi->company_companies_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_status** | [**CompanyStatus**](CompanyStatus.md)|  | 

### Return type

[**CompanyStatus**](CompanyStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




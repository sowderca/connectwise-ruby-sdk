# ConnectWise::CompanyTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_types_count_get**](CompanyTypesApi.md#company_companies_types_count_get) | **GET** /company/companies/types/count | 
[**company_companies_types_get**](CompanyTypesApi.md#company_companies_types_get) | **GET** /company/companies/types | 
[**company_companies_types_id_delete**](CompanyTypesApi.md#company_companies_types_id_delete) | **DELETE** /company/companies/types/{id} | 
[**company_companies_types_id_get**](CompanyTypesApi.md#company_companies_types_id_get) | **GET** /company/companies/types/{id} | 
[**company_companies_types_id_patch**](CompanyTypesApi.md#company_companies_types_id_patch) | **PATCH** /company/companies/types/{id} | 
[**company_companies_types_id_put**](CompanyTypesApi.md#company_companies_types_id_put) | **PUT** /company/companies/types/{id} | 
[**company_companies_types_post**](CompanyTypesApi.md#company_companies_types_post) | **POST** /company/companies/types | 


# **company_companies_types_count_get**
> Count company_companies_types_count_get(opts)



Get Company Types Count

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

api_instance = ConnectWise::CompanyTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_companies_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_count_get: #{e}"
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



# **company_companies_types_get**
> Array&lt;CompanyType&gt; company_companies_types_get(opts)



Get Company Types

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

api_instance = ConnectWise::CompanyTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_get: #{e}"
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

[**Array&lt;CompanyType&gt;**](CompanyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_types_id_delete**
> company_companies_types_id_delete(id)



Delete Company Type By Id

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

api_instance = ConnectWise::CompanyTypesApi.new

id = 56 # Integer | 


begin
  api_instance.company_companies_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_id_delete: #{e}"
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



# **company_companies_types_id_get**
> CompanyType company_companies_types_id_get(id)



Get Company Type By Id

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

api_instance = ConnectWise::CompanyTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_companies_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CompanyType**](CompanyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_types_id_patch**
> CompanyType company_companies_types_id_patch(id, operations)



Update Company Type

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

api_instance = ConnectWise::CompanyTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyType**](CompanyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_types_id_put**
> CompanyType company_companies_types_id_put(id, company_type)



Replace Company Type

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

api_instance = ConnectWise::CompanyTypesApi.new

id = 56 # Integer | 

company_type = ConnectWise::CompanyType.new # CompanyType | 


begin
  result = api_instance.company_companies_types_id_put(id, company_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_type** | [**CompanyType**](CompanyType.md)|  | 

### Return type

[**CompanyType**](CompanyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_types_post**
> CompanyType company_companies_types_post(company_type)



Create Company Type

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

api_instance = ConnectWise::CompanyTypesApi.new

company_type = ConnectWise::CompanyType.new # CompanyType | 


begin
  result = api_instance.company_companies_types_post(company_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyTypesApi->company_companies_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_type** | [**CompanyType**](CompanyType.md)|  | 

### Return type

[**CompanyType**](CompanyType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




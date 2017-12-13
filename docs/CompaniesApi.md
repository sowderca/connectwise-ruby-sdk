# ConnectWise::CompaniesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_count_get**](CompaniesApi.md#company_companies_count_get) | **GET** /company/companies/count | 
[**company_companies_get**](CompaniesApi.md#company_companies_get) | **GET** /company/companies | 
[**company_companies_id_delete**](CompaniesApi.md#company_companies_id_delete) | **DELETE** /company/companies/{id} | 
[**company_companies_id_get**](CompaniesApi.md#company_companies_id_get) | **GET** /company/companies/{id} | 
[**company_companies_id_merge_post**](CompaniesApi.md#company_companies_id_merge_post) | **POST** /company/companies/{id}/merge | 
[**company_companies_id_patch**](CompaniesApi.md#company_companies_id_patch) | **PATCH** /company/companies/{id} | 
[**company_companies_id_put**](CompaniesApi.md#company_companies_id_put) | **PUT** /company/companies/{id} | 
[**company_companies_post**](CompaniesApi.md#company_companies_post) | **POST** /company/companies | 


# **company_companies_count_get**
> Count company_companies_count_get(opts)



Get Companies Count

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

api_instance = ConnectWise::CompaniesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.company_companies_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_get**
> Array&lt;Company&gt; company_companies_get(opts)



Get Companies

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

api_instance = ConnectWise::CompaniesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_companies_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_get: #{e}"
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

[**Array&lt;Company&gt;**](Company.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_delete**
> company_companies_id_delete(id)



Delete Company By Id

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

api_instance = ConnectWise::CompaniesApi.new

id = 56 # Integer | 


begin
  api_instance.company_companies_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_id_delete: #{e}"
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



# **company_companies_id_get**
> Company company_companies_id_get(id)



Get Company By Id

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

api_instance = ConnectWise::CompaniesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Company**](Company.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_merge_post**
> SuccessResponse company_companies_id_merge_post(id, merge)



Merge Company

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

api_instance = ConnectWise::CompaniesApi.new

id = 56 # Integer | 

merge = ConnectWise::CompanyMerge.new # CompanyMerge | 


begin
  result = api_instance.company_companies_id_merge_post(id, merge)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_id_merge_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **merge** | [**CompanyMerge**](CompanyMerge.md)|  | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_patch**
> Company company_companies_id_patch(id, operations)



Update Company

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

api_instance = ConnectWise::CompaniesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Company**](Company.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_put**
> Company company_companies_id_put(id, company)



Replace Company

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

api_instance = ConnectWise::CompaniesApi.new

id = 56 # Integer | 

company = ConnectWise::Company.new # Company | 


begin
  result = api_instance.company_companies_id_put(id, company)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company** | [**Company**](Company.md)|  | 

### Return type

[**Company**](Company.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_post**
> Company company_companies_post(company)



Create Company

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

api_instance = ConnectWise::CompaniesApi.new

company = ConnectWise::Company.new # Company | 


begin
  result = api_instance.company_companies_post(company)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompaniesApi->company_companies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | [**Company**](Company.md)|  | 

### Return type

[**Company**](Company.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::GroupCompaniesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_groups_id_companies_company_id_delete**](GroupCompaniesApi.md#marketing_groups_id_companies_company_id_delete) | **DELETE** /marketing/groups/{id}/companies/{companyId} | 
[**marketing_groups_id_companies_company_id_get**](GroupCompaniesApi.md#marketing_groups_id_companies_company_id_get) | **GET** /marketing/groups/{id}/companies/{companyId} | 
[**marketing_groups_id_companies_company_id_patch**](GroupCompaniesApi.md#marketing_groups_id_companies_company_id_patch) | **PATCH** /marketing/groups/{id}/companies/{companyId} | 
[**marketing_groups_id_companies_company_id_put**](GroupCompaniesApi.md#marketing_groups_id_companies_company_id_put) | **PUT** /marketing/groups/{id}/companies/{companyId} | 
[**marketing_groups_id_companies_count_get**](GroupCompaniesApi.md#marketing_groups_id_companies_count_get) | **GET** /marketing/groups/{id}/companies/count | 
[**marketing_groups_id_companies_get**](GroupCompaniesApi.md#marketing_groups_id_companies_get) | **GET** /marketing/groups/{id}/companies | 
[**marketing_groups_id_companies_post**](GroupCompaniesApi.md#marketing_groups_id_companies_post) | **POST** /marketing/groups/{id}/companies | 


# **marketing_groups_id_companies_company_id_delete**
> marketing_groups_id_companies_company_id_delete(id, company_id)



Delete Marketing Company By Id

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

company_id = 56 # Integer | 


begin
  api_instance.marketing_groups_id_companies_company_id_delete(id, company_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_company_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_groups_id_companies_company_id_get**
> MarketingCompany marketing_groups_id_companies_company_id_get(id, company_id)



Get Marketing Company By Id

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

company_id = 56 # Integer | 


begin
  result = api_instance.marketing_groups_id_companies_company_id_get(id, company_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_company_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_id** | **Integer**|  | 

### Return type

[**MarketingCompany**](MarketingCompany.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_companies_company_id_patch**
> MarketingCompany marketing_groups_id_companies_company_id_patch(id, company_id, operations)



Update Marketing Company

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

company_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_groups_id_companies_company_id_patch(id, company_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_company_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MarketingCompany**](MarketingCompany.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_id_companies_company_id_put**
> MarketingCompany marketing_groups_id_companies_company_id_put(id, company_id, marketing_company)



Replace Marketing Company

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

company_id = 56 # Integer | 

marketing_company = ConnectWise::MarketingCompany.new # MarketingCompany | 


begin
  result = api_instance.marketing_groups_id_companies_company_id_put(id, company_id, marketing_company)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_company_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_id** | **Integer**|  | 
 **marketing_company** | [**MarketingCompany**](MarketingCompany.md)|  | 

### Return type

[**MarketingCompany**](MarketingCompany.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_groups_id_companies_count_get**
> Count marketing_groups_id_companies_count_get(id, opts)



Get Marketing Companys Count

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_groups_id_companies_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_count_get: #{e}"
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



# **marketing_groups_id_companies_get**
> Array&lt;MarketingCompany&gt; marketing_groups_id_companies_get(id, opts)



Get Marketing Companys

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

api_instance = ConnectWise::GroupCompaniesApi.new

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
  result = api_instance.marketing_groups_id_companies_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_get: #{e}"
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

[**Array&lt;MarketingCompany&gt;**](MarketingCompany.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_groups_id_companies_post**
> MarketingCompany marketing_groups_id_companies_post(id, marketing_company)



Create Marketing Company

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

api_instance = ConnectWise::GroupCompaniesApi.new

id = 56 # Integer | 

marketing_company = ConnectWise::MarketingCompany.new # MarketingCompany | 


begin
  result = api_instance.marketing_groups_id_companies_post(id, marketing_company)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling GroupCompaniesApi->marketing_groups_id_companies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **marketing_company** | [**MarketingCompany**](MarketingCompany.md)|  | 

### Return type

[**MarketingCompany**](MarketingCompany.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




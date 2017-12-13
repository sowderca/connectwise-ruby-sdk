# ConnectWise::CompanySitesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_sites_count_get**](CompanySitesApi.md#company_companies_id_sites_count_get) | **GET** /company/companies/{id}/sites/count | 
[**company_companies_id_sites_get**](CompanySitesApi.md#company_companies_id_sites_get) | **GET** /company/companies/{id}/sites | 
[**company_companies_id_sites_post**](CompanySitesApi.md#company_companies_id_sites_post) | **POST** /company/companies/{id}/sites | 
[**company_companies_id_sites_site_id_delete**](CompanySitesApi.md#company_companies_id_sites_site_id_delete) | **DELETE** /company/companies/{id}/sites/{siteId} | 
[**company_companies_id_sites_site_id_get**](CompanySitesApi.md#company_companies_id_sites_site_id_get) | **GET** /company/companies/{id}/sites/{siteId} | 
[**company_companies_id_sites_site_id_patch**](CompanySitesApi.md#company_companies_id_sites_site_id_patch) | **PATCH** /company/companies/{id}/sites/{siteId} | 
[**company_companies_id_sites_site_id_put**](CompanySitesApi.md#company_companies_id_sites_site_id_put) | **PUT** /company/companies/{id}/sites/{siteId} | 


# **company_companies_id_sites_count_get**
> Count company_companies_id_sites_count_get(id, opts)



Get Sites Count

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_companies_id_sites_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_count_get: #{e}"
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



# **company_companies_id_sites_get**
> Array&lt;CompanySite&gt; company_companies_id_sites_get(id, opts)



Get Sites

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

api_instance = ConnectWise::CompanySitesApi.new

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
  result = api_instance.company_companies_id_sites_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_get: #{e}"
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

[**Array&lt;CompanySite&gt;**](CompanySite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_sites_post**
> CompanySite company_companies_id_sites_post(id, site)



Create Site

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

site = ConnectWise::CompanySite.new # CompanySite | 


begin
  result = api_instance.company_companies_id_sites_post(id, site)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site** | [**CompanySite**](CompanySite.md)|  | 

### Return type

[**CompanySite**](CompanySite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_sites_site_id_delete**
> company_companies_id_sites_site_id_delete(id, site_id)



Delete Site By Id

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 


begin
  api_instance.company_companies_id_sites_site_id_delete(id, site_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_site_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_companies_id_sites_site_id_get**
> CompanySite company_companies_id_sites_site_id_get(id, site_id)



Get Site By Id

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 


begin
  result = api_instance.company_companies_id_sites_site_id_get(id, site_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_site_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 

### Return type

[**CompanySite**](CompanySite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_sites_site_id_patch**
> CompanySite company_companies_id_sites_site_id_patch(id, site_id, operations)



Update Site

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_sites_site_id_patch(id, site_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_site_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanySite**](CompanySite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_sites_site_id_put**
> CompanySite company_companies_id_sites_site_id_put(id, site_id, site)



Replace Site

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

api_instance = ConnectWise::CompanySitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 

site = ConnectWise::CompanySite.new # CompanySite | 


begin
  result = api_instance.company_companies_id_sites_site_id_put(id, site_id, site)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanySitesApi->company_companies_id_sites_site_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 
 **site** | [**CompanySite**](CompanySite.md)|  | 

### Return type

[**CompanySite**](CompanySite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




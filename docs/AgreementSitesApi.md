# Connectwise::AgreementSitesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_sites_count_get**](AgreementSitesApi.md#finance_agreements_id_sites_count_get) | **GET** /finance/agreements/{id}/sites/count | 
[**finance_agreements_id_sites_get**](AgreementSitesApi.md#finance_agreements_id_sites_get) | **GET** /finance/agreements/{id}/sites | 
[**finance_agreements_id_sites_post**](AgreementSitesApi.md#finance_agreements_id_sites_post) | **POST** /finance/agreements/{id}/sites | 
[**finance_agreements_id_sites_site_id_delete**](AgreementSitesApi.md#finance_agreements_id_sites_site_id_delete) | **DELETE** /finance/agreements/{id}/sites/{siteId} | 
[**finance_agreements_id_sites_site_id_get**](AgreementSitesApi.md#finance_agreements_id_sites_site_id_get) | **GET** /finance/agreements/{id}/sites/{siteId} | 
[**finance_agreements_id_sites_site_id_patch**](AgreementSitesApi.md#finance_agreements_id_sites_site_id_patch) | **PATCH** /finance/agreements/{id}/sites/{siteId} | 
[**finance_agreements_id_sites_site_id_put**](AgreementSitesApi.md#finance_agreements_id_sites_site_id_put) | **PUT** /finance/agreements/{id}/sites/{siteId} | 


# **finance_agreements_id_sites_count_get**
> Count finance_agreements_id_sites_count_get(id, opts)



Get Sites Count

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_sites_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_count_get: #{e}"
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



# **finance_agreements_id_sites_get**
> Array&lt;AgreementSite&gt; finance_agreements_id_sites_get(id, opts)



Get Sites

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_id_sites_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_get: #{e}"
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

[**Array&lt;AgreementSite&gt;**](AgreementSite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_sites_post**
> AgreementSite finance_agreements_id_sites_post(id, site)



Create Site

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

site = Connectwise::AgreementSite.new # AgreementSite | 


begin
  result = api_instance.finance_agreements_id_sites_post(id, site)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site** | [**AgreementSite**](AgreementSite.md)|  | 

### Return type

[**AgreementSite**](AgreementSite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_sites_site_id_delete**
> finance_agreements_id_sites_site_id_delete(id, site_id)



Delete Site By Id

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_sites_site_id_delete(id, site_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_site_id_delete: #{e}"
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



# **finance_agreements_id_sites_site_id_get**
> AgreementSite finance_agreements_id_sites_site_id_get(id, site_id)



Get Site By Id

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_sites_site_id_get(id, site_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_site_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 

### Return type

[**AgreementSite**](AgreementSite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_sites_site_id_patch**
> AgreementSite finance_agreements_id_sites_site_id_patch(id, site_id, operations)



Update Site

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_sites_site_id_patch(id, site_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_site_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AgreementSite**](AgreementSite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_sites_site_id_put**
> AgreementSite finance_agreements_id_sites_site_id_put(id, site_id, site)



Replace Site

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

api_instance = Connectwise::AgreementSitesApi.new

id = 56 # Integer | 

site_id = 56 # Integer | 

site = Connectwise::AgreementSite.new # AgreementSite | 


begin
  result = api_instance.finance_agreements_id_sites_site_id_put(id, site_id, site)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementSitesApi->finance_agreements_id_sites_site_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **site_id** | **Integer**|  | 
 **site** | [**AgreementSite**](AgreementSite.md)|  | 

### Return type

[**AgreementSite**](AgreementSite.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




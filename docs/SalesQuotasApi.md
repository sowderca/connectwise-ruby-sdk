# ConnectWise::SalesQuotasApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_quotas_count_get**](SalesQuotasApi.md#sales_quotas_count_get) | **GET** /sales/quotas/count | 
[**sales_quotas_get**](SalesQuotasApi.md#sales_quotas_get) | **GET** /sales/quotas | 
[**sales_quotas_id_delete**](SalesQuotasApi.md#sales_quotas_id_delete) | **DELETE** /sales/quotas/{id} | 
[**sales_quotas_id_get**](SalesQuotasApi.md#sales_quotas_id_get) | **GET** /sales/quotas/{id} | 
[**sales_quotas_id_patch**](SalesQuotasApi.md#sales_quotas_id_patch) | **PATCH** /sales/quotas/{id} | 
[**sales_quotas_id_put**](SalesQuotasApi.md#sales_quotas_id_put) | **PUT** /sales/quotas/{id} | 
[**sales_quotas_post**](SalesQuotasApi.md#sales_quotas_post) | **POST** /sales/quotas | 


# **sales_quotas_count_get**
> Count sales_quotas_count_get(opts)



Get Sales Quota Count

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

api_instance = ConnectWise::SalesQuotasApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_quotas_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_count_get: #{e}"
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



# **sales_quotas_get**
> Array&lt;SalesQuota&gt; sales_quotas_get(opts)



Get Sales Quota

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

api_instance = ConnectWise::SalesQuotasApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_quotas_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_get: #{e}"
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

[**Array&lt;SalesQuota&gt;**](SalesQuota.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_quotas_id_delete**
> sales_quotas_id_delete(id)



Delete Sales Quota By Id

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

api_instance = ConnectWise::SalesQuotasApi.new

id = 56 # Integer | 


begin
  api_instance.sales_quotas_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_id_delete: #{e}"
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



# **sales_quotas_id_get**
> SalesQuota sales_quotas_id_get(id)



Get Sales Quota By Id

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

api_instance = ConnectWise::SalesQuotasApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_quotas_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**SalesQuota**](SalesQuota.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_quotas_id_patch**
> SalesQuota sales_quotas_id_patch(id, operations)



Update Sales Quota

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

api_instance = ConnectWise::SalesQuotasApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_quotas_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SalesQuota**](SalesQuota.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_quotas_id_put**
> SalesQuota sales_quotas_id_put(id, sales_quota)



Replace Sales Quota

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

api_instance = ConnectWise::SalesQuotasApi.new

id = 56 # Integer | 

sales_quota = ConnectWise::SalesQuota.new # SalesQuota | 


begin
  result = api_instance.sales_quotas_id_put(id, sales_quota)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sales_quota** | [**SalesQuota**](SalesQuota.md)|  | 

### Return type

[**SalesQuota**](SalesQuota.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_quotas_post**
> SalesQuota sales_quotas_post(sales_quota)



Create Sales Quota

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

api_instance = ConnectWise::SalesQuotasApi.new

sales_quota = ConnectWise::SalesQuota.new # SalesQuota | 


begin
  result = api_instance.sales_quotas_post(sales_quota)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SalesQuotasApi->sales_quotas_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sales_quota** | [**SalesQuota**](SalesQuota.md)|  | 

### Return type

[**SalesQuota**](SalesQuota.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




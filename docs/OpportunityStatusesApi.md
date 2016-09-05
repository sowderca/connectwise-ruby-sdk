# Connectwise::OpportunityStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_statuses_count_get**](OpportunityStatusesApi.md#sales_opportunities_statuses_count_get) | **GET** /sales/opportunities/statuses/count | 
[**sales_opportunities_statuses_get**](OpportunityStatusesApi.md#sales_opportunities_statuses_get) | **GET** /sales/opportunities/statuses | 
[**sales_opportunities_statuses_id_delete**](OpportunityStatusesApi.md#sales_opportunities_statuses_id_delete) | **DELETE** /sales/opportunities/statuses/{id} | 
[**sales_opportunities_statuses_id_get**](OpportunityStatusesApi.md#sales_opportunities_statuses_id_get) | **GET** /sales/opportunities/statuses/{id} | 
[**sales_opportunities_statuses_id_patch**](OpportunityStatusesApi.md#sales_opportunities_statuses_id_patch) | **PATCH** /sales/opportunities/statuses/{id} | 
[**sales_opportunities_statuses_id_put**](OpportunityStatusesApi.md#sales_opportunities_statuses_id_put) | **PUT** /sales/opportunities/statuses/{id} | 
[**sales_opportunities_statuses_post**](OpportunityStatusesApi.md#sales_opportunities_statuses_post) | **POST** /sales/opportunities/statuses | 


# **sales_opportunities_statuses_count_get**
> Count sales_opportunities_statuses_count_get(opts)



Get Statuses Count

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

api_instance = Connectwise::OpportunityStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_statuses_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_count_get: #{e}"
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



# **sales_opportunities_statuses_get**
> Array&lt;OpportunityStatus&gt; sales_opportunities_statuses_get(opts)



Get Statuses

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

api_instance = Connectwise::OpportunityStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_statuses_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;OpportunityStatus&gt;**](OpportunityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_statuses_id_delete**
> sales_opportunities_statuses_id_delete(id)



Delete Status By Id

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

api_instance = Connectwise::OpportunityStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_opportunities_statuses_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_id_delete: #{e}"
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



# **sales_opportunities_statuses_id_get**
> OpportunityStatus sales_opportunities_statuses_id_get(id)



Get Status By Id

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

api_instance = Connectwise::OpportunityStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_statuses_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OpportunityStatus**](OpportunityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_statuses_id_patch**
> OpportunityStatus sales_opportunities_statuses_id_patch(id, operations)



Update Status

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

api_instance = Connectwise::OpportunityStatusesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_statuses_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityStatus**](OpportunityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_statuses_id_put**
> OpportunityStatus sales_opportunities_statuses_id_put(id, status)



Replace Status

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

api_instance = Connectwise::OpportunityStatusesApi.new

id = 56 # Integer | 

status = Connectwise::OpportunityStatus.new # OpportunityStatus | 


begin
  result = api_instance.sales_opportunities_statuses_id_put(id, status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **status** | [**OpportunityStatus**](OpportunityStatus.md)|  | 

### Return type

[**OpportunityStatus**](OpportunityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_statuses_post**
> OpportunityStatus sales_opportunities_statuses_post(status)



Create Status

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

api_instance = Connectwise::OpportunityStatusesApi.new

status = Connectwise::OpportunityStatus.new # OpportunityStatus | 


begin
  result = api_instance.sales_opportunities_statuses_post(status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityStatusesApi->sales_opportunities_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**OpportunityStatus**](OpportunityStatus.md)|  | 

### Return type

[**OpportunityStatus**](OpportunityStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




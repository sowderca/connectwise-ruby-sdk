# ConnectWise::OpportunityTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_types_count_get**](OpportunityTypesApi.md#sales_opportunities_types_count_get) | **GET** /sales/opportunities/types/count | 
[**sales_opportunities_types_get**](OpportunityTypesApi.md#sales_opportunities_types_get) | **GET** /sales/opportunities/types | 
[**sales_opportunities_types_id_delete**](OpportunityTypesApi.md#sales_opportunities_types_id_delete) | **DELETE** /sales/opportunities/types/{id} | 
[**sales_opportunities_types_id_get**](OpportunityTypesApi.md#sales_opportunities_types_id_get) | **GET** /sales/opportunities/types/{id} | 
[**sales_opportunities_types_id_patch**](OpportunityTypesApi.md#sales_opportunities_types_id_patch) | **PATCH** /sales/opportunities/types/{id} | 
[**sales_opportunities_types_id_put**](OpportunityTypesApi.md#sales_opportunities_types_id_put) | **PUT** /sales/opportunities/types/{id} | 
[**sales_opportunities_types_post**](OpportunityTypesApi.md#sales_opportunities_types_post) | **POST** /sales/opportunities/types | 


# **sales_opportunities_types_count_get**
> Count sales_opportunities_types_count_get(opts)



Get Opportunity Types Count

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

api_instance = ConnectWise::OpportunityTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_count_get: #{e}"
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



# **sales_opportunities_types_get**
> Array&lt;OpportunityType&gt; sales_opportunities_types_get(opts)



Get Opportunity Types

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

api_instance = ConnectWise::OpportunityTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_get: #{e}"
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

[**Array&lt;OpportunityType&gt;**](OpportunityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_types_id_delete**
> sales_opportunities_types_id_delete(id)



Delete Opportunity Type By Id

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

api_instance = ConnectWise::OpportunityTypesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_opportunities_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_id_delete: #{e}"
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



# **sales_opportunities_types_id_get**
> OpportunityType sales_opportunities_types_id_get(id)



Get Opportunity Type By Id

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

api_instance = ConnectWise::OpportunityTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OpportunityType**](OpportunityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_types_id_patch**
> OpportunityType sales_opportunities_types_id_patch(id, operations)



Update Opportunity Type

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

api_instance = ConnectWise::OpportunityTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityType**](OpportunityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_types_id_put**
> OpportunityType sales_opportunities_types_id_put(id, opportunity_type)



Replace Opportunity Type

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

api_instance = ConnectWise::OpportunityTypesApi.new

id = 56 # Integer | 

opportunity_type = ConnectWise::OpportunityType.new # OpportunityType | 


begin
  result = api_instance.sales_opportunities_types_id_put(id, opportunity_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **opportunity_type** | [**OpportunityType**](OpportunityType.md)|  | 

### Return type

[**OpportunityType**](OpportunityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_types_post**
> OpportunityType sales_opportunities_types_post(opportunity_type)



Create Opportunity Type

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

api_instance = ConnectWise::OpportunityTypesApi.new

opportunity_type = ConnectWise::OpportunityType.new # OpportunityType | 


begin
  result = api_instance.sales_opportunities_types_post(opportunity_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityTypesApi->sales_opportunities_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opportunity_type** | [**OpportunityType**](OpportunityType.md)|  | 

### Return type

[**OpportunityType**](OpportunityType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::OpportunityStagesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_stages_count_get**](OpportunityStagesApi.md#sales_stages_count_get) | **GET** /sales/stages/count | 
[**sales_stages_get**](OpportunityStagesApi.md#sales_stages_get) | **GET** /sales/stages | 
[**sales_stages_id_delete**](OpportunityStagesApi.md#sales_stages_id_delete) | **DELETE** /sales/stages/{id} | 
[**sales_stages_id_get**](OpportunityStagesApi.md#sales_stages_id_get) | **GET** /sales/stages/{id} | 
[**sales_stages_id_patch**](OpportunityStagesApi.md#sales_stages_id_patch) | **PATCH** /sales/stages/{id} | 
[**sales_stages_id_put**](OpportunityStagesApi.md#sales_stages_id_put) | **PUT** /sales/stages/{id} | 
[**sales_stages_post**](OpportunityStagesApi.md#sales_stages_post) | **POST** /sales/stages | 


# **sales_stages_count_get**
> Count sales_stages_count_get(opts)



Get Stage Count

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

api_instance = ConnectWise::OpportunityStagesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_stages_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_count_get: #{e}"
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



# **sales_stages_get**
> Array&lt;OpportunityStage&gt; sales_stages_get(opts)



Get Stage

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

api_instance = ConnectWise::OpportunityStagesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_stages_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_get: #{e}"
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

[**Array&lt;OpportunityStage&gt;**](OpportunityStage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_stages_id_delete**
> sales_stages_id_delete(id)



Delete Stage By Id

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

api_instance = ConnectWise::OpportunityStagesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_stages_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_id_delete: #{e}"
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



# **sales_stages_id_get**
> OpportunityStage sales_stages_id_get(id)



Get Stage By Id

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

api_instance = ConnectWise::OpportunityStagesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_stages_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OpportunityStage**](OpportunityStage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_stages_id_patch**
> OpportunityStage sales_stages_id_patch(id, operations)



Update Stage

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

api_instance = ConnectWise::OpportunityStagesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_stages_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityStage**](OpportunityStage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_stages_id_put**
> OpportunityStage sales_stages_id_put(id, stage)



Replace Stage

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

api_instance = ConnectWise::OpportunityStagesApi.new

id = 56 # Integer | 

stage = ConnectWise::OpportunityStage.new # OpportunityStage | 


begin
  result = api_instance.sales_stages_id_put(id, stage)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **stage** | [**OpportunityStage**](OpportunityStage.md)|  | 

### Return type

[**OpportunityStage**](OpportunityStage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_stages_post**
> OpportunityStage sales_stages_post(stage)



Create Stage

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

api_instance = ConnectWise::OpportunityStagesApi.new

stage = ConnectWise::OpportunityStage.new # OpportunityStage | 


begin
  result = api_instance.sales_stages_post(stage)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityStagesApi->sales_stages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage** | [**OpportunityStage**](OpportunityStage.md)|  | 

### Return type

[**OpportunityStage**](OpportunityStage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




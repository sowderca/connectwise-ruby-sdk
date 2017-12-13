# ConnectWise::MarketDescriptionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_market_descriptions_count_get**](MarketDescriptionsApi.md#company_market_descriptions_count_get) | **GET** /company/marketDescriptions/count | 
[**company_market_descriptions_get**](MarketDescriptionsApi.md#company_market_descriptions_get) | **GET** /company/marketDescriptions | 
[**company_market_descriptions_id_delete**](MarketDescriptionsApi.md#company_market_descriptions_id_delete) | **DELETE** /company/marketDescriptions/{id} | 
[**company_market_descriptions_id_get**](MarketDescriptionsApi.md#company_market_descriptions_id_get) | **GET** /company/marketDescriptions/{id} | 
[**company_market_descriptions_id_patch**](MarketDescriptionsApi.md#company_market_descriptions_id_patch) | **PATCH** /company/marketDescriptions/{id} | 
[**company_market_descriptions_id_put**](MarketDescriptionsApi.md#company_market_descriptions_id_put) | **PUT** /company/marketDescriptions/{id} | 
[**company_market_descriptions_post**](MarketDescriptionsApi.md#company_market_descriptions_post) | **POST** /company/marketDescriptions | 


# **company_market_descriptions_count_get**
> Count company_market_descriptions_count_get(opts)



Get Market Description Count

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

api_instance = ConnectWise::MarketDescriptionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_market_descriptions_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_count_get: #{e}"
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



# **company_market_descriptions_get**
> Array&lt;MarketDescription&gt; company_market_descriptions_get(opts)



Get Market Description

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

api_instance = ConnectWise::MarketDescriptionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_market_descriptions_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_get: #{e}"
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

[**Array&lt;MarketDescription&gt;**](MarketDescription.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_market_descriptions_id_delete**
> company_market_descriptions_id_delete(id)



Delete Market Description By Id

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

api_instance = ConnectWise::MarketDescriptionsApi.new

id = 56 # Integer | 


begin
  api_instance.company_market_descriptions_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_id_delete: #{e}"
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



# **company_market_descriptions_id_get**
> MarketDescription company_market_descriptions_id_get(id)



Get Market Description By Id

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

api_instance = ConnectWise::MarketDescriptionsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_market_descriptions_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**MarketDescription**](MarketDescription.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_market_descriptions_id_patch**
> MarketDescription company_market_descriptions_id_patch(id, operations)



Update Market Description

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

api_instance = ConnectWise::MarketDescriptionsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_market_descriptions_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MarketDescription**](MarketDescription.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_market_descriptions_id_put**
> MarketDescription company_market_descriptions_id_put(id, market_description)



Replace Market Description

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

api_instance = ConnectWise::MarketDescriptionsApi.new

id = 56 # Integer | 

market_description = ConnectWise::MarketDescription.new # MarketDescription | 


begin
  result = api_instance.company_market_descriptions_id_put(id, market_description)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **market_description** | [**MarketDescription**](MarketDescription.md)|  | 

### Return type

[**MarketDescription**](MarketDescription.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_market_descriptions_post**
> MarketDescription company_market_descriptions_post(market_description)



Create Market Description

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

api_instance = ConnectWise::MarketDescriptionsApi.new

market_description = ConnectWise::MarketDescription.new # MarketDescription | 


begin
  result = api_instance.company_market_descriptions_post(market_description)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MarketDescriptionsApi->company_market_descriptions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **market_description** | [**MarketDescription**](MarketDescription.md)|  | 

### Return type

[**MarketDescription**](MarketDescription.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




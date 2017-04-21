# ConnectWise::CampaignTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_types_count_get**](CampaignTypesApi.md#marketing_campaigns_types_count_get) | **GET** /marketing/campaigns/types/count | 
[**marketing_campaigns_types_get**](CampaignTypesApi.md#marketing_campaigns_types_get) | **GET** /marketing/campaigns/types | 
[**marketing_campaigns_types_id_delete**](CampaignTypesApi.md#marketing_campaigns_types_id_delete) | **DELETE** /marketing/campaigns/types/{id} | 
[**marketing_campaigns_types_id_get**](CampaignTypesApi.md#marketing_campaigns_types_id_get) | **GET** /marketing/campaigns/types/{id} | 
[**marketing_campaigns_types_id_patch**](CampaignTypesApi.md#marketing_campaigns_types_id_patch) | **PATCH** /marketing/campaigns/types/{id} | 
[**marketing_campaigns_types_id_put**](CampaignTypesApi.md#marketing_campaigns_types_id_put) | **PUT** /marketing/campaigns/types/{id} | 
[**marketing_campaigns_types_post**](CampaignTypesApi.md#marketing_campaigns_types_post) | **POST** /marketing/campaigns/types | 


# **marketing_campaigns_types_count_get**
> Count marketing_campaigns_types_count_get(opts)



Get Campaign Types Count

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

api_instance = ConnectWise::CampaignTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.marketing_campaigns_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_count_get: #{e}"
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



# **marketing_campaigns_types_get**
> Array&lt;CampaignType&gt; marketing_campaigns_types_get(opts)



Get Campaign Types

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

api_instance = ConnectWise::CampaignTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_get: #{e}"
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

[**Array&lt;CampaignType&gt;**](CampaignType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_types_id_delete**
> marketing_campaigns_types_id_delete(id)



Delete Campaign Type By Id

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

api_instance = ConnectWise::CampaignTypesApi.new

id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_id_delete: #{e}"
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



# **marketing_campaigns_types_id_get**
> CampaignType marketing_campaigns_types_id_get(id)



Get Campaign Type By Id

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

api_instance = ConnectWise::CampaignTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CampaignType**](CampaignType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_types_id_patch**
> CampaignType marketing_campaigns_types_id_patch(id, operations)



Update Campaign Type

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

api_instance = ConnectWise::CampaignTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CampaignType**](CampaignType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_types_id_put**
> CampaignType marketing_campaigns_types_id_put(id, campaign_type)



Replace Campaign Type

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

api_instance = ConnectWise::CampaignTypesApi.new

id = 56 # Integer | 

campaign_type = ConnectWise::CampaignType.new # CampaignType | 


begin
  result = api_instance.marketing_campaigns_types_id_put(id, campaign_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **campaign_type** | [**CampaignType**](CampaignType.md)|  | 

### Return type

[**CampaignType**](CampaignType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_types_post**
> CampaignType marketing_campaigns_types_post(campaign_type)



Create Campaign Type

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

api_instance = ConnectWise::CampaignTypesApi.new

campaign_type = ConnectWise::CampaignType.new # CampaignType | 


begin
  result = api_instance.marketing_campaigns_types_post(campaign_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignTypesApi->marketing_campaigns_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_type** | [**CampaignType**](CampaignType.md)|  | 

### Return type

[**CampaignType**](CampaignType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




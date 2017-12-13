# ConnectWise::CampaignSubTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_sub_types_count_get**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_count_get) | **GET** /marketing/campaigns/subTypes/count | 
[**marketing_campaigns_sub_types_get**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_get) | **GET** /marketing/campaigns/subTypes | 
[**marketing_campaigns_sub_types_id_delete**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_delete) | **DELETE** /marketing/campaigns/subTypes/{id} | 
[**marketing_campaigns_sub_types_id_get**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_get) | **GET** /marketing/campaigns/subTypes/{id} | 
[**marketing_campaigns_sub_types_id_patch**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_patch) | **PATCH** /marketing/campaigns/subTypes/{id} | 
[**marketing_campaigns_sub_types_id_put**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_id_put) | **PUT** /marketing/campaigns/subTypes/{id} | 
[**marketing_campaigns_sub_types_post**](CampaignSubTypesApi.md#marketing_campaigns_sub_types_post) | **POST** /marketing/campaigns/subTypes | 


# **marketing_campaigns_sub_types_count_get**
> Count marketing_campaigns_sub_types_count_get(opts)



Get Campaign Sub Types Count

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

api_instance = ConnectWise::CampaignSubTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_sub_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_count_get: #{e}"
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



# **marketing_campaigns_sub_types_get**
> Array&lt;CampaignSubType&gt; marketing_campaigns_sub_types_get(opts)



Get Campaign Sub Types

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

api_instance = ConnectWise::CampaignSubTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_sub_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_get: #{e}"
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

[**Array&lt;CampaignSubType&gt;**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_sub_types_id_delete**
> marketing_campaigns_sub_types_id_delete(id)



Delete Campaign Sub Type By Id

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

api_instance = ConnectWise::CampaignSubTypesApi.new

id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_sub_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_id_delete: #{e}"
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



# **marketing_campaigns_sub_types_id_get**
> CampaignSubType marketing_campaigns_sub_types_id_get(id)



Get Campaign Sub Type By Id

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

api_instance = ConnectWise::CampaignSubTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_sub_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_sub_types_id_patch**
> CampaignSubType marketing_campaigns_sub_types_id_patch(id, operations)



Update Campaign Sub Type

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

api_instance = ConnectWise::CampaignSubTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_sub_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_sub_types_id_put**
> CampaignSubType marketing_campaigns_sub_types_id_put(id, campaign_sub_type)



Replace Campaign Sub Type

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

api_instance = ConnectWise::CampaignSubTypesApi.new

id = 56 # Integer | 

campaign_sub_type = ConnectWise::CampaignSubType.new # CampaignSubType | 


begin
  result = api_instance.marketing_campaigns_sub_types_id_put(id, campaign_sub_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **campaign_sub_type** | [**CampaignSubType**](CampaignSubType.md)|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_sub_types_post**
> CampaignSubType marketing_campaigns_sub_types_post(campaign_sub_type)



Create Campaign Sub Type

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

api_instance = ConnectWise::CampaignSubTypesApi.new

campaign_sub_type = ConnectWise::CampaignSubType.new # CampaignSubType | 


begin
  result = api_instance.marketing_campaigns_sub_types_post(campaign_sub_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_sub_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_sub_type** | [**CampaignSubType**](CampaignSubType.md)|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




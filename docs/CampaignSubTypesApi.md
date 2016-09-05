# Connectwise::CampaignSubTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_types_id_sub_types_count_get**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_count_get) | **GET** /marketing/campaigns/types/{id}/subTypes/count | 
[**marketing_campaigns_types_id_sub_types_get**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_get) | **GET** /marketing/campaigns/types/{id}/subTypes | 
[**marketing_campaigns_types_id_sub_types_post**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_post) | **POST** /marketing/campaigns/types/{id}/subTypes | 
[**marketing_campaigns_types_id_sub_types_sub_type_id_delete**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_delete) | **DELETE** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
[**marketing_campaigns_types_id_sub_types_sub_type_id_get**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_get) | **GET** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
[**marketing_campaigns_types_id_sub_types_sub_type_id_patch**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_patch) | **PATCH** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 
[**marketing_campaigns_types_id_sub_types_sub_type_id_put**](CampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_put) | **PUT** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 


# **marketing_campaigns_types_id_sub_types_count_get**
> Count marketing_campaigns_types_id_sub_types_count_get(id, opts)



Get Campaign Sub Types Count

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_types_id_sub_types_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_count_get: #{e}"
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



# **marketing_campaigns_types_id_sub_types_get**
> Array&lt;CampaignSubType&gt; marketing_campaigns_types_id_sub_types_get(id, opts)



Get Campaign Sub Types

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_types_id_sub_types_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_get: #{e}"
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

[**Array&lt;CampaignSubType&gt;**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_types_id_sub_types_post**
> CampaignSubType marketing_campaigns_types_id_sub_types_post(id, campaign_sub_type)



Create Campaign Sub Type

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

campaign_sub_type = Connectwise::CampaignSubType.new # CampaignSubType | 


begin
  result = api_instance.marketing_campaigns_types_id_sub_types_post(id, campaign_sub_type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_post: #{e}"
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



# **marketing_campaigns_types_id_sub_types_sub_type_id_delete**
> marketing_campaigns_types_id_sub_types_sub_type_id_delete(id, sub_type_id)



Delete Campaign Sub Type By Id

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

sub_type_id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_types_id_sub_types_sub_type_id_delete(id, sub_type_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_sub_type_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_type_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_campaigns_types_id_sub_types_sub_type_id_get**
> CampaignSubType marketing_campaigns_types_id_sub_types_sub_type_id_get(id, sub_type_id)



Get Campaign Sub Type By Id

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

sub_type_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_types_id_sub_types_sub_type_id_get(id, sub_type_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_sub_type_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_type_id** | **Integer**|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_types_id_sub_types_sub_type_id_patch**
> CampaignSubType marketing_campaigns_types_id_sub_types_sub_type_id_patch(id, sub_type_id, operations)



Update Campaign Sub Type

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

sub_type_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_types_id_sub_types_sub_type_id_patch(id, sub_type_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_sub_type_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_type_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_types_id_sub_types_sub_type_id_put**
> CampaignSubType marketing_campaigns_types_id_sub_types_sub_type_id_put(id, sub_type_id, campaign_sub_type)



Replace Campaign Sub Type

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

api_instance = Connectwise::CampaignSubTypesApi.new

id = 56 # Integer | 

sub_type_id = 56 # Integer | 

campaign_sub_type = Connectwise::CampaignSubType.new # CampaignSubType | 


begin
  result = api_instance.marketing_campaigns_types_id_sub_types_sub_type_id_put(id, sub_type_id, campaign_sub_type)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignSubTypesApi->marketing_campaigns_types_id_sub_types_sub_type_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **sub_type_id** | **Integer**|  | 
 **campaign_sub_type** | [**CampaignSubType**](CampaignSubType.md)|  | 

### Return type

[**CampaignSubType**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




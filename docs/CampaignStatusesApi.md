# Connectwise::CampaignStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_statuses_count_get**](CampaignStatusesApi.md#marketing_campaigns_statuses_count_get) | **GET** /marketing/campaigns/statuses/count | 
[**marketing_campaigns_statuses_get**](CampaignStatusesApi.md#marketing_campaigns_statuses_get) | **GET** /marketing/campaigns/statuses | 
[**marketing_campaigns_statuses_id_delete**](CampaignStatusesApi.md#marketing_campaigns_statuses_id_delete) | **DELETE** /marketing/campaigns/statuses/{id} | 
[**marketing_campaigns_statuses_id_get**](CampaignStatusesApi.md#marketing_campaigns_statuses_id_get) | **GET** /marketing/campaigns/statuses/{id} | 
[**marketing_campaigns_statuses_id_patch**](CampaignStatusesApi.md#marketing_campaigns_statuses_id_patch) | **PATCH** /marketing/campaigns/statuses/{id} | 
[**marketing_campaigns_statuses_id_put**](CampaignStatusesApi.md#marketing_campaigns_statuses_id_put) | **PUT** /marketing/campaigns/statuses/{id} | 
[**marketing_campaigns_statuses_post**](CampaignStatusesApi.md#marketing_campaigns_statuses_post) | **POST** /marketing/campaigns/statuses | 


# **marketing_campaigns_statuses_count_get**
> Count marketing_campaigns_statuses_count_get(opts)



Get Campaign Statuses Count

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

api_instance = Connectwise::CampaignStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_statuses_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_count_get: #{e}"
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



# **marketing_campaigns_statuses_get**
> Array&lt;CampaignStatus&gt; marketing_campaigns_statuses_get(opts)



Get Campaign Statuses

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

api_instance = Connectwise::CampaignStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_statuses_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_get: #{e}"
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

[**Array&lt;CampaignStatus&gt;**](CampaignStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_statuses_id_delete**
> marketing_campaigns_statuses_id_delete(id)



Delete Campaign Status By Id

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

api_instance = Connectwise::CampaignStatusesApi.new

id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_statuses_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_id_delete: #{e}"
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



# **marketing_campaigns_statuses_id_get**
> CampaignStatus marketing_campaigns_statuses_id_get(id)



Get Campaign Status By Id

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

api_instance = Connectwise::CampaignStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_statuses_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CampaignStatus**](CampaignStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_statuses_id_patch**
> CampaignStatus marketing_campaigns_statuses_id_patch(id, operations)



Update Campaign Status

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

api_instance = Connectwise::CampaignStatusesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_statuses_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CampaignStatus**](CampaignStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_statuses_id_put**
> CampaignStatus marketing_campaigns_statuses_id_put(id, campaign_status)



Replace Campaign Status

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

api_instance = Connectwise::CampaignStatusesApi.new

id = 56 # Integer | 

campaign_status = Connectwise::CampaignStatus.new # CampaignStatus | 


begin
  result = api_instance.marketing_campaigns_statuses_id_put(id, campaign_status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **campaign_status** | [**CampaignStatus**](CampaignStatus.md)|  | 

### Return type

[**CampaignStatus**](CampaignStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_statuses_post**
> CampaignStatus marketing_campaigns_statuses_post(campaign_status)



Create Campaign Status

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

api_instance = Connectwise::CampaignStatusesApi.new

campaign_status = Connectwise::CampaignStatus.new # CampaignStatus | 


begin
  result = api_instance.marketing_campaigns_statuses_post(campaign_status)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignStatusesApi->marketing_campaigns_statuses_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_status** | [**CampaignStatus**](CampaignStatus.md)|  | 

### Return type

[**CampaignStatus**](CampaignStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




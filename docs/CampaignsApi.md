# ConnectWise::CampaignsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_count_get**](CampaignsApi.md#marketing_campaigns_count_get) | **GET** /marketing/campaigns/count | 
[**marketing_campaigns_get**](CampaignsApi.md#marketing_campaigns_get) | **GET** /marketing/campaigns | 
[**marketing_campaigns_id_activities_count_get**](CampaignsApi.md#marketing_campaigns_id_activities_count_get) | **GET** /marketing/campaigns/{id}/activities/count | 
[**marketing_campaigns_id_activities_get**](CampaignsApi.md#marketing_campaigns_id_activities_get) | **GET** /marketing/campaigns/{id}/activities | 
[**marketing_campaigns_id_delete**](CampaignsApi.md#marketing_campaigns_id_delete) | **DELETE** /marketing/campaigns/{id} | 
[**marketing_campaigns_id_get**](CampaignsApi.md#marketing_campaigns_id_get) | **GET** /marketing/campaigns/{id} | 
[**marketing_campaigns_id_opportunities_count_get**](CampaignsApi.md#marketing_campaigns_id_opportunities_count_get) | **GET** /marketing/campaigns/{id}/opportunities/count | 
[**marketing_campaigns_id_opportunities_get**](CampaignsApi.md#marketing_campaigns_id_opportunities_get) | **GET** /marketing/campaigns/{id}/opportunities | 
[**marketing_campaigns_id_patch**](CampaignsApi.md#marketing_campaigns_id_patch) | **PATCH** /marketing/campaigns/{id} | 
[**marketing_campaigns_id_put**](CampaignsApi.md#marketing_campaigns_id_put) | **PUT** /marketing/campaigns/{id} | 
[**marketing_campaigns_post**](CampaignsApi.md#marketing_campaigns_post) | **POST** /marketing/campaigns | 


# **marketing_campaigns_count_get**
> Count marketing_campaigns_count_get(opts)



Get Campaigns Count

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

api_instance = ConnectWise::CampaignsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_count_get: #{e}"
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



# **marketing_campaigns_get**
> Array&lt;Campaign&gt; marketing_campaigns_get(opts)



Get Campaigns

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

api_instance = ConnectWise::CampaignsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_get: #{e}"
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

[**Array&lt;Campaign&gt;**](Campaign.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_activities_count_get**
> Count marketing_campaigns_id_activities_count_get(id)



Get Campaign Activities Count

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_activities_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_activities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_activities_get**
> Array&lt;ActivityReference&gt; marketing_campaigns_id_activities_get(id, opts)



Get Campaign Activities

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_activities_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_activities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ActivityReference&gt;**](ActivityReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_delete**
> marketing_campaigns_id_delete(id)



Delete Campaign By Id

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_delete: #{e}"
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



# **marketing_campaigns_id_get**
> Campaign marketing_campaigns_id_get(id)



Get Campaign By Id

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_opportunities_count_get**
> Count marketing_campaigns_id_opportunities_count_get(id)



Get Campaign Opportunities Count

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_opportunities_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_opportunities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_opportunities_get**
> Array&lt;OpportunityReference&gt; marketing_campaigns_id_opportunities_get(id, opts)



Get Campaign Opportunities

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_opportunities_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_opportunities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;OpportunityReference&gt;**](OpportunityReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_patch**
> Campaign marketing_campaigns_id_patch(id, operations)



Update Campaign

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_put**
> Campaign marketing_campaigns_id_put(id, campaign)



Replace Campaign

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

api_instance = ConnectWise::CampaignsApi.new

id = 56 # Integer | 

campaign = ConnectWise::Campaign.new # Campaign | 


begin
  result = api_instance.marketing_campaigns_id_put(id, campaign)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **campaign** | [**Campaign**](Campaign.md)|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_post**
> Campaign marketing_campaigns_post(campaign)



Create Campaign

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

api_instance = ConnectWise::CampaignsApi.new

campaign = ConnectWise::Campaign.new # Campaign | 


begin
  result = api_instance.marketing_campaigns_post(campaign)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignsApi->marketing_campaigns_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign** | [**Campaign**](Campaign.md)|  | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




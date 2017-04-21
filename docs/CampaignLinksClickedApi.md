# ConnectWise::CampaignLinksClickedApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_id_links_clicked_count_get**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_count_get) | **GET** /marketing/campaigns/{id}/linksClicked/count | 
[**marketing_campaigns_id_links_clicked_get**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_get) | **GET** /marketing/campaigns/{id}/linksClicked | 
[**marketing_campaigns_id_links_clicked_link_clicked_id_delete**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_delete) | **DELETE** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
[**marketing_campaigns_id_links_clicked_link_clicked_id_get**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_get) | **GET** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
[**marketing_campaigns_id_links_clicked_link_clicked_id_patch**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_patch) | **PATCH** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
[**marketing_campaigns_id_links_clicked_link_clicked_id_put**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_link_clicked_id_put) | **PUT** /marketing/campaigns/{id}/linksClicked/{linkClickedId} | 
[**marketing_campaigns_id_links_clicked_post**](CampaignLinksClickedApi.md#marketing_campaigns_id_links_clicked_post) | **POST** /marketing/campaigns/{id}/linksClicked | 


# **marketing_campaigns_id_links_clicked_count_get**
> Count marketing_campaigns_id_links_clicked_count_get(id, opts)



Get Links Clicked Count

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.marketing_campaigns_id_links_clicked_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_count_get: #{e}"
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



# **marketing_campaigns_id_links_clicked_get**
> Array&lt;LinkClicked&gt; marketing_campaigns_id_links_clicked_get(id, opts)



Get Links Clicked

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_links_clicked_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;LinkClicked&gt;**](LinkClicked.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_links_clicked_link_clicked_id_delete**
> marketing_campaigns_id_links_clicked_link_clicked_id_delete(id, link_clicked_id)



Delete Link Clicked By Id

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

link_clicked_id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_id_links_clicked_link_clicked_id_delete(id, link_clicked_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_link_clicked_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link_clicked_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_campaigns_id_links_clicked_link_clicked_id_get**
> LinkClicked marketing_campaigns_id_links_clicked_link_clicked_id_get(id, link_clicked_id)



Get Link Clicked By Id

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

link_clicked_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_links_clicked_link_clicked_id_get(id, link_clicked_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_link_clicked_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link_clicked_id** | **Integer**|  | 

### Return type

[**LinkClicked**](LinkClicked.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_links_clicked_link_clicked_id_patch**
> LinkClicked marketing_campaigns_id_links_clicked_link_clicked_id_patch(id, link_clicked_id, operations)



Update Link Clicked

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

link_clicked_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_id_links_clicked_link_clicked_id_patch(id, link_clicked_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_link_clicked_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link_clicked_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**LinkClicked**](LinkClicked.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_links_clicked_link_clicked_id_put**
> LinkClicked marketing_campaigns_id_links_clicked_link_clicked_id_put(id, link_clicked_id, link_clicked)



Replace Link Clicked

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

link_clicked_id = 56 # Integer | 

link_clicked = ConnectWise::LinkClicked.new # LinkClicked | 


begin
  result = api_instance.marketing_campaigns_id_links_clicked_link_clicked_id_put(id, link_clicked_id, link_clicked)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_link_clicked_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link_clicked_id** | **Integer**|  | 
 **link_clicked** | [**LinkClicked**](LinkClicked.md)|  | 

### Return type

[**LinkClicked**](LinkClicked.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_links_clicked_post**
> LinkClicked marketing_campaigns_id_links_clicked_post(id, link_clicked)



Create Link Clicked

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

api_instance = ConnectWise::CampaignLinksClickedApi.new

id = 56 # Integer | 

link_clicked = ConnectWise::LinkClicked.new # LinkClicked | 


begin
  result = api_instance.marketing_campaigns_id_links_clicked_post(id, link_clicked)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignLinksClickedApi->marketing_campaigns_id_links_clicked_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **link_clicked** | [**LinkClicked**](LinkClicked.md)|  | 

### Return type

[**LinkClicked**](LinkClicked.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




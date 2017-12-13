# ConnectWise::LegacyCampaignSubTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_types_id_sub_types_count_get**](LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_count_get) | **GET** /marketing/campaigns/types/{id}/subTypes/count | 
[**marketing_campaigns_types_id_sub_types_get**](LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_get) | **GET** /marketing/campaigns/types/{id}/subTypes | 
[**marketing_campaigns_types_id_sub_types_sub_type_id_get**](LegacyCampaignSubTypesApi.md#marketing_campaigns_types_id_sub_types_sub_type_id_get) | **GET** /marketing/campaigns/types/{id}/subTypes/{subTypeId} | 


# **marketing_campaigns_types_id_sub_types_count_get**
> Count marketing_campaigns_types_id_sub_types_count_get(id, opts)



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

api_instance = ConnectWise::LegacyCampaignSubTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_types_id_sub_types_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacyCampaignSubTypesApi->marketing_campaigns_types_id_sub_types_count_get: #{e}"
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
ConnectWise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ConnectWise::LegacyCampaignSubTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_types_id_sub_types_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacyCampaignSubTypesApi->marketing_campaigns_types_id_sub_types_get: #{e}"
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

[**Array&lt;CampaignSubType&gt;**](CampaignSubType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_types_id_sub_types_sub_type_id_get**
> CampaignSubType marketing_campaigns_types_id_sub_types_sub_type_id_get(id, sub_type_id)



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

api_instance = ConnectWise::LegacyCampaignSubTypesApi.new

id = 56 # Integer | 

sub_type_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_types_id_sub_types_sub_type_id_get(id, sub_type_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling LegacyCampaignSubTypesApi->marketing_campaigns_types_id_sub_types_sub_type_id_get: #{e}"
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




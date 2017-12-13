# ConnectWise::AdjustmentDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_adjustments_id_details_count_get**](AdjustmentDetailsApi.md#procurement_adjustments_id_details_count_get) | **GET** /procurement/adjustments/{id}/details/count | 
[**procurement_adjustments_id_details_detail_id_delete**](AdjustmentDetailsApi.md#procurement_adjustments_id_details_detail_id_delete) | **DELETE** /procurement/adjustments/{id}/details/{detailId} | 
[**procurement_adjustments_id_details_detail_id_get**](AdjustmentDetailsApi.md#procurement_adjustments_id_details_detail_id_get) | **GET** /procurement/adjustments/{id}/details/{detailId} | 
[**procurement_adjustments_id_details_get**](AdjustmentDetailsApi.md#procurement_adjustments_id_details_get) | **GET** /procurement/adjustments/{id}/details | 
[**procurement_adjustments_id_details_post**](AdjustmentDetailsApi.md#procurement_adjustments_id_details_post) | **POST** /procurement/adjustments/{id}/details | 


# **procurement_adjustments_id_details_count_get**
> Count procurement_adjustments_id_details_count_get(id, opts)



Get Adjustment Detail Count

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

api_instance = ConnectWise::AdjustmentDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_adjustments_id_details_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentDetailsApi->procurement_adjustments_id_details_count_get: #{e}"
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



# **procurement_adjustments_id_details_detail_id_delete**
> procurement_adjustments_id_details_detail_id_delete(id, detail_id)



Delete Adjustment Detail By Id

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

api_instance = ConnectWise::AdjustmentDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  api_instance.procurement_adjustments_id_details_detail_id_delete(id, detail_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentDetailsApi->procurement_adjustments_id_details_detail_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **procurement_adjustments_id_details_detail_id_get**
> AdjustmentDetail procurement_adjustments_id_details_detail_id_get(id, detail_id)



Get Adjustment Detail By Id

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

api_instance = ConnectWise::AdjustmentDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  result = api_instance.procurement_adjustments_id_details_detail_id_get(id, detail_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentDetailsApi->procurement_adjustments_id_details_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

[**AdjustmentDetail**](AdjustmentDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_id_details_get**
> Array&lt;AdjustmentDetail&gt; procurement_adjustments_id_details_get(id, opts)



Get Adjustment Detail

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

api_instance = ConnectWise::AdjustmentDetailsApi.new

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
  result = api_instance.procurement_adjustments_id_details_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentDetailsApi->procurement_adjustments_id_details_get: #{e}"
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

[**Array&lt;AdjustmentDetail&gt;**](AdjustmentDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_adjustments_id_details_post**
> AdjustmentDetail procurement_adjustments_id_details_post(id, adjustment_detail)



Create Adjustment Detail

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

api_instance = ConnectWise::AdjustmentDetailsApi.new

id = 56 # Integer | 

adjustment_detail = ConnectWise::AdjustmentDetail.new # AdjustmentDetail | 


begin
  result = api_instance.procurement_adjustments_id_details_post(id, adjustment_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AdjustmentDetailsApi->procurement_adjustments_id_details_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_detail** | [**AdjustmentDetail**](AdjustmentDetail.md)|  | 

### Return type

[**AdjustmentDetail**](AdjustmentDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ReportCardDetailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_report_cards_id_details_count_get**](ReportCardDetailsApi.md#system_report_cards_id_details_count_get) | **GET** /system/reportCards/{id}/details/count | 
[**system_report_cards_id_details_detail_id_delete**](ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_delete) | **DELETE** /system/reportCards/{id}/details/{detailId} | 
[**system_report_cards_id_details_detail_id_get**](ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_get) | **GET** /system/reportCards/{id}/details/{detailId} | 
[**system_report_cards_id_details_detail_id_patch**](ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_patch) | **PATCH** /system/reportCards/{id}/details/{detailId} | 
[**system_report_cards_id_details_detail_id_put**](ReportCardDetailsApi.md#system_report_cards_id_details_detail_id_put) | **PUT** /system/reportCards/{id}/details/{detailId} | 
[**system_report_cards_id_details_get**](ReportCardDetailsApi.md#system_report_cards_id_details_get) | **GET** /system/reportCards/{id}/details | 
[**system_report_cards_id_details_post**](ReportCardDetailsApi.md#system_report_cards_id_details_post) | **POST** /system/reportCards/{id}/details | 


# **system_report_cards_id_details_count_get**
> Count system_report_cards_id_details_count_get(id, opts)



Get Report Card Detail Count

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_report_cards_id_details_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_count_get: #{e}"
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



# **system_report_cards_id_details_detail_id_delete**
> system_report_cards_id_details_detail_id_delete(id, detail_id)



Delete Report Card Detail By Id

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  api_instance.system_report_cards_id_details_detail_id_delete(id, detail_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_detail_id_delete: #{e}"
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



# **system_report_cards_id_details_detail_id_get**
> ReportCardDetail system_report_cards_id_details_detail_id_get(id, detail_id)



Get Report Card Detail By Id

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 


begin
  result = api_instance.system_report_cards_id_details_detail_id_get(id, detail_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_detail_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 

### Return type

[**ReportCardDetail**](ReportCardDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_report_cards_id_details_detail_id_patch**
> ReportCardDetail system_report_cards_id_details_detail_id_patch(id, detail_id, operations)



Update Report Card Detail

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_report_cards_id_details_detail_id_patch(id, detail_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_detail_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ReportCardDetail**](ReportCardDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_report_cards_id_details_detail_id_put**
> ReportCardDetail system_report_cards_id_details_detail_id_put(id, detail_id, report_card_detail)



Replace Report Card Detail

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

detail_id = 56 # Integer | 

report_card_detail = ConnectWise::ReportCardDetail.new # ReportCardDetail | 


begin
  result = api_instance.system_report_cards_id_details_detail_id_put(id, detail_id, report_card_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_detail_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **detail_id** | **Integer**|  | 
 **report_card_detail** | [**ReportCardDetail**](ReportCardDetail.md)|  | 

### Return type

[**ReportCardDetail**](ReportCardDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_report_cards_id_details_get**
> Array&lt;ReportCardDetail&gt; system_report_cards_id_details_get(id, opts)



Get Report Card Detail

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

api_instance = ConnectWise::ReportCardDetailsApi.new

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
  result = api_instance.system_report_cards_id_details_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_get: #{e}"
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

[**Array&lt;ReportCardDetail&gt;**](ReportCardDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_report_cards_id_details_post**
> ReportCardDetail system_report_cards_id_details_post(id, report_card_detail)



Create Report Card Detail

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

api_instance = ConnectWise::ReportCardDetailsApi.new

id = 56 # Integer | 

report_card_detail = ConnectWise::ReportCardDetail.new # ReportCardDetail | 


begin
  result = api_instance.system_report_cards_id_details_post(id, report_card_detail)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardDetailsApi->system_report_cards_id_details_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_card_detail** | [**ReportCardDetail**](ReportCardDetail.md)|  | 

### Return type

[**ReportCardDetail**](ReportCardDetail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




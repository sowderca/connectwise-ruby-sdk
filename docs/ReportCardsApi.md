# ConnectWise::ReportCardsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_report_cards_count_get**](ReportCardsApi.md#system_report_cards_count_get) | **GET** /system/reportCards/count | 
[**system_report_cards_get**](ReportCardsApi.md#system_report_cards_get) | **GET** /system/reportCards | 
[**system_report_cards_id_delete**](ReportCardsApi.md#system_report_cards_id_delete) | **DELETE** /system/reportCards/{id} | 
[**system_report_cards_id_get**](ReportCardsApi.md#system_report_cards_id_get) | **GET** /system/reportCards/{id} | 
[**system_report_cards_id_patch**](ReportCardsApi.md#system_report_cards_id_patch) | **PATCH** /system/reportCards/{id} | 
[**system_report_cards_id_put**](ReportCardsApi.md#system_report_cards_id_put) | **PUT** /system/reportCards/{id} | 
[**system_report_cards_post**](ReportCardsApi.md#system_report_cards_post) | **POST** /system/reportCards | 


# **system_report_cards_count_get**
> Count system_report_cards_count_get(opts)



Get Report Card Count

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

api_instance = ConnectWise::ReportCardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_report_cards_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_count_get: #{e}"
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



# **system_report_cards_get**
> Array&lt;ReportCard&gt; system_report_cards_get(opts)



Get Report Card

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

api_instance = ConnectWise::ReportCardsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_report_cards_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_get: #{e}"
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

[**Array&lt;ReportCard&gt;**](ReportCard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_report_cards_id_delete**
> system_report_cards_id_delete(id)



Delete Report Card By Id

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

api_instance = ConnectWise::ReportCardsApi.new

id = 56 # Integer | 


begin
  api_instance.system_report_cards_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_id_delete: #{e}"
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



# **system_report_cards_id_get**
> ReportCard system_report_cards_id_get(id)



Get Report Card By Id

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

api_instance = ConnectWise::ReportCardsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_report_cards_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ReportCard**](ReportCard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_report_cards_id_patch**
> ReportCard system_report_cards_id_patch(id, operations)



Update Report Card

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

api_instance = ConnectWise::ReportCardsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_report_cards_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ReportCard**](ReportCard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_report_cards_id_put**
> ReportCard system_report_cards_id_put(id, report_card)



Replace Report Card

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

api_instance = ConnectWise::ReportCardsApi.new

id = 56 # Integer | 

report_card = ConnectWise::ReportCard.new # ReportCard | 


begin
  result = api_instance.system_report_cards_id_put(id, report_card)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **report_card** | [**ReportCard**](ReportCard.md)|  | 

### Return type

[**ReportCard**](ReportCard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_report_cards_post**
> ReportCard system_report_cards_post(report_card)



Create Report Card

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

api_instance = ConnectWise::ReportCardsApi.new

report_card = ConnectWise::ReportCard.new # ReportCard | 


begin
  result = api_instance.system_report_cards_post(report_card)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ReportCardsApi->system_report_cards_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **report_card** | [**ReportCard**](ReportCard.md)|  | 

### Return type

[**ReportCard**](ReportCard.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




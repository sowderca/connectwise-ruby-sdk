# ConnectWise::BillingStatusesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_billing_statuses_count_get**](BillingStatusesApi.md#system_billing_statuses_count_get) | **GET** /system/billingStatuses/count | 
[**system_billing_statuses_get**](BillingStatusesApi.md#system_billing_statuses_get) | **GET** /system/billingStatuses | 
[**system_billing_statuses_id_get**](BillingStatusesApi.md#system_billing_statuses_id_get) | **GET** /system/billingStatuses/{id} | 


# **system_billing_statuses_count_get**
> Count system_billing_statuses_count_get(opts)



Get Billing Statuses Count

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

api_instance = ConnectWise::BillingStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_billing_statuses_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingStatusesApi->system_billing_statuses_count_get: #{e}"
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



# **system_billing_statuses_get**
> Array&lt;BillingStatus&gt; system_billing_statuses_get(opts)



Get Billing Statuses

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

api_instance = ConnectWise::BillingStatusesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_billing_statuses_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingStatusesApi->system_billing_statuses_get: #{e}"
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

[**Array&lt;BillingStatus&gt;**](BillingStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_billing_statuses_id_get**
> BillingStatus system_billing_statuses_id_get(id)



Get Billing Status By Id

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

api_instance = ConnectWise::BillingStatusesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_billing_statuses_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingStatusesApi->system_billing_statuses_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**BillingStatus**](BillingStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




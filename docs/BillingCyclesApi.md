# ConnectWise::BillingCyclesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_billing_cycles_count_get**](BillingCyclesApi.md#finance_billing_cycles_count_get) | **GET** /finance/billingCycles/count | 
[**finance_billing_cycles_get**](BillingCyclesApi.md#finance_billing_cycles_get) | **GET** /finance/billingCycles | 
[**finance_billing_cycles_id_get**](BillingCyclesApi.md#finance_billing_cycles_id_get) | **GET** /finance/billingCycles/{id} | 


# **finance_billing_cycles_count_get**
> Count finance_billing_cycles_count_get(opts)



Get Billing Cycles Count

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

api_instance = ConnectWise::BillingCyclesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_billing_cycles_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingCyclesApi->finance_billing_cycles_count_get: #{e}"
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



# **finance_billing_cycles_get**
> Array&lt;BillingCycle&gt; finance_billing_cycles_get(opts)



Get Billing Cycles

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

api_instance = ConnectWise::BillingCyclesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_billing_cycles_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingCyclesApi->finance_billing_cycles_get: #{e}"
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

[**Array&lt;BillingCycle&gt;**](BillingCycle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_cycles_id_get**
> BillingCycle finance_billing_cycles_id_get(id)



Get Billing Cycle By Id

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

api_instance = ConnectWise::BillingCyclesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_billing_cycles_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingCyclesApi->finance_billing_cycles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**BillingCycle**](BillingCycle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




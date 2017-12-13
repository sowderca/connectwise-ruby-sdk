# ConnectWise::BillingTermsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_billing_terms_count_get**](BillingTermsApi.md#finance_billing_terms_count_get) | **GET** /finance/billingTerms/count | 
[**finance_billing_terms_get**](BillingTermsApi.md#finance_billing_terms_get) | **GET** /finance/billingTerms | 
[**finance_billing_terms_id_get**](BillingTermsApi.md#finance_billing_terms_id_get) | **GET** /finance/billingTerms/{id} | 


# **finance_billing_terms_count_get**
> Count finance_billing_terms_count_get(opts)



Get Billing Terms Count

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

api_instance = ConnectWise::BillingTermsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_billing_terms_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingTermsApi->finance_billing_terms_count_get: #{e}"
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



# **finance_billing_terms_get**
> Array&lt;BillingTerm&gt; finance_billing_terms_get(opts)



Get Billing Terms

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

api_instance = ConnectWise::BillingTermsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_billing_terms_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingTermsApi->finance_billing_terms_get: #{e}"
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

[**Array&lt;BillingTerm&gt;**](BillingTerm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_terms_id_get**
> BillingTerm finance_billing_terms_id_get(id)



Get Billing Term By Id

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

api_instance = ConnectWise::BillingTermsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_billing_terms_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingTermsApi->finance_billing_terms_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**BillingTerm**](BillingTerm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




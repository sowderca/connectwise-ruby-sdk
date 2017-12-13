# ConnectWise::BillingSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_billing_setups_count_get**](BillingSetupsApi.md#finance_billing_setups_count_get) | **GET** /finance/billingSetups/count | 
[**finance_billing_setups_get**](BillingSetupsApi.md#finance_billing_setups_get) | **GET** /finance/billingSetups | 
[**finance_billing_setups_id_delete**](BillingSetupsApi.md#finance_billing_setups_id_delete) | **DELETE** /finance/billingSetups/{id} | 
[**finance_billing_setups_id_get**](BillingSetupsApi.md#finance_billing_setups_id_get) | **GET** /finance/billingSetups/{id} | 
[**finance_billing_setups_id_patch**](BillingSetupsApi.md#finance_billing_setups_id_patch) | **PATCH** /finance/billingSetups/{id} | 
[**finance_billing_setups_id_put**](BillingSetupsApi.md#finance_billing_setups_id_put) | **PUT** /finance/billingSetups/{id} | 
[**finance_billing_setups_post**](BillingSetupsApi.md#finance_billing_setups_post) | **POST** /finance/billingSetups | 


# **finance_billing_setups_count_get**
> Count finance_billing_setups_count_get(opts)



Get Billing Setups Count

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

api_instance = ConnectWise::BillingSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_billing_setups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_count_get: #{e}"
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



# **finance_billing_setups_get**
> Array&lt;BillingSetup&gt; finance_billing_setups_get(opts)



Get Billing Setups

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

api_instance = ConnectWise::BillingSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_billing_setups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_get: #{e}"
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

[**Array&lt;BillingSetup&gt;**](BillingSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_setups_id_delete**
> finance_billing_setups_id_delete(id)



Delete Billing Setup By Id

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

api_instance = ConnectWise::BillingSetupsApi.new

id = 56 # Integer | 


begin
  api_instance.finance_billing_setups_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_id_delete: #{e}"
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



# **finance_billing_setups_id_get**
> BillingSetup finance_billing_setups_id_get(id)



Get Billing Setup By Id

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

api_instance = ConnectWise::BillingSetupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_billing_setups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**BillingSetup**](BillingSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_setups_id_patch**
> BillingSetup finance_billing_setups_id_patch(id, operations)



Update Billing Setup

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

api_instance = ConnectWise::BillingSetupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_billing_setups_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BillingSetup**](BillingSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_billing_setups_id_put**
> BillingSetup finance_billing_setups_id_put(id, billing_setup)



Replace Billing Setup

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

api_instance = ConnectWise::BillingSetupsApi.new

id = 56 # Integer | 

billing_setup = ConnectWise::BillingSetup.new # BillingSetup | 


begin
  result = api_instance.finance_billing_setups_id_put(id, billing_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **billing_setup** | [**BillingSetup**](BillingSetup.md)|  | 

### Return type

[**BillingSetup**](BillingSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_billing_setups_post**
> BillingSetup finance_billing_setups_post(billing_setup)



Create Billing Setup

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

api_instance = ConnectWise::BillingSetupsApi.new

billing_setup = ConnectWise::BillingSetup.new # BillingSetup | 


begin
  result = api_instance.finance_billing_setups_post(billing_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupsApi->finance_billing_setups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_setup** | [**BillingSetup**](BillingSetup.md)|  | 

### Return type

[**BillingSetup**](BillingSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




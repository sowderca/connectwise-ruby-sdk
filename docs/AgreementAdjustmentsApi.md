# ConnectWise::AgreementAdjustmentsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_adjustments_adjustment_id_delete**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_delete) | **DELETE** /finance/agreements/{id}/adjustments/{adjustmentId} | 
[**finance_agreements_id_adjustments_adjustment_id_get**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_get) | **GET** /finance/agreements/{id}/adjustments/{adjustmentId} | 
[**finance_agreements_id_adjustments_adjustment_id_patch**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_patch) | **PATCH** /finance/agreements/{id}/adjustments/{adjustmentId} | 
[**finance_agreements_id_adjustments_adjustment_id_put**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_adjustment_id_put) | **PUT** /finance/agreements/{id}/adjustments/{adjustmentId} | 
[**finance_agreements_id_adjustments_count_get**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_count_get) | **GET** /finance/agreements/{id}/adjustments/count | 
[**finance_agreements_id_adjustments_get**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_get) | **GET** /finance/agreements/{id}/adjustments | 
[**finance_agreements_id_adjustments_post**](AgreementAdjustmentsApi.md#finance_agreements_id_adjustments_post) | **POST** /finance/agreements/{id}/adjustments | 


# **finance_agreements_id_adjustments_adjustment_id_delete**
> finance_agreements_id_adjustments_adjustment_id_delete(id, adjustment_id)



Delete Adjustment By Id

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

adjustment_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_adjustments_adjustment_id_delete(id, adjustment_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_adjustment_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_adjustments_adjustment_id_get**
> Adjustment finance_agreements_id_adjustments_adjustment_id_get(id, adjustment_id)



Get Adjustment By Id

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

adjustment_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_adjustments_adjustment_id_get(id, adjustment_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_adjustment_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_id** | **Integer**|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_adjustments_adjustment_id_patch**
> Adjustment finance_agreements_id_adjustments_adjustment_id_patch(id, adjustment_id, operations)



Update Adjustment

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

adjustment_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_adjustments_adjustment_id_patch(id, adjustment_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_adjustment_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_adjustments_adjustment_id_put**
> Adjustment finance_agreements_id_adjustments_adjustment_id_put(id, adjustment_id, adjustment)



Replace Adjustment

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

adjustment_id = 56 # Integer | 

adjustment = ConnectWise::Adjustment.new # Adjustment | 


begin
  result = api_instance.finance_agreements_id_adjustments_adjustment_id_put(id, adjustment_id, adjustment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_adjustment_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment_id** | **Integer**|  | 
 **adjustment** | [**Adjustment**](Adjustment.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_adjustments_count_get**
> Count finance_agreements_id_adjustments_count_get(id, opts)



Get Adjustments Count

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_adjustments_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_adjustments_get**
> Array&lt;Adjustment&gt; finance_agreements_id_adjustments_get(id, opts)



Get Adjustments

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

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
  result = api_instance.finance_agreements_id_adjustments_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_get: #{e}"
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

[**Array&lt;Adjustment&gt;**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_adjustments_post**
> Adjustment finance_agreements_id_adjustments_post(id, adjustment)



Create Adjustment

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

api_instance = ConnectWise::AgreementAdjustmentsApi.new

id = 56 # Integer | 

adjustment = ConnectWise::Adjustment.new # Adjustment | 


begin
  result = api_instance.finance_agreements_id_adjustments_post(id, adjustment)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdjustmentsApi->finance_agreements_id_adjustments_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **adjustment** | [**Adjustment**](Adjustment.md)|  | 

### Return type

[**Adjustment**](Adjustment.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




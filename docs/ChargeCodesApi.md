# ConnectWise::ChargeCodesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**time_charge_codes_count_get**](ChargeCodesApi.md#time_charge_codes_count_get) | **GET** /time/chargeCodes/count | 
[**time_charge_codes_get**](ChargeCodesApi.md#time_charge_codes_get) | **GET** /time/chargeCodes | 
[**time_charge_codes_id_delete**](ChargeCodesApi.md#time_charge_codes_id_delete) | **DELETE** /time/chargeCodes/{id} | 
[**time_charge_codes_id_get**](ChargeCodesApi.md#time_charge_codes_id_get) | **GET** /time/chargeCodes/{id} | 
[**time_charge_codes_id_patch**](ChargeCodesApi.md#time_charge_codes_id_patch) | **PATCH** /time/chargeCodes/{id} | 
[**time_charge_codes_id_put**](ChargeCodesApi.md#time_charge_codes_id_put) | **PUT** /time/chargeCodes/{id} | 
[**time_charge_codes_post**](ChargeCodesApi.md#time_charge_codes_post) | **POST** /time/chargeCodes | 


# **time_charge_codes_count_get**
> Count time_charge_codes_count_get(opts)



Get Charge Code Count

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

api_instance = ConnectWise::ChargeCodesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.time_charge_codes_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_count_get: #{e}"
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



# **time_charge_codes_get**
> Array&lt;ChargeCode&gt; time_charge_codes_get(opts)



Get Charge Code

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

api_instance = ConnectWise::ChargeCodesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.time_charge_codes_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_get: #{e}"
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

[**Array&lt;ChargeCode&gt;**](ChargeCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_charge_codes_id_delete**
> time_charge_codes_id_delete(id)



Delete Charge Code By Id

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

api_instance = ConnectWise::ChargeCodesApi.new

id = 56 # Integer | 


begin
  api_instance.time_charge_codes_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_id_delete: #{e}"
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



# **time_charge_codes_id_get**
> ChargeCode time_charge_codes_id_get(id)



Get Charge Code By Id

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

api_instance = ConnectWise::ChargeCodesApi.new

id = 56 # Integer | 


begin
  result = api_instance.time_charge_codes_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ChargeCode**](ChargeCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **time_charge_codes_id_patch**
> ChargeCode time_charge_codes_id_patch(id, operations)



Update Charge Code

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

api_instance = ConnectWise::ChargeCodesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.time_charge_codes_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ChargeCode**](ChargeCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_charge_codes_id_put**
> ChargeCode time_charge_codes_id_put(id, charge_code)



Replace Charge Code

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

api_instance = ConnectWise::ChargeCodesApi.new

id = 56 # Integer | 

charge_code = ConnectWise::ChargeCode.new # ChargeCode | 


begin
  result = api_instance.time_charge_codes_id_put(id, charge_code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **charge_code** | [**ChargeCode**](ChargeCode.md)|  | 

### Return type

[**ChargeCode**](ChargeCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **time_charge_codes_post**
> ChargeCode time_charge_codes_post(charge_code)



Create Charge Code

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

api_instance = ConnectWise::ChargeCodesApi.new

charge_code = ConnectWise::ChargeCode.new # ChargeCode | 


begin
  result = api_instance.time_charge_codes_post(charge_code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ChargeCodesApi->time_charge_codes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **charge_code** | [**ChargeCode**](ChargeCode.md)|  | 

### Return type

[**ChargeCode**](ChargeCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




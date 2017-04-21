# ConnectWise::TaxCodesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_tax_codes_count_get**](TaxCodesApi.md#finance_tax_codes_count_get) | **GET** /finance/taxCodes/count | 
[**finance_tax_codes_get**](TaxCodesApi.md#finance_tax_codes_get) | **GET** /finance/taxCodes | 
[**finance_tax_codes_id_delete**](TaxCodesApi.md#finance_tax_codes_id_delete) | **DELETE** /finance/taxCodes/{id} | 
[**finance_tax_codes_id_get**](TaxCodesApi.md#finance_tax_codes_id_get) | **GET** /finance/taxCodes/{id} | 
[**finance_tax_codes_id_patch**](TaxCodesApi.md#finance_tax_codes_id_patch) | **PATCH** /finance/taxCodes/{id} | 
[**finance_tax_codes_id_put**](TaxCodesApi.md#finance_tax_codes_id_put) | **PUT** /finance/taxCodes/{id} | 
[**finance_tax_codes_post**](TaxCodesApi.md#finance_tax_codes_post) | **POST** /finance/taxCodes | 


# **finance_tax_codes_count_get**
> Count finance_tax_codes_count_get(opts)



Get Tax Code Count

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

api_instance = ConnectWise::TaxCodesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_tax_codes_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_count_get: #{e}"
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



# **finance_tax_codes_get**
> Array&lt;TaxCode&gt; finance_tax_codes_get(opts)



Get Tax Code

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

api_instance = ConnectWise::TaxCodesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_tax_codes_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_get: #{e}"
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

[**Array&lt;TaxCode&gt;**](TaxCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_delete**
> finance_tax_codes_id_delete(id)



Delete Tax Code By Id

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

api_instance = ConnectWise::TaxCodesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_tax_codes_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_id_delete: #{e}"
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



# **finance_tax_codes_id_get**
> TaxCode finance_tax_codes_id_get(id)



Get Tax Code By Id

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

api_instance = ConnectWise::TaxCodesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_tax_codes_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TaxCode**](TaxCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_patch**
> TaxCode finance_tax_codes_id_patch(id, operations)



Update Tax Code

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

api_instance = ConnectWise::TaxCodesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_tax_codes_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TaxCode**](TaxCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_put**
> TaxCode finance_tax_codes_id_put(id, tax_code)



Replace Tax Code

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

api_instance = ConnectWise::TaxCodesApi.new

id = 56 # Integer | 

tax_code = ConnectWise::TaxCode.new # TaxCode | 


begin
  result = api_instance.finance_tax_codes_id_put(id, tax_code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code** | [**TaxCode**](TaxCode.md)|  | 

### Return type

[**TaxCode**](TaxCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_post**
> TaxCode finance_tax_codes_post(tax_code)



Create Tax Code

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

api_instance = ConnectWise::TaxCodesApi.new

tax_code = ConnectWise::TaxCode.new # TaxCode | 


begin
  result = api_instance.finance_tax_codes_post(tax_code)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodesApi->finance_tax_codes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_code** | [**TaxCode**](TaxCode.md)|  | 

### Return type

[**TaxCode**](TaxCode.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




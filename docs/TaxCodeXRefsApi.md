# ConnectWise::TaxCodeXRefsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_tax_codes_id_tax_code_x_refs_count_get**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_count_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs/count | 
[**finance_tax_codes_id_tax_code_x_refs_get**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs | 
[**finance_tax_codes_id_tax_code_x_refs_post**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_post) | **POST** /finance/taxCodes/{id}/taxCodeXRefs | 
[**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete) | **DELETE** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} | 
[**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get) | **GET** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} | 
[**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch) | **PATCH** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} | 
[**finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put**](TaxCodeXRefsApi.md#finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put) | **PUT** /finance/taxCodes/{id}/taxCodeXRefs/{taxCodeXRefId} | 


# **finance_tax_codes_id_tax_code_x_refs_count_get**
> Count finance_tax_codes_id_tax_code_x_refs_count_get(id, opts)



Get Tax Code X Ref Count

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_count_get: #{e}"
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



# **finance_tax_codes_id_tax_code_x_refs_get**
> Array&lt;TaxCodeXRef&gt; finance_tax_codes_id_tax_code_x_refs_get(id, opts)



Get Tax Code X Ref

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

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
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_get: #{e}"
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

[**Array&lt;TaxCodeXRef&gt;**](TaxCodeXRef.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_tax_code_x_refs_post**
> TaxCodeXRef finance_tax_codes_id_tax_code_x_refs_post(id, tax_code_x_ref)



Create Tax Code X Ref

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

tax_code_x_ref = ConnectWise::TaxCodeXRef.new # TaxCodeXRef | 


begin
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_post(id, tax_code_x_ref)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code_x_ref** | [**TaxCodeXRef**](TaxCodeXRef.md)|  | 

### Return type

[**TaxCodeXRef**](TaxCodeXRef.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete**
> finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete(id, tax_code_x_ref_id)



Delete Tax Code X Ref By Id

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

tax_code_x_ref_id = 56 # Integer | 


begin
  api_instance.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete(id, tax_code_x_ref_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code_x_ref_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get**
> TaxCodeXRef finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get(id, tax_code_x_ref_id)



Get Tax Code X Ref By Id

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

tax_code_x_ref_id = 56 # Integer | 


begin
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get(id, tax_code_x_ref_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code_x_ref_id** | **Integer**|  | 

### Return type

[**TaxCodeXRef**](TaxCodeXRef.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch**
> TaxCodeXRef finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch(id, tax_code_x_ref_id, operations)



Update Tax Code X Ref

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

tax_code_x_ref_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch(id, tax_code_x_ref_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code_x_ref_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TaxCodeXRef**](TaxCodeXRef.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put**
> TaxCodeXRef finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put(id, tax_code_x_ref_id, tax_code_x_ref)



Replace Tax Code X Ref

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

api_instance = ConnectWise::TaxCodeXRefsApi.new

id = 56 # Integer | 

tax_code_x_ref_id = 56 # Integer | 

tax_code_x_ref = ConnectWise::TaxCodeXRef.new # TaxCodeXRef | 


begin
  result = api_instance.finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put(id, tax_code_x_ref_id, tax_code_x_ref)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeXRefsApi->finance_tax_codes_id_tax_code_x_refs_tax_code_x_ref_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **tax_code_x_ref_id** | **Integer**|  | 
 **tax_code_x_ref** | [**TaxCodeXRef**](TaxCodeXRef.md)|  | 

### Return type

[**TaxCodeXRef**](TaxCodeXRef.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




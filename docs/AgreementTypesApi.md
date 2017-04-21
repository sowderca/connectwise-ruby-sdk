# ConnectWise::AgreementTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_types_count_get**](AgreementTypesApi.md#finance_agreements_types_count_get) | **GET** /finance/agreements/types/count | 
[**finance_agreements_types_get**](AgreementTypesApi.md#finance_agreements_types_get) | **GET** /finance/agreements/types | 
[**finance_agreements_types_id_delete**](AgreementTypesApi.md#finance_agreements_types_id_delete) | **DELETE** /finance/agreements/types/{id} | 
[**finance_agreements_types_id_get**](AgreementTypesApi.md#finance_agreements_types_id_get) | **GET** /finance/agreements/types/{id} | 
[**finance_agreements_types_id_patch**](AgreementTypesApi.md#finance_agreements_types_id_patch) | **PATCH** /finance/agreements/types/{id} | 
[**finance_agreements_types_id_put**](AgreementTypesApi.md#finance_agreements_types_id_put) | **PUT** /finance/agreements/types/{id} | 
[**finance_agreements_types_post**](AgreementTypesApi.md#finance_agreements_types_post) | **POST** /finance/agreements/types | 


# **finance_agreements_types_count_get**
> Count finance_agreements_types_count_get(opts)



Get Agreement Types Count

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

api_instance = ConnectWise::AgreementTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_agreements_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_count_get: #{e}"
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



# **finance_agreements_types_get**
> Array&lt;AgreementType&gt; finance_agreements_types_get(opts)



Get Agreement Types

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

api_instance = ConnectWise::AgreementTypesApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_get: #{e}"
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

[**Array&lt;AgreementType&gt;**](AgreementType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_types_id_delete**
> finance_agreements_types_id_delete(id)



Delete Agreement Type By Id

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

api_instance = ConnectWise::AgreementTypesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_agreements_types_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_id_delete: #{e}"
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



# **finance_agreements_types_id_get**
> AgreementType finance_agreements_types_id_get(id)



Get Agreement Type By Id

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

api_instance = ConnectWise::AgreementTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AgreementType**](AgreementType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_types_id_patch**
> AgreementType finance_agreements_types_id_patch(id, operations)



Update Agreement Type

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

api_instance = ConnectWise::AgreementTypesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_types_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AgreementType**](AgreementType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_types_id_put**
> AgreementType finance_agreements_types_id_put(id, agreement_type)



Replace Agreement Type

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

api_instance = ConnectWise::AgreementTypesApi.new

id = 56 # Integer | 

agreement_type = ConnectWise::AgreementType.new # AgreementType | 


begin
  result = api_instance.finance_agreements_types_id_put(id, agreement_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **agreement_type** | [**AgreementType**](AgreementType.md)|  | 

### Return type

[**AgreementType**](AgreementType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_types_post**
> AgreementType finance_agreements_types_post(agreement_type)



Create Agreement Type

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

api_instance = ConnectWise::AgreementTypesApi.new

agreement_type = ConnectWise::AgreementType.new # AgreementType | 


begin
  result = api_instance.finance_agreements_types_post(agreement_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypesApi->finance_agreements_types_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agreement_type** | [**AgreementType**](AgreementType.md)|  | 

### Return type

[**AgreementType**](AgreementType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




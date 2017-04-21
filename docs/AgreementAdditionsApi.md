# ConnectWise::AgreementAdditionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_additions_addition_id_delete**](AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_delete) | **DELETE** /finance/agreements/{id}/additions/{additionId} | 
[**finance_agreements_id_additions_addition_id_get**](AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_get) | **GET** /finance/agreements/{id}/additions/{additionId} | 
[**finance_agreements_id_additions_addition_id_patch**](AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_patch) | **PATCH** /finance/agreements/{id}/additions/{additionId} | 
[**finance_agreements_id_additions_addition_id_put**](AgreementAdditionsApi.md#finance_agreements_id_additions_addition_id_put) | **PUT** /finance/agreements/{id}/additions/{additionId} | 
[**finance_agreements_id_additions_count_get**](AgreementAdditionsApi.md#finance_agreements_id_additions_count_get) | **GET** /finance/agreements/{id}/additions/count | 
[**finance_agreements_id_additions_get**](AgreementAdditionsApi.md#finance_agreements_id_additions_get) | **GET** /finance/agreements/{id}/additions | 
[**finance_agreements_id_additions_post**](AgreementAdditionsApi.md#finance_agreements_id_additions_post) | **POST** /finance/agreements/{id}/additions | 


# **finance_agreements_id_additions_addition_id_delete**
> finance_agreements_id_additions_addition_id_delete(id, addition_id)



Delete Addition By Id

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

addition_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_additions_addition_id_delete(id, addition_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_addition_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **addition_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_additions_addition_id_get**
> Addition finance_agreements_id_additions_addition_id_get(id, addition_id)



Get Addition By Id

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

addition_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_additions_addition_id_get(id, addition_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_addition_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **addition_id** | **Integer**|  | 

### Return type

[**Addition**](Addition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_additions_addition_id_patch**
> Addition finance_agreements_id_additions_addition_id_patch(id, addition_id, operations)



Update Addition

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

addition_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_additions_addition_id_patch(id, addition_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_addition_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **addition_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Addition**](Addition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_additions_addition_id_put**
> Addition finance_agreements_id_additions_addition_id_put(id, addition_id, addition)



Replace Addition

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

addition_id = 56 # Integer | 

addition = ConnectWise::Addition.new # Addition | 


begin
  result = api_instance.finance_agreements_id_additions_addition_id_put(id, addition_id, addition)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_addition_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **addition_id** | **Integer**|  | 
 **addition** | [**Addition**](Addition.md)|  | 

### Return type

[**Addition**](Addition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_additions_count_get**
> Count finance_agreements_id_additions_count_get(id, opts)



Get Additions Count

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_additions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_count_get: #{e}"
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



# **finance_agreements_id_additions_get**
> Array&lt;Addition&gt; finance_agreements_id_additions_get(id, opts)



Get Additions

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

api_instance = ConnectWise::AgreementAdditionsApi.new

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
  result = api_instance.finance_agreements_id_additions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_get: #{e}"
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

[**Array&lt;Addition&gt;**](Addition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_additions_post**
> Addition finance_agreements_id_additions_post(id, addition)



Create Addition

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

api_instance = ConnectWise::AgreementAdditionsApi.new

id = 56 # Integer | 

addition = ConnectWise::Addition.new # Addition | 


begin
  result = api_instance.finance_agreements_id_additions_post(id, addition)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementAdditionsApi->finance_agreements_id_additions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **addition** | [**Addition**](Addition.md)|  | 

### Return type

[**Addition**](Addition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




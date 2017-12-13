# ConnectWise::AgreementWorkTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_worktypes_count_get**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_count_get) | **GET** /finance/agreements/{id}/worktypes/count | 
[**finance_agreements_id_worktypes_get**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_get) | **GET** /finance/agreements/{id}/worktypes | 
[**finance_agreements_id_worktypes_post**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_post) | **POST** /finance/agreements/{id}/worktypes | 
[**finance_agreements_id_worktypes_worktype_id_delete**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_delete) | **DELETE** /finance/agreements/{id}/worktypes/{worktypeId} | 
[**finance_agreements_id_worktypes_worktype_id_get**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_get) | **GET** /finance/agreements/{id}/worktypes/{worktypeId} | 
[**finance_agreements_id_worktypes_worktype_id_patch**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_patch) | **PATCH** /finance/agreements/{id}/worktypes/{worktypeId} | 
[**finance_agreements_id_worktypes_worktype_id_put**](AgreementWorkTypesApi.md#finance_agreements_id_worktypes_worktype_id_put) | **PUT** /finance/agreements/{id}/worktypes/{worktypeId} | 


# **finance_agreements_id_worktypes_count_get**
> Count finance_agreements_id_worktypes_count_get(id, opts)



Get Work Types Count

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_worktypes_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_count_get: #{e}"
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



# **finance_agreements_id_worktypes_get**
> Array&lt;AgreementWorkType&gt; finance_agreements_id_worktypes_get(id, opts)



Get Work Types

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_id_worktypes_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_get: #{e}"
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

[**Array&lt;AgreementWorkType&gt;**](AgreementWorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_worktypes_post**
> AgreementWorkType finance_agreements_id_worktypes_post(id, work_type)



Create Work Type

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

work_type = ConnectWise::AgreementWorkType.new # AgreementWorkType | 


begin
  result = api_instance.finance_agreements_id_worktypes_post(id, work_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type** | [**AgreementWorkType**](AgreementWorkType.md)|  | 

### Return type

[**AgreementWorkType**](AgreementWorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_worktypes_worktype_id_delete**
> finance_agreements_id_worktypes_worktype_id_delete(id, worktype_id)



Delete Work Type By Id

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

worktype_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_worktypes_worktype_id_delete(id, worktype_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_worktype_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **worktype_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_worktypes_worktype_id_get**
> AgreementWorkType finance_agreements_id_worktypes_worktype_id_get(id, worktype_id)



Get Work Type By Id

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

worktype_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_worktypes_worktype_id_get(id, worktype_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_worktype_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **worktype_id** | **Integer**|  | 

### Return type

[**AgreementWorkType**](AgreementWorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_worktypes_worktype_id_patch**
> AgreementWorkType finance_agreements_id_worktypes_worktype_id_patch(id, worktype_id, operations)



Update Work Type

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

worktype_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_worktypes_worktype_id_patch(id, worktype_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_worktype_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **worktype_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AgreementWorkType**](AgreementWorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_worktypes_worktype_id_put**
> AgreementWorkType finance_agreements_id_worktypes_worktype_id_put(id, worktype_id, work_type)



Replace Work Type

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

api_instance = ConnectWise::AgreementWorkTypesApi.new

id = 56 # Integer | 

worktype_id = 56 # Integer | 

work_type = ConnectWise::AgreementWorkType.new # AgreementWorkType | 


begin
  result = api_instance.finance_agreements_id_worktypes_worktype_id_put(id, worktype_id, work_type)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkTypesApi->finance_agreements_id_worktypes_worktype_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **worktype_id** | **Integer**|  | 
 **work_type** | [**AgreementWorkType**](AgreementWorkType.md)|  | 

### Return type

[**AgreementWorkType**](AgreementWorkType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




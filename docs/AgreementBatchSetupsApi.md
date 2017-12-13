# ConnectWise::AgreementBatchSetupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_batch_setups_count_get**](AgreementBatchSetupsApi.md#finance_batch_setups_count_get) | **GET** /finance/batchSetups/count | 
[**finance_batch_setups_get**](AgreementBatchSetupsApi.md#finance_batch_setups_get) | **GET** /finance/batchSetups | 
[**finance_batch_setups_id_get**](AgreementBatchSetupsApi.md#finance_batch_setups_id_get) | **GET** /finance/batchSetups/{id} | 
[**finance_batch_setups_id_patch**](AgreementBatchSetupsApi.md#finance_batch_setups_id_patch) | **PATCH** /finance/batchSetups/{id} | 
[**finance_batch_setups_id_put**](AgreementBatchSetupsApi.md#finance_batch_setups_id_put) | **PUT** /finance/batchSetups/{id} | 


# **finance_batch_setups_count_get**
> Count finance_batch_setups_count_get(opts)



Get Batch Setup Count

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

api_instance = ConnectWise::AgreementBatchSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_batch_setups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBatchSetupsApi->finance_batch_setups_count_get: #{e}"
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



# **finance_batch_setups_get**
> Array&lt;AgreementBatchSetup&gt; finance_batch_setups_get(opts)



Get Batch Setup

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

api_instance = ConnectWise::AgreementBatchSetupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_batch_setups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBatchSetupsApi->finance_batch_setups_get: #{e}"
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

[**Array&lt;AgreementBatchSetup&gt;**](AgreementBatchSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_batch_setups_id_get**
> AgreementBatchSetup finance_batch_setups_id_get(id)



Get Batch Setup By Id

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

api_instance = ConnectWise::AgreementBatchSetupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_batch_setups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBatchSetupsApi->finance_batch_setups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AgreementBatchSetup**](AgreementBatchSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_batch_setups_id_patch**
> AgreementBatchSetup finance_batch_setups_id_patch(id, operations)



Update Batch Setup

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

api_instance = ConnectWise::AgreementBatchSetupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_batch_setups_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBatchSetupsApi->finance_batch_setups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AgreementBatchSetup**](AgreementBatchSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_batch_setups_id_put**
> AgreementBatchSetup finance_batch_setups_id_put(id, batch_setup)



Replace Batch Setup

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

api_instance = ConnectWise::AgreementBatchSetupsApi.new

id = 56 # Integer | 

batch_setup = ConnectWise::AgreementBatchSetup.new # AgreementBatchSetup | 


begin
  result = api_instance.finance_batch_setups_id_put(id, batch_setup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBatchSetupsApi->finance_batch_setups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **batch_setup** | [**AgreementBatchSetup**](AgreementBatchSetup.md)|  | 

### Return type

[**AgreementBatchSetup**](AgreementBatchSetup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::AgreementTypeWorkTypeExclusionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreement_types_id_work_type_exclusions_count_get**](AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_count_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions/count | 
[**finance_agreement_types_id_work_type_exclusions_get**](AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions | 
[**finance_agreement_types_id_work_type_exclusions_post**](AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_post) | **POST** /finance/agreementTypes/{id}/workTypeExclusions | 
[**finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete**](AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete) | **DELETE** /finance/agreementTypes/{id}/workTypeExclusions/{workTypeExclusionId} | 
[**finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get**](AgreementTypeWorkTypeExclusionsApi.md#finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get) | **GET** /finance/agreementTypes/{id}/workTypeExclusions/{workTypeExclusionId} | 


# **finance_agreement_types_id_work_type_exclusions_count_get**
> Count finance_agreement_types_id_work_type_exclusions_count_get(id, opts)



Get Work Type Exclusions Count

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

api_instance = ConnectWise::AgreementTypeWorkTypeExclusionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreement_types_id_work_type_exclusions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkTypeExclusionsApi->finance_agreement_types_id_work_type_exclusions_count_get: #{e}"
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



# **finance_agreement_types_id_work_type_exclusions_get**
> Array&lt;AgreementTypeWorkTypeExclusion&gt; finance_agreement_types_id_work_type_exclusions_get(id, opts)



Get Work Type Exclusions

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

api_instance = ConnectWise::AgreementTypeWorkTypeExclusionsApi.new

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
  result = api_instance.finance_agreement_types_id_work_type_exclusions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkTypeExclusionsApi->finance_agreement_types_id_work_type_exclusions_get: #{e}"
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

[**Array&lt;AgreementTypeWorkTypeExclusion&gt;**](AgreementTypeWorkTypeExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreement_types_id_work_type_exclusions_post**
> AgreementTypeWorkTypeExclusion finance_agreement_types_id_work_type_exclusions_post(id, work_type_exclusion)



Create Work Type Exclusion

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

api_instance = ConnectWise::AgreementTypeWorkTypeExclusionsApi.new

id = 56 # Integer | 

work_type_exclusion = ConnectWise::AgreementTypeWorkTypeExclusion.new # AgreementTypeWorkTypeExclusion | 


begin
  result = api_instance.finance_agreement_types_id_work_type_exclusions_post(id, work_type_exclusion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkTypeExclusionsApi->finance_agreement_types_id_work_type_exclusions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type_exclusion** | [**AgreementTypeWorkTypeExclusion**](AgreementTypeWorkTypeExclusion.md)|  | 

### Return type

[**AgreementTypeWorkTypeExclusion**](AgreementTypeWorkTypeExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete**
> finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete(id, work_type_exclusion_id)



Delete Work Type Exclusion By Id

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

api_instance = ConnectWise::AgreementTypeWorkTypeExclusionsApi.new

id = 56 # Integer | 

work_type_exclusion_id = 56 # Integer | 


begin
  api_instance.finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete(id, work_type_exclusion_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkTypeExclusionsApi->finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type_exclusion_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get**
> AgreementTypeWorkTypeExclusion finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get(id, work_type_exclusion_id)



Get Work Type Exclusion By Id

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

api_instance = ConnectWise::AgreementTypeWorkTypeExclusionsApi.new

id = 56 # Integer | 

work_type_exclusion_id = 56 # Integer | 


begin
  result = api_instance.finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get(id, work_type_exclusion_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkTypeExclusionsApi->finance_agreement_types_id_work_type_exclusions_work_type_exclusion_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type_exclusion_id** | **Integer**|  | 

### Return type

[**AgreementTypeWorkTypeExclusion**](AgreementTypeWorkTypeExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# ConnectWise::AgreementTypeWorkRoleExclusionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreement_types_id_work_role_exclusions_count_get**](AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_count_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions/count | 
[**finance_agreement_types_id_work_role_exclusions_get**](AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions | 
[**finance_agreement_types_id_work_role_exclusions_post**](AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_post) | **POST** /finance/agreementTypes/{id}/workRoleExclusions | 
[**finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete**](AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete) | **DELETE** /finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId} | 
[**finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get**](AgreementTypeWorkRoleExclusionsApi.md#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get) | **GET** /finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId} | 


# **finance_agreement_types_id_work_role_exclusions_count_get**
> Count finance_agreement_types_id_work_role_exclusions_count_get(id, opts)



Get Work Role Exclusions Count

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

api_instance = ConnectWise::AgreementTypeWorkRoleExclusionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreement_types_id_work_role_exclusions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkRoleExclusionsApi->finance_agreement_types_id_work_role_exclusions_count_get: #{e}"
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



# **finance_agreement_types_id_work_role_exclusions_get**
> Array&lt;AgreementTypeWorkRoleExclusion&gt; finance_agreement_types_id_work_role_exclusions_get(id, opts)



Get Work Role Exclusions

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

api_instance = ConnectWise::AgreementTypeWorkRoleExclusionsApi.new

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
  result = api_instance.finance_agreement_types_id_work_role_exclusions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkRoleExclusionsApi->finance_agreement_types_id_work_role_exclusions_get: #{e}"
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

[**Array&lt;AgreementTypeWorkRoleExclusion&gt;**](AgreementTypeWorkRoleExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreement_types_id_work_role_exclusions_post**
> AgreementTypeWorkRoleExclusion finance_agreement_types_id_work_role_exclusions_post(id, work_role_exclusion)



Create Work Role Exclusion

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

api_instance = ConnectWise::AgreementTypeWorkRoleExclusionsApi.new

id = 56 # Integer | 

work_role_exclusion = ConnectWise::AgreementTypeWorkRoleExclusion.new # AgreementTypeWorkRoleExclusion | 


begin
  result = api_instance.finance_agreement_types_id_work_role_exclusions_post(id, work_role_exclusion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkRoleExclusionsApi->finance_agreement_types_id_work_role_exclusions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exclusion** | [**AgreementTypeWorkRoleExclusion**](AgreementTypeWorkRoleExclusion.md)|  | 

### Return type

[**AgreementTypeWorkRoleExclusion**](AgreementTypeWorkRoleExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete**
> finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete(id, work_role_exclusion_id)



Delete Work Role Exclusion By Id

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

api_instance = ConnectWise::AgreementTypeWorkRoleExclusionsApi.new

id = 56 # Integer | 

work_role_exclusion_id = 56 # Integer | 


begin
  api_instance.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete(id, work_role_exclusion_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkRoleExclusionsApi->finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exclusion_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get**
> AgreementTypeWorkRoleExclusion finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get(id, work_role_exclusion_id)



Get Work Role Exclusion By Id

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

api_instance = ConnectWise::AgreementTypeWorkRoleExclusionsApi.new

id = 56 # Integer | 

work_role_exclusion_id = 56 # Integer | 


begin
  result = api_instance.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get(id, work_role_exclusion_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementTypeWorkRoleExclusionsApi->finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exclusion_id** | **Integer**|  | 

### Return type

[**AgreementTypeWorkRoleExclusion**](AgreementTypeWorkRoleExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




# ConnectWise::AgreementWorkRoleExclusionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_work_role_exclusions_count_get**](AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_count_get) | **GET** /finance/agreements/{id}/workRoleExclusions/count | 
[**finance_agreements_id_work_role_exclusions_get**](AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_get) | **GET** /finance/agreements/{id}/workRoleExclusions | 
[**finance_agreements_id_work_role_exclusions_post**](AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_post) | **POST** /finance/agreements/{id}/workRoleExclusions | 
[**finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete**](AgreementWorkRoleExclusionsApi.md#finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workRoleExclusions/{workRoleExclusionId} | 


# **finance_agreements_id_work_role_exclusions_count_get**
> Count finance_agreements_id_work_role_exclusions_count_get(id, opts)



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

api_instance = ConnectWise::AgreementWorkRoleExclusionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_work_role_exclusions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkRoleExclusionsApi->finance_agreements_id_work_role_exclusions_count_get: #{e}"
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



# **finance_agreements_id_work_role_exclusions_get**
> Array&lt;AgreementWorkRoleExclusion&gt; finance_agreements_id_work_role_exclusions_get(id, opts)



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

api_instance = ConnectWise::AgreementWorkRoleExclusionsApi.new

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
  result = api_instance.finance_agreements_id_work_role_exclusions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkRoleExclusionsApi->finance_agreements_id_work_role_exclusions_get: #{e}"
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

[**Array&lt;AgreementWorkRoleExclusion&gt;**](AgreementWorkRoleExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_work_role_exclusions_post**
> AgreementWorkRoleExclusion finance_agreements_id_work_role_exclusions_post(id, work_role_exclusion)



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

api_instance = ConnectWise::AgreementWorkRoleExclusionsApi.new

id = 56 # Integer | 

work_role_exclusion = ConnectWise::AgreementWorkRoleExclusion.new # AgreementWorkRoleExclusion | 


begin
  result = api_instance.finance_agreements_id_work_role_exclusions_post(id, work_role_exclusion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkRoleExclusionsApi->finance_agreements_id_work_role_exclusions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exclusion** | [**AgreementWorkRoleExclusion**](AgreementWorkRoleExclusion.md)|  | 

### Return type

[**AgreementWorkRoleExclusion**](AgreementWorkRoleExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete**
> finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete(id, work_role_exclusion_id)



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

api_instance = ConnectWise::AgreementWorkRoleExclusionsApi.new

id = 56 # Integer | 

work_role_exclusion_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete(id, work_role_exclusion_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementWorkRoleExclusionsApi->finance_agreements_id_work_role_exclusions_work_role_exclusion_id_delete: #{e}"
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




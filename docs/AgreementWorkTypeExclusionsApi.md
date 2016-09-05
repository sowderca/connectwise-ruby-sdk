# Connectwise::AgreementWorkTypeExclusionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_work_type_exclusions_count_get**](AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_count_get) | **GET** /finance/agreements/{id}/workTypeExclusions/count | 
[**finance_agreements_id_work_type_exclusions_get**](AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_get) | **GET** /finance/agreements/{id}/workTypeExclusions | 
[**finance_agreements_id_work_type_exclusions_post**](AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_post) | **POST** /finance/agreements/{id}/workTypeExclusions | 
[**finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete**](AgreementWorkTypeExclusionsApi.md#finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete) | **DELETE** /finance/agreements/{id}/workTypeExclusions/{workTypeExclusionId} | 


# **finance_agreements_id_work_type_exclusions_count_get**
> Count finance_agreements_id_work_type_exclusions_count_get(id, opts)



Get Work Type Exclusions Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AgreementWorkTypeExclusionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_work_type_exclusions_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkTypeExclusionsApi->finance_agreements_id_work_type_exclusions_count_get: #{e}"
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



# **finance_agreements_id_work_type_exclusions_get**
> Array&lt;AgreementWorkTypeExclusion&gt; finance_agreements_id_work_type_exclusions_get(id, opts)



Get Work Type Exclusions

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AgreementWorkTypeExclusionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_id_work_type_exclusions_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkTypeExclusionsApi->finance_agreements_id_work_type_exclusions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;AgreementWorkTypeExclusion&gt;**](AgreementWorkTypeExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_work_type_exclusions_post**
> AgreementWorkTypeExclusion finance_agreements_id_work_type_exclusions_post(id, work_type_exclusion)



Create Work Type Exclusion

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AgreementWorkTypeExclusionsApi.new

id = 56 # Integer | 

work_type_exclusion = Connectwise::AgreementWorkTypeExclusion.new # AgreementWorkTypeExclusion | 


begin
  result = api_instance.finance_agreements_id_work_type_exclusions_post(id, work_type_exclusion)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkTypeExclusionsApi->finance_agreements_id_work_type_exclusions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_type_exclusion** | [**AgreementWorkTypeExclusion**](AgreementWorkTypeExclusion.md)|  | 

### Return type

[**AgreementWorkTypeExclusion**](AgreementWorkTypeExclusion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete**
> finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete(id, work_type_exclusion_id)



Delete Work Type Exclusion By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::AgreementWorkTypeExclusionsApi.new

id = 56 # Integer | 

work_type_exclusion_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete(id, work_type_exclusion_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkTypeExclusionsApi->finance_agreements_id_work_type_exclusions_work_type_exclusion_id_delete: #{e}"
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




# ConnectWise::CrmsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_my_company_crm_count_get**](CrmsApi.md#system_my_company_crm_count_get) | **GET** /system/myCompany/crm/count | 
[**system_my_company_crm_get**](CrmsApi.md#system_my_company_crm_get) | **GET** /system/myCompany/crm | 
[**system_my_company_crm_id_get**](CrmsApi.md#system_my_company_crm_id_get) | **GET** /system/myCompany/crm/{id} | 
[**system_my_company_crm_id_patch**](CrmsApi.md#system_my_company_crm_id_patch) | **PATCH** /system/myCompany/crm/{id} | 
[**system_my_company_crm_id_put**](CrmsApi.md#system_my_company_crm_id_put) | **PUT** /system/myCompany/crm/{id} | 


# **system_my_company_crm_count_get**
> Count system_my_company_crm_count_get(opts)



Get Crms Count

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

api_instance = ConnectWise::CrmsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_my_company_crm_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CrmsApi->system_my_company_crm_count_get: #{e}"
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



# **system_my_company_crm_get**
> Array&lt;Crm&gt; system_my_company_crm_get(opts)



Get Crms

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

api_instance = ConnectWise::CrmsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_my_company_crm_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CrmsApi->system_my_company_crm_get: #{e}"
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

[**Array&lt;Crm&gt;**](Crm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_crm_id_get**
> Crm system_my_company_crm_id_get(id)



Get Crm By Id

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

api_instance = ConnectWise::CrmsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_my_company_crm_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CrmsApi->system_my_company_crm_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Crm**](Crm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_crm_id_patch**
> Crm system_my_company_crm_id_patch(id, operations)



Update Crm

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

api_instance = ConnectWise::CrmsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_my_company_crm_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CrmsApi->system_my_company_crm_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Crm**](Crm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_my_company_crm_id_put**
> Crm system_my_company_crm_id_put(id, crm)



Replace Crm

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

api_instance = ConnectWise::CrmsApi.new

id = 56 # Integer | 

crm = ConnectWise::Crm.new # Crm | 


begin
  result = api_instance.system_my_company_crm_id_put(id, crm)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CrmsApi->system_my_company_crm_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **crm** | [**Crm**](Crm.md)|  | 

### Return type

[**Crm**](Crm.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




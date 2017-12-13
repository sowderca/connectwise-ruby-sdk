# ConnectWise::CorporateStructuresApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_my_company_corporate_structure_count_get**](CorporateStructuresApi.md#system_my_company_corporate_structure_count_get) | **GET** /system/myCompany/corporateStructure/count | 
[**system_my_company_corporate_structure_get**](CorporateStructuresApi.md#system_my_company_corporate_structure_get) | **GET** /system/myCompany/corporateStructure | 
[**system_my_company_corporate_structure_id_get**](CorporateStructuresApi.md#system_my_company_corporate_structure_id_get) | **GET** /system/myCompany/corporateStructure/{id} | 
[**system_my_company_corporate_structure_id_patch**](CorporateStructuresApi.md#system_my_company_corporate_structure_id_patch) | **PATCH** /system/myCompany/corporateStructure/{id} | 
[**system_my_company_corporate_structure_id_put**](CorporateStructuresApi.md#system_my_company_corporate_structure_id_put) | **PUT** /system/myCompany/corporateStructure/{id} | 


# **system_my_company_corporate_structure_count_get**
> Count system_my_company_corporate_structure_count_get(opts)



Get Corporate Structures Count

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

api_instance = ConnectWise::CorporateStructuresApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_my_company_corporate_structure_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructuresApi->system_my_company_corporate_structure_count_get: #{e}"
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



# **system_my_company_corporate_structure_get**
> Array&lt;CorporateStructure&gt; system_my_company_corporate_structure_get(opts)



Get Corporate Structures

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

api_instance = ConnectWise::CorporateStructuresApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_my_company_corporate_structure_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructuresApi->system_my_company_corporate_structure_get: #{e}"
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

[**Array&lt;CorporateStructure&gt;**](CorporateStructure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_corporate_structure_id_get**
> CorporateStructure system_my_company_corporate_structure_id_get(id)



Get Corporate Structure By Id

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

api_instance = ConnectWise::CorporateStructuresApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_my_company_corporate_structure_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructuresApi->system_my_company_corporate_structure_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CorporateStructure**](CorporateStructure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_corporate_structure_id_patch**
> CorporateStructure system_my_company_corporate_structure_id_patch(id, operations)



Update Corporate Structure

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

api_instance = ConnectWise::CorporateStructuresApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_my_company_corporate_structure_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructuresApi->system_my_company_corporate_structure_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CorporateStructure**](CorporateStructure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_my_company_corporate_structure_id_put**
> CorporateStructure system_my_company_corporate_structure_id_put(id, corporate_structure)



Replace Corporate Structure

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

api_instance = ConnectWise::CorporateStructuresApi.new

id = 56 # Integer | 

corporate_structure = ConnectWise::CorporateStructure.new # CorporateStructure | 


begin
  result = api_instance.system_my_company_corporate_structure_id_put(id, corporate_structure)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructuresApi->system_my_company_corporate_structure_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **corporate_structure** | [**CorporateStructure**](CorporateStructure.md)|  | 

### Return type

[**CorporateStructure**](CorporateStructure.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




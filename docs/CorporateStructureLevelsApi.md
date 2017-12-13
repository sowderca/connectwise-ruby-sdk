# ConnectWise::CorporateStructureLevelsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_my_company_corporate_structure_levels_count_get**](CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_count_get) | **GET** /system/myCompany/corporateStructureLevels/count | 
[**system_my_company_corporate_structure_levels_get**](CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_get) | **GET** /system/myCompany/corporateStructureLevels | 
[**system_my_company_corporate_structure_levels_id_get**](CorporateStructureLevelsApi.md#system_my_company_corporate_structure_levels_id_get) | **GET** /system/myCompany/corporateStructureLevels/{id} | 


# **system_my_company_corporate_structure_levels_count_get**
> Count system_my_company_corporate_structure_levels_count_get(opts)



Get Corporate Structure Levels Count

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

api_instance = ConnectWise::CorporateStructureLevelsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_my_company_corporate_structure_levels_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructureLevelsApi->system_my_company_corporate_structure_levels_count_get: #{e}"
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



# **system_my_company_corporate_structure_levels_get**
> Array&lt;CorporateStructureLevel&gt; system_my_company_corporate_structure_levels_get(opts)



Get Corporate Structure Levels

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

api_instance = ConnectWise::CorporateStructureLevelsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_my_company_corporate_structure_levels_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructureLevelsApi->system_my_company_corporate_structure_levels_get: #{e}"
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

[**Array&lt;CorporateStructureLevel&gt;**](CorporateStructureLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_my_company_corporate_structure_levels_id_get**
> CorporateStructureLevel system_my_company_corporate_structure_levels_id_get(id)



Get Corporate Structure Level By Id

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

api_instance = ConnectWise::CorporateStructureLevelsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_my_company_corporate_structure_levels_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CorporateStructureLevelsApi->system_my_company_corporate_structure_levels_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CorporateStructureLevel**](CorporateStructureLevel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




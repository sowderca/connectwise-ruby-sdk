# ConnectWise::KPICategoriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_kpi_categories_count_get**](KPICategoriesApi.md#system_kpi_categories_count_get) | **GET** /system/kpiCategories/count | 
[**system_kpi_categories_get**](KPICategoriesApi.md#system_kpi_categories_get) | **GET** /system/kpiCategories | 
[**system_kpi_categories_id_get**](KPICategoriesApi.md#system_kpi_categories_id_get) | **GET** /system/kpiCategories/{id} | 


# **system_kpi_categories_count_get**
> Count system_kpi_categories_count_get(opts)



Get K P I Categories Count

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

api_instance = ConnectWise::KPICategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_kpi_categories_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPICategoriesApi->system_kpi_categories_count_get: #{e}"
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



# **system_kpi_categories_get**
> Array&lt;KPICategory&gt; system_kpi_categories_get(opts)



Get K P I Categories

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

api_instance = ConnectWise::KPICategoriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_kpi_categories_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPICategoriesApi->system_kpi_categories_get: #{e}"
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

[**Array&lt;KPICategory&gt;**](KPICategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_kpi_categories_id_get**
> KPICategory system_kpi_categories_id_get(id)



Get K P I Category By Id

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

api_instance = ConnectWise::KPICategoriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_kpi_categories_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPICategoriesApi->system_kpi_categories_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**KPICategory**](KPICategory.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




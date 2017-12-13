# ConnectWise::KPIsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_kpis_count_get**](KPIsApi.md#system_kpis_count_get) | **GET** /system/kpis/count | 
[**system_kpis_get**](KPIsApi.md#system_kpis_get) | **GET** /system/kpis | 
[**system_kpis_id_get**](KPIsApi.md#system_kpis_id_get) | **GET** /system/kpis/{id} | 


# **system_kpis_count_get**
> Count system_kpis_count_get(opts)



Get K P I Count

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

api_instance = ConnectWise::KPIsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_kpis_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPIsApi->system_kpis_count_get: #{e}"
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



# **system_kpis_get**
> Array&lt;KPI&gt; system_kpis_get(opts)



Get K P I

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

api_instance = ConnectWise::KPIsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_kpis_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPIsApi->system_kpis_get: #{e}"
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

[**Array&lt;KPI&gt;**](KPI.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_kpis_id_get**
> KPI system_kpis_id_get(id)



Get K P I By Id

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

api_instance = ConnectWise::KPIsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_kpis_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling KPIsApi->system_kpis_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**KPI**](KPI.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




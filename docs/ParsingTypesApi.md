# ConnectWise::ParsingTypesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_parsing_types_count_get**](ParsingTypesApi.md#system_parsing_types_count_get) | **GET** /system/parsingTypes/count | 
[**system_parsing_types_get**](ParsingTypesApi.md#system_parsing_types_get) | **GET** /system/parsingTypes | 
[**system_parsing_types_id_get**](ParsingTypesApi.md#system_parsing_types_id_get) | **GET** /system/parsingTypes/{id} | 


# **system_parsing_types_count_get**
> Count system_parsing_types_count_get(opts)



Get Parsing Type Count

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

api_instance = ConnectWise::ParsingTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_parsing_types_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingTypesApi->system_parsing_types_count_get: #{e}"
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



# **system_parsing_types_get**
> Array&lt;ParsingType&gt; system_parsing_types_get(opts)



Get Parsing Parsing Types

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

api_instance = ConnectWise::ParsingTypesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_parsing_types_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingTypesApi->system_parsing_types_get: #{e}"
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

[**Array&lt;ParsingType&gt;**](ParsingType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_parsing_types_id_get**
> ParsingType system_parsing_types_id_get(id)



Get Parsing Type By Id

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

api_instance = ConnectWise::ParsingTypesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_parsing_types_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingTypesApi->system_parsing_types_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ParsingType**](ParsingType.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




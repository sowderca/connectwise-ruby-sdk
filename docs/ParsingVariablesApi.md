# ConnectWise::ParsingVariablesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_parsing_variables_count_get**](ParsingVariablesApi.md#system_parsing_variables_count_get) | **GET** /system/parsingVariables/count | 
[**system_parsing_variables_get**](ParsingVariablesApi.md#system_parsing_variables_get) | **GET** /system/parsingVariables | 
[**system_parsing_variables_id_get**](ParsingVariablesApi.md#system_parsing_variables_id_get) | **GET** /system/parsingVariables/{id} | 


# **system_parsing_variables_count_get**
> Count system_parsing_variables_count_get(opts)



Get Parsing Variable Count

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

api_instance = ConnectWise::ParsingVariablesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_parsing_variables_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingVariablesApi->system_parsing_variables_count_get: #{e}"
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



# **system_parsing_variables_get**
> Array&lt;ParsingVariable&gt; system_parsing_variables_get(opts)



Get Parsing Variables

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

api_instance = ConnectWise::ParsingVariablesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_parsing_variables_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingVariablesApi->system_parsing_variables_get: #{e}"
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

[**Array&lt;ParsingVariable&gt;**](ParsingVariable.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_parsing_variables_id_get**
> ParsingVariable system_parsing_variables_id_get(id)



Get Parsing Variable By Id

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

api_instance = ConnectWise::ParsingVariablesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_parsing_variables_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ParsingVariablesApi->system_parsing_variables_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ParsingVariable**](ParsingVariable.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




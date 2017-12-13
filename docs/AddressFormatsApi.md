# ConnectWise::AddressFormatsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_address_formats_count_get**](AddressFormatsApi.md#company_address_formats_count_get) | **GET** /company/addressFormats/count | 
[**company_address_formats_get**](AddressFormatsApi.md#company_address_formats_get) | **GET** /company/addressFormats | 
[**company_address_formats_id_delete**](AddressFormatsApi.md#company_address_formats_id_delete) | **DELETE** /company/addressFormats/{id} | 
[**company_address_formats_id_get**](AddressFormatsApi.md#company_address_formats_id_get) | **GET** /company/addressFormats/{id} | 
[**company_address_formats_id_patch**](AddressFormatsApi.md#company_address_formats_id_patch) | **PATCH** /company/addressFormats/{id} | 
[**company_address_formats_id_put**](AddressFormatsApi.md#company_address_formats_id_put) | **PUT** /company/addressFormats/{id} | 
[**company_address_formats_post**](AddressFormatsApi.md#company_address_formats_post) | **POST** /company/addressFormats | 


# **company_address_formats_count_get**
> Count company_address_formats_count_get(opts)



Get Address Formats Count

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

api_instance = ConnectWise::AddressFormatsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_address_formats_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_count_get: #{e}"
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



# **company_address_formats_get**
> Array&lt;AddressFormat&gt; company_address_formats_get(opts)



Get Address Formats

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

api_instance = ConnectWise::AddressFormatsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_address_formats_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_get: #{e}"
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

[**Array&lt;AddressFormat&gt;**](AddressFormat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_address_formats_id_delete**
> company_address_formats_id_delete(id)



Delete Address Format By Id

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

api_instance = ConnectWise::AddressFormatsApi.new

id = 56 # Integer | 


begin
  api_instance.company_address_formats_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_address_formats_id_get**
> AddressFormat company_address_formats_id_get(id)



Get Address Format By Id

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

api_instance = ConnectWise::AddressFormatsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_address_formats_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AddressFormat**](AddressFormat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_address_formats_id_patch**
> AddressFormat company_address_formats_id_patch(id, operations)



Update Address Format

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

api_instance = ConnectWise::AddressFormatsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_address_formats_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AddressFormat**](AddressFormat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_address_formats_id_put**
> AddressFormat company_address_formats_id_put(id, address_format)



Replace Address Format

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

api_instance = ConnectWise::AddressFormatsApi.new

id = 56 # Integer | 

address_format = ConnectWise::AddressFormat.new # AddressFormat | 


begin
  result = api_instance.company_address_formats_id_put(id, address_format)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **address_format** | [**AddressFormat**](AddressFormat.md)|  | 

### Return type

[**AddressFormat**](AddressFormat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_address_formats_post**
> AddressFormat company_address_formats_post(address_format)



Create Address Format

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

api_instance = ConnectWise::AddressFormatsApi.new

address_format = ConnectWise::AddressFormat.new # AddressFormat | 


begin
  result = api_instance.company_address_formats_post(address_format)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AddressFormatsApi->company_address_formats_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_format** | [**AddressFormat**](AddressFormat.md)|  | 

### Return type

[**AddressFormat**](AddressFormat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




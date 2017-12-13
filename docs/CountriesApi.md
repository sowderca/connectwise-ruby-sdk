# ConnectWise::CountriesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_countries_count_get**](CountriesApi.md#company_countries_count_get) | **GET** /company/countries/count | 
[**company_countries_get**](CountriesApi.md#company_countries_get) | **GET** /company/countries | 
[**company_countries_id_delete**](CountriesApi.md#company_countries_id_delete) | **DELETE** /company/countries/{id} | 
[**company_countries_id_get**](CountriesApi.md#company_countries_id_get) | **GET** /company/countries/{id} | 
[**company_countries_id_patch**](CountriesApi.md#company_countries_id_patch) | **PATCH** /company/countries/{id} | 
[**company_countries_id_put**](CountriesApi.md#company_countries_id_put) | **PUT** /company/countries/{id} | 
[**company_countries_post**](CountriesApi.md#company_countries_post) | **POST** /company/countries | 


# **company_countries_count_get**
> Count company_countries_count_get(opts)



Get Countries Count

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

api_instance = ConnectWise::CountriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_countries_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_count_get: #{e}"
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



# **company_countries_get**
> Array&lt;Country&gt; company_countries_get(opts)



Get Countries

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

api_instance = ConnectWise::CountriesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_countries_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_get: #{e}"
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

[**Array&lt;Country&gt;**](Country.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_countries_id_delete**
> company_countries_id_delete(id)



Delete Country By Id

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

api_instance = ConnectWise::CountriesApi.new

id = 56 # Integer | 


begin
  api_instance.company_countries_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_id_delete: #{e}"
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



# **company_countries_id_get**
> Country company_countries_id_get(id)



Get Country By Id

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

api_instance = ConnectWise::CountriesApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_countries_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Country**](Country.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_countries_id_patch**
> Country company_countries_id_patch(id, operations)



Update Country

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

api_instance = ConnectWise::CountriesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_countries_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Country**](Country.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_countries_id_put**
> Country company_countries_id_put(id, country)



Replace Country

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

api_instance = ConnectWise::CountriesApi.new

id = 56 # Integer | 

country = ConnectWise::Country.new # Country | 


begin
  result = api_instance.company_countries_id_put(id, country)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **country** | [**Country**](Country.md)|  | 

### Return type

[**Country**](Country.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_countries_post**
> Country company_countries_post(country)



Create Country

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

api_instance = ConnectWise::CountriesApi.new

country = ConnectWise::Country.new # Country | 


begin
  result = api_instance.company_countries_post(country)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CountriesApi->company_countries_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | [**Country**](Country.md)|  | 

### Return type

[**Country**](Country.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# Connectwise::CurrenciesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_currencies_count_get**](CurrenciesApi.md#finance_currencies_count_get) | **GET** /finance/currencies/count | 
[**finance_currencies_get**](CurrenciesApi.md#finance_currencies_get) | **GET** /finance/currencies | 
[**finance_currencies_id_delete**](CurrenciesApi.md#finance_currencies_id_delete) | **DELETE** /finance/currencies/{id} | 
[**finance_currencies_id_get**](CurrenciesApi.md#finance_currencies_id_get) | **GET** /finance/currencies/{id} | 
[**finance_currencies_id_patch**](CurrenciesApi.md#finance_currencies_id_patch) | **PATCH** /finance/currencies/{id} | 
[**finance_currencies_id_put**](CurrenciesApi.md#finance_currencies_id_put) | **PUT** /finance/currencies/{id} | 
[**finance_currencies_post**](CurrenciesApi.md#finance_currencies_post) | **POST** /finance/currencies | 


# **finance_currencies_count_get**
> Count finance_currencies_count_get(opts)



Get Currencies Count

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

api_instance = Connectwise::CurrenciesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_currencies_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_count_get: #{e}"
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



# **finance_currencies_get**
> Array&lt;Currency&gt; finance_currencies_get(opts)



Get Currencies

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

api_instance = Connectwise::CurrenciesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_currencies_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Currency&gt;**](Currency.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_currencies_id_delete**
> finance_currencies_id_delete(id)



Delete Currency By Id

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

api_instance = Connectwise::CurrenciesApi.new

id = 56 # Integer | 


begin
  api_instance.finance_currencies_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_id_delete: #{e}"
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



# **finance_currencies_id_get**
> Currency finance_currencies_id_get(id)



Get Currency By Id

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

api_instance = Connectwise::CurrenciesApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_currencies_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Currency**](Currency.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_currencies_id_patch**
> Currency finance_currencies_id_patch(id, operations)



Update Currency

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

api_instance = Connectwise::CurrenciesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_currencies_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Currency**](Currency.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_currencies_id_put**
> Currency finance_currencies_id_put(id, currency)



Replace Currency

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

api_instance = Connectwise::CurrenciesApi.new

id = 56 # Integer | 

currency = Connectwise::Currency.new # Currency | 


begin
  result = api_instance.finance_currencies_id_put(id, currency)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **currency** | [**Currency**](Currency.md)|  | 

### Return type

[**Currency**](Currency.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_currencies_post**
> Currency finance_currencies_post(currency)



Create Currency

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

api_instance = Connectwise::CurrenciesApi.new

currency = Connectwise::Currency.new # Currency | 


begin
  result = api_instance.finance_currencies_post(currency)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CurrenciesApi->finance_currencies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | [**Currency**](Currency.md)|  | 

### Return type

[**Currency**](Currency.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




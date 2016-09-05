# Connectwise::ManufacturersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**procurement_manufacturers_count_get**](ManufacturersApi.md#procurement_manufacturers_count_get) | **GET** /procurement/manufacturers/count | 
[**procurement_manufacturers_get**](ManufacturersApi.md#procurement_manufacturers_get) | **GET** /procurement/manufacturers | 
[**procurement_manufacturers_id_delete**](ManufacturersApi.md#procurement_manufacturers_id_delete) | **DELETE** /procurement/manufacturers/{id} | 
[**procurement_manufacturers_id_get**](ManufacturersApi.md#procurement_manufacturers_id_get) | **GET** /procurement/manufacturers/{id} | 
[**procurement_manufacturers_id_patch**](ManufacturersApi.md#procurement_manufacturers_id_patch) | **PATCH** /procurement/manufacturers/{id} | 
[**procurement_manufacturers_id_put**](ManufacturersApi.md#procurement_manufacturers_id_put) | **PUT** /procurement/manufacturers/{id} | 
[**procurement_manufacturers_post**](ManufacturersApi.md#procurement_manufacturers_post) | **POST** /procurement/manufacturers | 


# **procurement_manufacturers_count_get**
> Count procurement_manufacturers_count_get(opts)



Get Manufacturers Count

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

api_instance = Connectwise::ManufacturersApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.procurement_manufacturers_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_count_get: #{e}"
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



# **procurement_manufacturers_get**
> Array&lt;Manufacturer&gt; procurement_manufacturers_get(opts)



Get Manufacturers

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

api_instance = Connectwise::ManufacturersApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.procurement_manufacturers_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_get: #{e}"
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

[**Array&lt;Manufacturer&gt;**](Manufacturer.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_manufacturers_id_delete**
> procurement_manufacturers_id_delete(id)



Delete Manufacturer By Id

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

api_instance = Connectwise::ManufacturersApi.new

id = 56 # Integer | 


begin
  api_instance.procurement_manufacturers_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_id_delete: #{e}"
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



# **procurement_manufacturers_id_get**
> Manufacturer procurement_manufacturers_id_get(id)



Get Manufacturer By Id

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

api_instance = Connectwise::ManufacturersApi.new

id = 56 # Integer | 


begin
  result = api_instance.procurement_manufacturers_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Manufacturer**](Manufacturer.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **procurement_manufacturers_id_patch**
> Manufacturer procurement_manufacturers_id_patch(id, operations)



Update Manufacturer

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

api_instance = Connectwise::ManufacturersApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.procurement_manufacturers_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Manufacturer**](Manufacturer.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_manufacturers_id_put**
> Manufacturer procurement_manufacturers_id_put(id, manufacturer)



Replace Manufacturer

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

api_instance = Connectwise::ManufacturersApi.new

id = 56 # Integer | 

manufacturer = Connectwise::Manufacturer.new # Manufacturer | 


begin
  result = api_instance.procurement_manufacturers_id_put(id, manufacturer)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **manufacturer** | [**Manufacturer**](Manufacturer.md)|  | 

### Return type

[**Manufacturer**](Manufacturer.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **procurement_manufacturers_post**
> Manufacturer procurement_manufacturers_post(manufacturer)



Create Manufacturer

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

api_instance = Connectwise::ManufacturersApi.new

manufacturer = Connectwise::Manufacturer.new # Manufacturer | 


begin
  result = api_instance.procurement_manufacturers_post(manufacturer)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ManufacturersApi->procurement_manufacturers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manufacturer** | [**Manufacturer**](Manufacturer.md)|  | 

### Return type

[**Manufacturer**](Manufacturer.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




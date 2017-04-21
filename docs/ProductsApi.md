# ConnectWise::ProductsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_products_count_get**](ProductsApi.md#system_products_count_get) | **GET** /system/products/count | 
[**system_products_get**](ProductsApi.md#system_products_get) | **GET** /system/products | 
[**system_products_product_identifier_get**](ProductsApi.md#system_products_product_identifier_get) | **GET** /system/products/{productIdentifier} | 
[**system_products_product_identifier_post**](ProductsApi.md#system_products_product_identifier_post) | **POST** /system/products/{productIdentifier} | 


# **system_products_count_get**
> Count system_products_count_get(opts)



Get Products Count

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

api_instance = ConnectWise::ProductsApi.new

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.system_products_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsApi->system_products_count_get: #{e}"
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



# **system_products_get**
> Array&lt;Product&gt; system_products_get(opts)



Get Products

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

api_instance = ConnectWise::ProductsApi.new

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_products_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsApi->system_products_get: #{e}"
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

[**Array&lt;Product&gt;**](Product.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_products_product_identifier_get**
> Product system_products_product_identifier_get(product_identifier)



Get Product By Id

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

api_instance = ConnectWise::ProductsApi.new

product_identifier = "product_identifier_example" # String | 


begin
  result = api_instance.system_products_product_identifier_get(product_identifier)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsApi->system_products_product_identifier_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_identifier** | **String**|  | 

### Return type

[**Product**](Product.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_products_product_identifier_post**
> Product system_products_product_identifier_post(opts)



Install Product

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

api_instance = ConnectWise::ProductsApi.new

opts = { 
  product_identifier: "product_identifier_example" # String | 
}

begin
  result = api_instance.system_products_product_identifier_post(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ProductsApi->system_products_product_identifier_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_identifier** | **String**|  | [optional] 

### Return type

[**Product**](Product.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




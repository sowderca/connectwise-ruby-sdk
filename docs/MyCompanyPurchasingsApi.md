# ConnectWise::MyCompanyPurchasingsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_mycompany_purchasing_count_get**](MyCompanyPurchasingsApi.md#system_mycompany_purchasing_count_get) | **GET** /system/mycompany/purchasing/count | 
[**system_mycompany_purchasing_get**](MyCompanyPurchasingsApi.md#system_mycompany_purchasing_get) | **GET** /system/mycompany/purchasing | 
[**system_mycompany_purchasing_id_get**](MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_get) | **GET** /system/mycompany/purchasing/{id} | 
[**system_mycompany_purchasing_id_patch**](MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_patch) | **PATCH** /system/mycompany/purchasing/{id} | 
[**system_mycompany_purchasing_id_put**](MyCompanyPurchasingsApi.md#system_mycompany_purchasing_id_put) | **PUT** /system/mycompany/purchasing/{id} | 


# **system_mycompany_purchasing_count_get**
> Count system_mycompany_purchasing_count_get(opts)



Get My Company Purchasings Count

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

api_instance = ConnectWise::MyCompanyPurchasingsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_mycompany_purchasing_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MyCompanyPurchasingsApi->system_mycompany_purchasing_count_get: #{e}"
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



# **system_mycompany_purchasing_get**
> Array&lt;Purchasing&gt; system_mycompany_purchasing_get(opts)



Get My Company Purchasings

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

api_instance = ConnectWise::MyCompanyPurchasingsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_mycompany_purchasing_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MyCompanyPurchasingsApi->system_mycompany_purchasing_get: #{e}"
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

[**Array&lt;Purchasing&gt;**](Purchasing.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_purchasing_id_get**
> Purchasing system_mycompany_purchasing_id_get(id)



Get My Company Purchasing By Id

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

api_instance = ConnectWise::MyCompanyPurchasingsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_mycompany_purchasing_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MyCompanyPurchasingsApi->system_mycompany_purchasing_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Purchasing**](Purchasing.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_mycompany_purchasing_id_patch**
> Purchasing system_mycompany_purchasing_id_patch(id, operations)



Update My Company Purchasing

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

api_instance = ConnectWise::MyCompanyPurchasingsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_mycompany_purchasing_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MyCompanyPurchasingsApi->system_mycompany_purchasing_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Purchasing**](Purchasing.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_mycompany_purchasing_id_put**
> Purchasing system_mycompany_purchasing_id_put(id, purchasing)



Replace My Company Purchasing

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

api_instance = ConnectWise::MyCompanyPurchasingsApi.new

id = 56 # Integer | 

purchasing = ConnectWise::Purchasing.new # Purchasing | 


begin
  result = api_instance.system_mycompany_purchasing_id_put(id, purchasing)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MyCompanyPurchasingsApi->system_mycompany_purchasing_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **purchasing** | [**Purchasing**](Purchasing.md)|  | 

### Return type

[**Purchasing**](Purchasing.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




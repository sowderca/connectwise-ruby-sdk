# ConnectWise::CommissionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_commissions_count_get**](CommissionsApi.md#sales_commissions_count_get) | **GET** /sales/commissions/count | 
[**sales_commissions_get**](CommissionsApi.md#sales_commissions_get) | **GET** /sales/commissions | 
[**sales_commissions_id_delete**](CommissionsApi.md#sales_commissions_id_delete) | **DELETE** /sales/commissions/{id} | 
[**sales_commissions_id_get**](CommissionsApi.md#sales_commissions_id_get) | **GET** /sales/commissions/{id} | 
[**sales_commissions_id_patch**](CommissionsApi.md#sales_commissions_id_patch) | **PATCH** /sales/commissions/{id} | 
[**sales_commissions_id_put**](CommissionsApi.md#sales_commissions_id_put) | **PUT** /sales/commissions/{id} | 
[**sales_commissions_post**](CommissionsApi.md#sales_commissions_post) | **POST** /sales/commissions | 


# **sales_commissions_count_get**
> Count sales_commissions_count_get(opts)



Get Commissions Count

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

api_instance = ConnectWise::CommissionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_commissions_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_count_get: #{e}"
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



# **sales_commissions_get**
> Array&lt;Commission&gt; sales_commissions_get(opts)



Get Commissions

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

api_instance = ConnectWise::CommissionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_commissions_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_get: #{e}"
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

[**Array&lt;Commission&gt;**](Commission.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_commissions_id_delete**
> sales_commissions_id_delete(id)



Delete Commission By Id

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

api_instance = ConnectWise::CommissionsApi.new

id = 56 # Integer | 


begin
  api_instance.sales_commissions_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_id_delete: #{e}"
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



# **sales_commissions_id_get**
> Commission sales_commissions_id_get(id)



Get Commission By Id

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

api_instance = ConnectWise::CommissionsApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_commissions_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Commission**](Commission.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_commissions_id_patch**
> Commission sales_commissions_id_patch(id, operations)



Update Commission

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

api_instance = ConnectWise::CommissionsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_commissions_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Commission**](Commission.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_commissions_id_put**
> Commission sales_commissions_id_put(id, commission)



Replace Commission

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

api_instance = ConnectWise::CommissionsApi.new

id = 56 # Integer | 

commission = ConnectWise::Commission.new # Commission | 


begin
  result = api_instance.sales_commissions_id_put(id, commission)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **commission** | [**Commission**](Commission.md)|  | 

### Return type

[**Commission**](Commission.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_commissions_post**
> Commission sales_commissions_post(commission)



Create Commission

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

api_instance = ConnectWise::CommissionsApi.new

commission = ConnectWise::Commission.new # Commission | 


begin
  result = api_instance.sales_commissions_post(commission)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CommissionsApi->sales_commissions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commission** | [**Commission**](Commission.md)|  | 

### Return type

[**Commission**](Commission.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




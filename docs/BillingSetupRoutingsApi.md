# ConnectWise::BillingSetupRoutingsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_billing_setups_id_routings_count_get**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_count_get) | **GET** /finance/billingSetups/{id}/routings/count | 
[**finance_billing_setups_id_routings_get**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_get) | **GET** /finance/billingSetups/{id}/routings | 
[**finance_billing_setups_id_routings_post**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_post) | **POST** /finance/billingSetups/{id}/routings | 
[**finance_billing_setups_id_routings_routing_id_delete**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_delete) | **DELETE** /finance/billingSetups/{id}/routings/{routingId} | 
[**finance_billing_setups_id_routings_routing_id_get**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_get) | **GET** /finance/billingSetups/{id}/routings/{routingId} | 
[**finance_billing_setups_id_routings_routing_id_patch**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_patch) | **PATCH** /finance/billingSetups/{id}/routings/{routingId} | 
[**finance_billing_setups_id_routings_routing_id_put**](BillingSetupRoutingsApi.md#finance_billing_setups_id_routings_routing_id_put) | **PUT** /finance/billingSetups/{id}/routings/{routingId} | 


# **finance_billing_setups_id_routings_count_get**
> Count finance_billing_setups_id_routings_count_get(id, opts)



Get Billing Setup Routings Count

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_billing_setups_id_routings_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_setups_id_routings_get**
> Array&lt;BillingSetupRouting&gt; finance_billing_setups_id_routings_get(id, opts)



Get Billing Setup Routings

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_billing_setups_id_routings_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;BillingSetupRouting&gt;**](BillingSetupRouting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_setups_id_routings_post**
> BillingSetupRouting finance_billing_setups_id_routings_post(id, billing_setup_routing)



Create Billing Setup Routing

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

billing_setup_routing = ConnectWise::BillingSetupRouting.new # BillingSetupRouting | 


begin
  result = api_instance.finance_billing_setups_id_routings_post(id, billing_setup_routing)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **billing_setup_routing** | [**BillingSetupRouting**](BillingSetupRouting.md)|  | 

### Return type

[**BillingSetupRouting**](BillingSetupRouting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_billing_setups_id_routings_routing_id_delete**
> finance_billing_setups_id_routings_routing_id_delete(id, routing_id)



Delete Billing Setup Routing By Id

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

routing_id = 56 # Integer | 


begin
  api_instance.finance_billing_setups_id_routings_routing_id_delete(id, routing_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_routing_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **routing_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_billing_setups_id_routings_routing_id_get**
> BillingSetupRouting finance_billing_setups_id_routings_routing_id_get(id, routing_id)



Get Billing Setup Routing By Id

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

routing_id = 56 # Integer | 


begin
  result = api_instance.finance_billing_setups_id_routings_routing_id_get(id, routing_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_routing_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **routing_id** | **Integer**|  | 

### Return type

[**BillingSetupRouting**](BillingSetupRouting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_billing_setups_id_routings_routing_id_patch**
> BillingSetupRouting finance_billing_setups_id_routings_routing_id_patch(id, routing_id, operations)



Update Billing Setup Routing

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

routing_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_billing_setups_id_routings_routing_id_patch(id, routing_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_routing_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **routing_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BillingSetupRouting**](BillingSetupRouting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_billing_setups_id_routings_routing_id_put**
> BillingSetupRouting finance_billing_setups_id_routings_routing_id_put(id, routing_id, billing_setup_routing)



Replace Billing Setup Routing

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

api_instance = ConnectWise::BillingSetupRoutingsApi.new

id = 56 # Integer | 

routing_id = 56 # Integer | 

billing_setup_routing = ConnectWise::BillingSetupRouting.new # BillingSetupRouting | 


begin
  result = api_instance.finance_billing_setups_id_routings_routing_id_put(id, routing_id, billing_setup_routing)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BillingSetupRoutingsApi->finance_billing_setups_id_routings_routing_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **routing_id** | **Integer**|  | 
 **billing_setup_routing** | [**BillingSetupRouting**](BillingSetupRouting.md)|  | 

### Return type

[**BillingSetupRouting**](BillingSetupRouting.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




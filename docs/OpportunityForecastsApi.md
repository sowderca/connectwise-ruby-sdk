# Connectwise::OpportunityForecastsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_id_forecast_count_get**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_count_get) | **GET** /sales/opportunities/{id}/forecast/count | 
[**sales_opportunities_id_forecast_forecast_id_delete**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_delete) | **DELETE** /sales/opportunities/{id}/forecast/{forecastId} | 
[**sales_opportunities_id_forecast_forecast_id_get**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_get) | **GET** /sales/opportunities/{id}/forecast/{forecastId} | 
[**sales_opportunities_id_forecast_forecast_id_patch**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_patch) | **PATCH** /sales/opportunities/{id}/forecast/{forecastId} | 
[**sales_opportunities_id_forecast_forecast_id_put**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_forecast_id_put) | **PUT** /sales/opportunities/{id}/forecast/{forecastId} | 
[**sales_opportunities_id_forecast_get**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_get) | **GET** /sales/opportunities/{id}/forecast | 
[**sales_opportunities_id_forecast_post**](OpportunityForecastsApi.md#sales_opportunities_id_forecast_post) | **POST** /sales/opportunities/{id}/forecast | 


# **sales_opportunities_id_forecast_count_get**
> Count sales_opportunities_id_forecast_count_get(id, opts)



Get Forecasts Count

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_id_forecast_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_count_get: #{e}"
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



# **sales_opportunities_id_forecast_forecast_id_delete**
> sales_opportunities_id_forecast_forecast_id_delete(id, forecast_id)



Delete Forecast By Id

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

forecast_id = 56 # Integer | 


begin
  api_instance.sales_opportunities_id_forecast_forecast_id_delete(id, forecast_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_forecast_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **forecast_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **sales_opportunities_id_forecast_forecast_id_get**
> Forecast sales_opportunities_id_forecast_forecast_id_get(id, forecast_id)



Get Forecast By Id

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

forecast_id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_id_forecast_forecast_id_get(id, forecast_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_forecast_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **forecast_id** | **Integer**|  | 

### Return type

[**Forecast**](Forecast.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_forecast_forecast_id_patch**
> Forecast sales_opportunities_id_forecast_forecast_id_patch(id, forecast_id, operations)



Update Forecast

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

forecast_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_id_forecast_forecast_id_patch(id, forecast_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_forecast_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **forecast_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Forecast**](Forecast.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_forecast_forecast_id_put**
> Forecast sales_opportunities_id_forecast_forecast_id_put(id, forecast_id, forecast)



Replace Forecast

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

forecast_id = 56 # Integer | 

forecast = Connectwise::Forecast.new # Forecast | 


begin
  result = api_instance.sales_opportunities_id_forecast_forecast_id_put(id, forecast_id, forecast)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_forecast_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **forecast_id** | **Integer**|  | 
 **forecast** | [**Forecast**](Forecast.md)|  | 

### Return type

[**Forecast**](Forecast.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_forecast_get**
> Array&lt;Forecast&gt; sales_opportunities_id_forecast_get(id, opts)



Get Forecasts

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_id_forecast_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;Forecast&gt;**](Forecast.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_forecast_post**
> Forecast sales_opportunities_id_forecast_post(id, forecast)



Create Forecast

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

api_instance = Connectwise::OpportunityForecastsApi.new

id = 56 # Integer | 

forecast = Connectwise::Forecast.new # Forecast | 


begin
  result = api_instance.sales_opportunities_id_forecast_post(id, forecast)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling OpportunityForecastsApi->sales_opportunities_id_forecast_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **forecast** | [**Forecast**](Forecast.md)|  | 

### Return type

[**Forecast**](Forecast.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




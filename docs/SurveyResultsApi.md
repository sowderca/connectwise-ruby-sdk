# Connectwise::SurveyResultsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_surveys_id_results_count_get**](SurveyResultsApi.md#service_surveys_id_results_count_get) | **GET** /service/surveys/{id}/results/count | 
[**service_surveys_id_results_get**](SurveyResultsApi.md#service_surveys_id_results_get) | **GET** /service/surveys/{id}/results | 
[**service_surveys_id_results_post**](SurveyResultsApi.md#service_surveys_id_results_post) | **POST** /service/surveys/{id}/results | 
[**service_surveys_id_results_result_id_delete**](SurveyResultsApi.md#service_surveys_id_results_result_id_delete) | **DELETE** /service/surveys/{id}/results/{resultId} | 
[**service_surveys_id_results_result_id_get**](SurveyResultsApi.md#service_surveys_id_results_result_id_get) | **GET** /service/surveys/{id}/results/{resultId} | 
[**service_surveys_id_results_result_id_patch**](SurveyResultsApi.md#service_surveys_id_results_result_id_patch) | **PATCH** /service/surveys/{id}/results/{resultId} | 
[**service_surveys_id_results_result_id_put**](SurveyResultsApi.md#service_surveys_id_results_result_id_put) | **PUT** /service/surveys/{id}/results/{resultId} | 


# **service_surveys_id_results_count_get**
> Count service_surveys_id_results_count_get(id, opts)



Get Survey Results Count

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_surveys_id_results_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_count_get: #{e}"
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



# **service_surveys_id_results_get**
> Array&lt;SurveyResult&gt; service_surveys_id_results_get(id, opts)



Get Survey Results

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_surveys_id_results_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_get: #{e}"
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

[**Array&lt;SurveyResult&gt;**](SurveyResult.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_results_post**
> SurveyResult service_surveys_id_results_post(id, survey_result)



Create Survey Result

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

survey_result = Connectwise::SurveyResult.new # SurveyResult | 


begin
  result = api_instance.service_surveys_id_results_post(id, survey_result)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_result** | [**SurveyResult**](SurveyResult.md)|  | 

### Return type

[**SurveyResult**](SurveyResult.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_results_result_id_delete**
> service_surveys_id_results_result_id_delete(id, result_id)



Delete Survey Result By Id

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

result_id = 56 # Integer | 


begin
  api_instance.service_surveys_id_results_result_id_delete(id, result_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_result_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **result_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_surveys_id_results_result_id_get**
> SurveyResult service_surveys_id_results_result_id_get(id, result_id)



Get Survey Result By Id

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

result_id = 56 # Integer | 


begin
  result = api_instance.service_surveys_id_results_result_id_get(id, result_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_result_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **result_id** | **Integer**|  | 

### Return type

[**SurveyResult**](SurveyResult.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_results_result_id_patch**
> SurveyResult service_surveys_id_results_result_id_patch(id, result_id, operations)



Update Survey Result

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

result_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_surveys_id_results_result_id_patch(id, result_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_result_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **result_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SurveyResult**](SurveyResult.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_results_result_id_put**
> SurveyResult service_surveys_id_results_result_id_put(id, result_id, survey_result)



Replace Survey Result

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

api_instance = Connectwise::SurveyResultsApi.new

id = 56 # Integer | 

result_id = 56 # Integer | 

survey_result = Connectwise::SurveyResult.new # SurveyResult | 


begin
  result = api_instance.service_surveys_id_results_result_id_put(id, result_id, survey_result)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling SurveyResultsApi->service_surveys_id_results_result_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **result_id** | **Integer**|  | 
 **survey_result** | [**SurveyResult**](SurveyResult.md)|  | 

### Return type

[**SurveyResult**](SurveyResult.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




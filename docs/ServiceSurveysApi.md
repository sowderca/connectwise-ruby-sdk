# ConnectWise::ServiceSurveysApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_surveys_count_get**](ServiceSurveysApi.md#service_surveys_count_get) | **GET** /service/surveys/count | 
[**service_surveys_get**](ServiceSurveysApi.md#service_surveys_get) | **GET** /service/surveys | 
[**service_surveys_id_delete**](ServiceSurveysApi.md#service_surveys_id_delete) | **DELETE** /service/surveys/{id} | 
[**service_surveys_id_get**](ServiceSurveysApi.md#service_surveys_id_get) | **GET** /service/surveys/{id} | 
[**service_surveys_id_patch**](ServiceSurveysApi.md#service_surveys_id_patch) | **PATCH** /service/surveys/{id} | 
[**service_surveys_id_put**](ServiceSurveysApi.md#service_surveys_id_put) | **PUT** /service/surveys/{id} | 
[**service_surveys_post**](ServiceSurveysApi.md#service_surveys_post) | **POST** /service/surveys | 


# **service_surveys_count_get**
> Count service_surveys_count_get(opts)



Get Surveys Count

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

api_instance = ConnectWise::ServiceSurveysApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_surveys_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_count_get: #{e}"
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



# **service_surveys_get**
> Array&lt;ServiceSurvey&gt; service_surveys_get(opts)



Get Surveys

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

api_instance = ConnectWise::ServiceSurveysApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_surveys_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_get: #{e}"
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

[**Array&lt;ServiceSurvey&gt;**](ServiceSurvey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_delete**
> service_surveys_id_delete(id)



Delete Survey By Id

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

api_instance = ConnectWise::ServiceSurveysApi.new

id = 56 # Integer | 


begin
  api_instance.service_surveys_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_id_delete: #{e}"
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



# **service_surveys_id_get**
> ServiceSurvey service_surveys_id_get(id)



Get Survey By Id

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

api_instance = ConnectWise::ServiceSurveysApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_surveys_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ServiceSurvey**](ServiceSurvey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_patch**
> ServiceSurvey service_surveys_id_patch(id, operations)



Update Survey

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

api_instance = ConnectWise::ServiceSurveysApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_surveys_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceSurvey**](ServiceSurvey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_put**
> ServiceSurvey service_surveys_id_put(id, survey)



Replace Survey

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

api_instance = ConnectWise::ServiceSurveysApi.new

id = 56 # Integer | 

survey = ConnectWise::ServiceSurvey.new # ServiceSurvey | 


begin
  result = api_instance.service_surveys_id_put(id, survey)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey** | [**ServiceSurvey**](ServiceSurvey.md)|  | 

### Return type

[**ServiceSurvey**](ServiceSurvey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_post**
> ServiceSurvey service_surveys_post(survey)



Create Survey

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

api_instance = ConnectWise::ServiceSurveysApi.new

survey = ConnectWise::ServiceSurvey.new # ServiceSurvey | 


begin
  result = api_instance.service_surveys_post(survey)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveysApi->service_surveys_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey** | [**ServiceSurvey**](ServiceSurvey.md)|  | 

### Return type

[**ServiceSurvey**](ServiceSurvey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




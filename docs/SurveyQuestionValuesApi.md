# ConnectWise::SurveyQuestionValuesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_surveys_id_questions_survey_question_id_values_count_get**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_count_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values/count | 
[**system_surveys_id_questions_survey_question_id_values_get**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values | 
[**system_surveys_id_questions_survey_question_id_values_post**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_post) | **POST** /system/surveys/{id}/questions/{surveyQuestionId}/values | 
[**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete) | **DELETE** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} | 
[**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} | 
[**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch) | **PATCH** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} | 
[**system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put**](SurveyQuestionValuesApi.md#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put) | **PUT** /system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId} | 


# **system_surveys_id_questions_survey_question_id_values_count_get**
> Count system_surveys_id_questions_survey_question_id_values_count_get(survey_question_id, opts)



Get Survey Question Values Count

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

survey_question_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_count_get(survey_question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_values_get**
> Array&lt;SurveyQuestionValue&gt; system_surveys_id_questions_survey_question_id_values_get(survey_question_id, opts)



Get Survey Question Values

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

survey_question_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_get(survey_question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;SurveyQuestionValue&gt;**](SurveyQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_values_post**
> SurveyQuestionValue system_surveys_id_questions_survey_question_id_values_post(id, survey_question_id, survey_question_value)



Create Survey Question Value

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 

survey_question_value = ConnectWise::SurveyQuestionValue.new # SurveyQuestionValue | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_post(id, survey_question_id, survey_question_value)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 
 **survey_question_value** | [**SurveyQuestionValue**](SurveyQuestionValue.md)|  | 

### Return type

[**SurveyQuestionValue**](SurveyQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete**
> system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete(survey_question_id, survey_question_value_id)



Delete Survey Question Value By Id

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

survey_question_id = 56 # Integer | 

survey_question_value_id = 56 # Integer | 


begin
  api_instance.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete(survey_question_id, survey_question_value_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_question_id** | **Integer**|  | 
 **survey_question_value_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get**
> SurveyQuestionValue system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get(survey_question_id, survey_question_value_id)



Get Survey Question Value By Id

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

survey_question_id = 56 # Integer | 

survey_question_value_id = 56 # Integer | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get(survey_question_id, survey_question_value_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_question_id** | **Integer**|  | 
 **survey_question_value_id** | **Integer**|  | 

### Return type

[**SurveyQuestionValue**](SurveyQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch**
> SurveyQuestionValue system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch(id, survey_question_id, survey_question_value_id, operations)



Update Survey Question Value

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 

survey_question_value_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch(id, survey_question_id, survey_question_value_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 
 **survey_question_value_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SurveyQuestionValue**](SurveyQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put**
> SurveyQuestionValue system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put(id, survey_question_id, survey_question_value_id, survey_question_value)



Replace Survey Question Value

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

api_instance = ConnectWise::SurveyQuestionValuesApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 

survey_question_value_id = 56 # Integer | 

survey_question_value = ConnectWise::SurveyQuestionValue.new # SurveyQuestionValue | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put(id, survey_question_id, survey_question_value_id, survey_question_value)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionValuesApi->system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 
 **survey_question_value_id** | **Integer**|  | 
 **survey_question_value** | [**SurveyQuestionValue**](SurveyQuestionValue.md)|  | 

### Return type

[**SurveyQuestionValue**](SurveyQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::SurveyQuestionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_surveys_id_questions_get**](SurveyQuestionsApi.md#system_surveys_id_questions_get) | **GET** /system/surveys/{id}/questions | 
[**system_surveys_id_questions_post**](SurveyQuestionsApi.md#system_surveys_id_questions_post) | **POST** /system/surveys/{id}/questions | 
[**system_surveys_id_questions_survey_question_id_delete**](SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_delete) | **DELETE** /system/surveys/{id}/questions/{surveyQuestionId} | 
[**system_surveys_id_questions_survey_question_id_get**](SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_get) | **GET** /system/surveys/{id}/questions/{surveyQuestionId} | 
[**system_surveys_id_questions_survey_question_id_patch**](SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_patch) | **PATCH** /system/surveys/{id}/questions/{surveyQuestionId} | 
[**system_surveys_id_questions_survey_question_id_put**](SurveyQuestionsApi.md#system_surveys_id_questions_survey_question_id_put) | **PUT** /system/surveys/{id}/questions/{surveyQuestionId} | 


# **system_surveys_id_questions_get**
> Count system_surveys_id_questions_get(id, opts)



Get Survey Questions Count

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_surveys_id_questions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_get: #{e}"
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



# **system_surveys_id_questions_post**
> SurveyQuestion system_surveys_id_questions_post(id, survey_question)



Create Survey Question

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

survey_question = ConnectWise::SurveyQuestion.new # SurveyQuestion | 


begin
  result = api_instance.system_surveys_id_questions_post(id, survey_question)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question** | [**SurveyQuestion**](SurveyQuestion.md)|  | 

### Return type

[**SurveyQuestion**](SurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_delete**
> system_surveys_id_questions_survey_question_id_delete(id, survey_question_id)



Delete Survey Question By Id

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 


begin
  api_instance.system_surveys_id_questions_survey_question_id_delete(id, survey_question_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_survey_question_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_surveys_id_questions_survey_question_id_get**
> SurveyQuestion system_surveys_id_questions_survey_question_id_get(id, survey_question_id)



Get Survey Question By Id

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_get(id, survey_question_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_survey_question_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 

### Return type

[**SurveyQuestion**](SurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_patch**
> SurveyQuestion system_surveys_id_questions_survey_question_id_patch(id, survey_question_id, operations)



Update Survey Question

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_patch(id, survey_question_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_survey_question_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SurveyQuestion**](SurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_surveys_id_questions_survey_question_id_put**
> SurveyQuestion system_surveys_id_questions_survey_question_id_put(id, survey_question_id, survey_question)



Replace Survey Question

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

api_instance = ConnectWise::SurveyQuestionsApi.new

id = 56 # Integer | 

survey_question_id = 56 # Integer | 

survey_question = ConnectWise::SurveyQuestion.new # SurveyQuestion | 


begin
  result = api_instance.system_surveys_id_questions_survey_question_id_put(id, survey_question_id, survey_question)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyQuestionsApi->system_surveys_id_questions_survey_question_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **survey_question_id** | **Integer**|  | 
 **survey_question** | [**SurveyQuestion**](SurveyQuestion.md)|  | 

### Return type

[**SurveyQuestion**](SurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




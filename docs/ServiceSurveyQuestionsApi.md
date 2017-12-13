# ConnectWise::ServiceSurveyQuestionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_surveys_id_questions_count_get**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_count_get) | **GET** /service/surveys/{id}/questions/count | 
[**service_surveys_id_questions_get**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_get) | **GET** /service/surveys/{id}/questions | 
[**service_surveys_id_questions_post**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_post) | **POST** /service/surveys/{id}/questions | 
[**service_surveys_id_questions_question_id_delete**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_delete) | **DELETE** /service/surveys/{id}/questions/{questionId} | 
[**service_surveys_id_questions_question_id_get**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_get) | **GET** /service/surveys/{id}/questions/{questionId} | 
[**service_surveys_id_questions_question_id_patch**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_patch) | **PATCH** /service/surveys/{id}/questions/{questionId} | 
[**service_surveys_id_questions_question_id_put**](ServiceSurveyQuestionsApi.md#service_surveys_id_questions_question_id_put) | **PUT** /service/surveys/{id}/questions/{questionId} | 


# **service_surveys_id_questions_count_get**
> Count service_surveys_id_questions_count_get(id, opts)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_surveys_id_questions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_count_get: #{e}"
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



# **service_surveys_id_questions_get**
> Array&lt;ServiceSurveyQuestion&gt; service_surveys_id_questions_get(id, opts)



Get Survey Questions

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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

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
  result = api_instance.service_surveys_id_questions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_get: #{e}"
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

[**Array&lt;ServiceSurveyQuestion&gt;**](ServiceSurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_questions_post**
> ServiceSurveyQuestion service_surveys_id_questions_post(id, service_survey_question)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

service_survey_question = ConnectWise::ServiceSurveyQuestion.new # ServiceSurveyQuestion | 


begin
  result = api_instance.service_surveys_id_questions_post(id, service_survey_question)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **service_survey_question** | [**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)|  | 

### Return type

[**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_questions_question_id_delete**
> service_surveys_id_questions_question_id_delete(id, question_id)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 


begin
  api_instance.service_surveys_id_questions_question_id_delete(id, question_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_question_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_surveys_id_questions_question_id_get**
> ServiceSurveyQuestion service_surveys_id_questions_question_id_get(id, question_id)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 


begin
  result = api_instance.service_surveys_id_questions_question_id_get(id, question_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_question_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 

### Return type

[**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_id_questions_question_id_patch**
> ServiceSurveyQuestion service_surveys_id_questions_question_id_patch(id, question_id, operations)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_surveys_id_questions_question_id_patch(id, question_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_question_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_id_questions_question_id_put**
> ServiceSurveyQuestion service_surveys_id_questions_question_id_put(id, question_id, service_survey_question)



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

api_instance = ConnectWise::ServiceSurveyQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 

service_survey_question = ConnectWise::ServiceSurveyQuestion.new # ServiceSurveyQuestion | 


begin
  result = api_instance.service_surveys_id_questions_question_id_put(id, question_id, service_survey_question)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ServiceSurveyQuestionsApi->service_surveys_id_questions_question_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **service_survey_question** | [**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)|  | 

### Return type

[**ServiceSurveyQuestion**](ServiceSurveyQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




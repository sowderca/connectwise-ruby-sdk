# ConnectWise::SurveyOptionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_surveys_survey_id_questions_question_id_options_count_get**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_count_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options/count | 
[**service_surveys_survey_id_questions_question_id_options_get**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options | 
[**service_surveys_survey_id_questions_question_id_options_oid_delete**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_delete) | **DELETE** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} | 
[**service_surveys_survey_id_questions_question_id_options_oid_get**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_get) | **GET** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} | 
[**service_surveys_survey_id_questions_question_id_options_oid_patch**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_patch) | **PATCH** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} | 
[**service_surveys_survey_id_questions_question_id_options_oid_put**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_oid_put) | **PUT** /service/surveys/{surveyID}/questions/{questionID}/options/{oid} | 
[**service_surveys_survey_id_questions_question_id_options_post**](SurveyOptionsApi.md#service_surveys_survey_id_questions_question_id_options_post) | **POST** /service/surveys/{surveyID}/questions/{questionID}/options | 


# **service_surveys_survey_id_questions_question_id_options_count_get**
> Count service_surveys_survey_id_questions_question_id_options_count_get(survey_id, question_id, opts)



Get Survey Options Count

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_count_get(survey_id, question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_survey_id_questions_question_id_options_get**
> Array&lt;SurveyOption&gt; service_surveys_survey_id_questions_question_id_options_get(survey_id, question_id, opts)



Get Survey Options

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_get(survey_id, question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;SurveyOption&gt;**](SurveyOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_survey_id_questions_question_id_options_oid_delete**
> service_surveys_survey_id_questions_question_id_options_oid_delete(survey_id, question_id, oid)



Delete Survey Option By Id

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

oid = 56 # Integer | 


begin
  api_instance.service_surveys_survey_id_questions_question_id_options_oid_delete(survey_id, question_id, oid)
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_oid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **oid** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_surveys_survey_id_questions_question_id_options_oid_get**
> SurveyOption service_surveys_survey_id_questions_question_id_options_oid_get(survey_id, question_id, oid)



Get Survey Option By Id

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

oid = 56 # Integer | 


begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_oid_get(survey_id, question_id, oid)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_oid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **oid** | **Integer**|  | 

### Return type

[**SurveyOption**](SurveyOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_surveys_survey_id_questions_question_id_options_oid_patch**
> SurveyOption service_surveys_survey_id_questions_question_id_options_oid_patch(survey_id, question_id, oid, operations)



Update Survey Option

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

oid = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_oid_patch(survey_id, question_id, oid, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_oid_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **oid** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**SurveyOption**](SurveyOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_survey_id_questions_question_id_options_oid_put**
> SurveyOption service_surveys_survey_id_questions_question_id_options_oid_put(survey_id, question_id, oid, survey_option)



Replace Survey Option

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

oid = 56 # Integer | 

survey_option = ConnectWise::SurveyOption.new # SurveyOption | 


begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_oid_put(survey_id, question_id, oid, survey_option)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_oid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **oid** | **Integer**|  | 
 **survey_option** | [**SurveyOption**](SurveyOption.md)|  | 

### Return type

[**SurveyOption**](SurveyOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_surveys_survey_id_questions_question_id_options_post**
> SurveyOption service_surveys_survey_id_questions_question_id_options_post(survey_id, question_id, survey_option)



Create Survey Option

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

api_instance = ConnectWise::SurveyOptionsApi.new

survey_id = 56 # Integer | 

question_id = 56 # Integer | 

survey_option = ConnectWise::SurveyOption.new # SurveyOption | 


begin
  result = api_instance.service_surveys_survey_id_questions_question_id_options_post(survey_id, question_id, survey_option)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling SurveyOptionsApi->service_surveys_survey_id_questions_question_id_options_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **survey_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **survey_option** | [**SurveyOption**](SurveyOption.md)|  | 

### Return type

[**SurveyOption**](SurveyOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




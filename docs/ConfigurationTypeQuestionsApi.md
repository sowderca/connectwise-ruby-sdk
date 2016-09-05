# Connectwise::ConfigurationTypeQuestionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_configurations_types_id_questions_count_get**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_count_get) | **GET** /company/configurations/types/{id}/questions/count | 
[**company_configurations_types_id_questions_get**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_get) | **GET** /company/configurations/types/{id}/questions | 
[**company_configurations_types_id_questions_post**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_post) | **POST** /company/configurations/types/{id}/questions | 
[**company_configurations_types_id_questions_question_id_delete**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_delete) | **DELETE** /company/configurations/types/{id}/questions/{questionId} | 
[**company_configurations_types_id_questions_question_id_get**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_get) | **GET** /company/configurations/types/{id}/questions/{questionId} | 
[**company_configurations_types_id_questions_question_id_patch**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_patch) | **PATCH** /company/configurations/types/{id}/questions/{questionId} | 
[**company_configurations_types_id_questions_question_id_put**](ConfigurationTypeQuestionsApi.md#company_configurations_types_id_questions_question_id_put) | **PUT** /company/configurations/types/{id}/questions/{questionId} | 


# **company_configurations_types_id_questions_count_get**
> Count company_configurations_types_id_questions_count_get(id, opts)



Get Configuration Type Questions Count

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_configurations_types_id_questions_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_count_get: #{e}"
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



# **company_configurations_types_id_questions_get**
> Array&lt;ConfigurationTypeQuestion&gt; company_configurations_types_id_questions_get(id, opts)



Get Configuration Type Questions

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_configurations_types_id_questions_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_get: #{e}"
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

[**Array&lt;ConfigurationTypeQuestion&gt;**](ConfigurationTypeQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_id_questions_post**
> ConfigurationTypeQuestion company_configurations_types_id_questions_post(id, configuration_type_question)



Create Configuration Type Question

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

configuration_type_question = Connectwise::ConfigurationTypeQuestion.new # ConfigurationTypeQuestion | 


begin
  result = api_instance.company_configurations_types_id_questions_post(id, configuration_type_question)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration_type_question** | [**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)|  | 

### Return type

[**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_id_questions_question_id_delete**
> company_configurations_types_id_questions_question_id_delete(id, question_id)



Delete Configuration Type Question By Id

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 


begin
  api_instance.company_configurations_types_id_questions_question_id_delete(id, question_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_question_id_delete: #{e}"
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



# **company_configurations_types_id_questions_question_id_get**
> ConfigurationTypeQuestion company_configurations_types_id_questions_question_id_get(id, question_id)



Get Configuration Type Question By Id

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 


begin
  result = api_instance.company_configurations_types_id_questions_question_id_get(id, question_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_question_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 

### Return type

[**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_id_questions_question_id_patch**
> ConfigurationTypeQuestion company_configurations_types_id_questions_question_id_patch(id, question_id, operations)



Update Configuration Type Question

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_configurations_types_id_questions_question_id_patch(id, question_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_question_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_id_questions_question_id_put**
> ConfigurationTypeQuestion company_configurations_types_id_questions_question_id_put(id, question_id, configuration_type_question)



Replace Configuration Type Question

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

api_instance = Connectwise::ConfigurationTypeQuestionsApi.new

id = 56 # Integer | 

question_id = 56 # Integer | 

configuration_type_question = Connectwise::ConfigurationTypeQuestion.new # ConfigurationTypeQuestion | 


begin
  result = api_instance.company_configurations_types_id_questions_question_id_put(id, question_id, configuration_type_question)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionsApi->company_configurations_types_id_questions_question_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **configuration_type_question** | [**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)|  | 

### Return type

[**ConfigurationTypeQuestion**](ConfigurationTypeQuestion.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




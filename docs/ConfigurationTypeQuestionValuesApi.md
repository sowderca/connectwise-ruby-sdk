# ConnectWise::ConfigurationTypeQuestionValuesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/count | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_get**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete) | **DELETE** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get) | **GET** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch) | **PATCH** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put) | **PUT** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values/{Id} | 
[**company_configurations_types_configuration_type_idint_questions_question_idint_values_post**](ConfigurationTypeQuestionValuesApi.md#company_configurations_types_configuration_type_idint_questions_question_idint_values_post) | **POST** /company/configurations/types/{configurationTypeId:int}/questions/{questionId:int}/values | 


# **company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get**
> Count company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get(question_id, opts)



Get Configuration Type Question Values Count

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

question_id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get(question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_get**
> Array&lt;ConfigurationTypeQuestionValue&gt; company_configurations_types_configuration_type_idint_questions_question_idint_values_get(question_id, opts)



Get Configuration Type Question Values

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

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
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_get(question_id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**|  | 
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **childconditions** | **String**|  | [optional] 
 **customfieldconditions** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ConfigurationTypeQuestionValue&gt;**](ConfigurationTypeQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete**
> company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete(question_id, id)



Delete Configuration Type Question Value By Id

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

question_id = 56 # Integer | 

id = 56 # Integer | 


begin
  api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete(question_id, id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get**
> ConfigurationTypeQuestionValue company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get(question_id, id)



Get Configuration Type Question Value By Id

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

question_id = 56 # Integer | 

id = 56 # Integer | 


begin
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get(question_id, id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **question_id** | **Integer**|  | 
 **id** | **Integer**|  | 

### Return type

[**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch**
> ConfigurationTypeQuestionValue company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch(configuration_type_id, question_id, id, operations)



Update Configuration Type Question Value

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

configuration_type_id = 56 # Integer | 

question_id = 56 # Integer | 

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch(configuration_type_id, question_id, id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_type_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put**
> ConfigurationTypeQuestionValue company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put(configuration_type_id, question_id, id, configuration_type_question_value)



Replace Configuration Type Question Value

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

configuration_type_id = 56 # Integer | 

question_id = 56 # Integer | 

id = 56 # Integer | 

configuration_type_question_value = ConnectWise::ConfigurationTypeQuestionValue.new # ConfigurationTypeQuestionValue | 


begin
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put(configuration_type_id, question_id, id, configuration_type_question_value)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_type_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **id** | **Integer**|  | 
 **configuration_type_question_value** | [**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)|  | 

### Return type

[**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_configurations_types_configuration_type_idint_questions_question_idint_values_post**
> ConfigurationTypeQuestionValue company_configurations_types_configuration_type_idint_questions_question_idint_values_post(configuration_type_id, question_id, configuration_type_question_value)



Create Configuration Type Question Value

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

api_instance = ConnectWise::ConfigurationTypeQuestionValuesApi.new

configuration_type_id = 56 # Integer | 

question_id = 56 # Integer | 

configuration_type_question_value = ConnectWise::ConfigurationTypeQuestionValue.new # ConfigurationTypeQuestionValue | 


begin
  result = api_instance.company_configurations_types_configuration_type_idint_questions_question_idint_values_post(configuration_type_id, question_id, configuration_type_question_value)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ConfigurationTypeQuestionValuesApi->company_configurations_types_configuration_type_idint_questions_question_idint_values_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_type_id** | **Integer**|  | 
 **question_id** | **Integer**|  | 
 **configuration_type_question_value** | [**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)|  | 

### Return type

[**ConfigurationTypeQuestionValue**](ConfigurationTypeQuestionValue.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




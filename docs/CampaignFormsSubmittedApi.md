# ConnectWise::CampaignFormsSubmittedApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_id_forms_submitted_count_get**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_count_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/count | 
[**marketing_campaigns_id_forms_submitted_form_submitted_id_delete**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_delete) | **DELETE** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
[**marketing_campaigns_id_forms_submitted_form_submitted_id_get**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_get) | **GET** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
[**marketing_campaigns_id_forms_submitted_form_submitted_id_patch**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_patch) | **PATCH** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
[**marketing_campaigns_id_forms_submitted_form_submitted_id_put**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_form_submitted_id_put) | **PUT** /marketing/campaigns/{id}/formsSubmitted/{formSubmittedId} | 
[**marketing_campaigns_id_forms_submitted_get**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_get) | **GET** /marketing/campaigns/{id}/formsSubmitted | 
[**marketing_campaigns_id_forms_submitted_post**](CampaignFormsSubmittedApi.md#marketing_campaigns_id_forms_submitted_post) | **POST** /marketing/campaigns/{id}/formsSubmitted | 


# **marketing_campaigns_id_forms_submitted_count_get**
> Count marketing_campaigns_id_forms_submitted_count_get(id, opts)



Get Forms Submitted Count

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.marketing_campaigns_id_forms_submitted_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_count_get: #{e}"
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



# **marketing_campaigns_id_forms_submitted_form_submitted_id_delete**
> marketing_campaigns_id_forms_submitted_form_submitted_id_delete(id, form_submitted_id)



Delete Form Submitted By Id

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

form_submitted_id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_id_forms_submitted_form_submitted_id_delete(id, form_submitted_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_form_submitted_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **form_submitted_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_campaigns_id_forms_submitted_form_submitted_id_get**
> FormSubmitted marketing_campaigns_id_forms_submitted_form_submitted_id_get(id, form_submitted_id)



Get Form Submitted By Id

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

form_submitted_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_forms_submitted_form_submitted_id_get(id, form_submitted_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_form_submitted_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **form_submitted_id** | **Integer**|  | 

### Return type

[**FormSubmitted**](FormSubmitted.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_forms_submitted_form_submitted_id_patch**
> FormSubmitted marketing_campaigns_id_forms_submitted_form_submitted_id_patch(id, form_submitted_id, operations)



Update Form Submitted

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

form_submitted_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_id_forms_submitted_form_submitted_id_patch(id, form_submitted_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_form_submitted_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **form_submitted_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**FormSubmitted**](FormSubmitted.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_forms_submitted_form_submitted_id_put**
> FormSubmitted marketing_campaigns_id_forms_submitted_form_submitted_id_put(id, form_submitted_id, form_submitted)



Replace Form Submitted

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

form_submitted_id = 56 # Integer | 

form_submitted = ConnectWise::FormSubmitted.new # FormSubmitted | 


begin
  result = api_instance.marketing_campaigns_id_forms_submitted_form_submitted_id_put(id, form_submitted_id, form_submitted)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_form_submitted_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **form_submitted_id** | **Integer**|  | 
 **form_submitted** | [**FormSubmitted**](FormSubmitted.md)|  | 

### Return type

[**FormSubmitted**](FormSubmitted.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_forms_submitted_get**
> Array&lt;FormSubmitted&gt; marketing_campaigns_id_forms_submitted_get(id, opts)



Get Forms Submitted

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_forms_submitted_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_get: #{e}"
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

[**Array&lt;FormSubmitted&gt;**](FormSubmitted.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_forms_submitted_post**
> FormSubmitted marketing_campaigns_id_forms_submitted_post(id, form_submitted)



Create Form Submitted

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

api_instance = ConnectWise::CampaignFormsSubmittedApi.new

id = 56 # Integer | 

form_submitted = ConnectWise::FormSubmitted.new # FormSubmitted | 


begin
  result = api_instance.marketing_campaigns_id_forms_submitted_post(id, form_submitted)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CampaignFormsSubmittedApi->marketing_campaigns_id_forms_submitted_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **form_submitted** | [**FormSubmitted**](FormSubmitted.md)|  | 

### Return type

[**FormSubmitted**](FormSubmitted.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::ManagementEmailsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_emails_count_get**](ManagementEmailsApi.md#company_management_emails_count_get) | **GET** /company/managementEmails/count | 
[**company_management_emails_get**](ManagementEmailsApi.md#company_management_emails_get) | **GET** /company/managementEmails | 
[**company_management_emails_id_delete**](ManagementEmailsApi.md#company_management_emails_id_delete) | **DELETE** /company/managementEmails/{id} | 
[**company_management_emails_id_get**](ManagementEmailsApi.md#company_management_emails_id_get) | **GET** /company/managementEmails/{id} | 
[**company_management_emails_id_patch**](ManagementEmailsApi.md#company_management_emails_id_patch) | **PATCH** /company/managementEmails/{id} | 
[**company_management_emails_id_put**](ManagementEmailsApi.md#company_management_emails_id_put) | **PUT** /company/managementEmails/{id} | 
[**company_management_emails_post**](ManagementEmailsApi.md#company_management_emails_post) | **POST** /company/managementEmails | 


# **company_management_emails_count_get**
> Count company_management_emails_count_get(opts)



Get Management Email Count

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

api_instance = ConnectWise::ManagementEmailsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_emails_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_count_get: #{e}"
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



# **company_management_emails_get**
> Array&lt;ManagementEmail&gt; company_management_emails_get(opts)



Get Management Email

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

api_instance = ConnectWise::ManagementEmailsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_emails_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_get: #{e}"
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

[**Array&lt;ManagementEmail&gt;**](ManagementEmail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_emails_id_delete**
> company_management_emails_id_delete(id)



Delete Management Email By Id

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

api_instance = ConnectWise::ManagementEmailsApi.new

id = 56 # Integer | 


begin
  api_instance.company_management_emails_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_id_delete: #{e}"
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



# **company_management_emails_id_get**
> ManagementEmail company_management_emails_id_get(id)



Get Management Email By Id

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

api_instance = ConnectWise::ManagementEmailsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_management_emails_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ManagementEmail**](ManagementEmail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_emails_id_patch**
> ManagementEmail company_management_emails_id_patch(id, operations)



Update Management Email

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

api_instance = ConnectWise::ManagementEmailsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_emails_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementEmail**](ManagementEmail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_emails_id_put**
> ManagementEmail company_management_emails_id_put(id, management_email)



Replace Management Email

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

api_instance = ConnectWise::ManagementEmailsApi.new

id = 56 # Integer | 

management_email = ConnectWise::ManagementEmail.new # ManagementEmail | 


begin
  result = api_instance.company_management_emails_id_put(id, management_email)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_email** | [**ManagementEmail**](ManagementEmail.md)|  | 

### Return type

[**ManagementEmail**](ManagementEmail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_emails_post**
> ManagementEmail company_management_emails_post(management_email)



Create Management Email

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

api_instance = ConnectWise::ManagementEmailsApi.new

management_email = ConnectWise::ManagementEmail.new # ManagementEmail | 


begin
  result = api_instance.company_management_emails_post(management_email)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementEmailsApi->company_management_emails_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **management_email** | [**ManagementEmail**](ManagementEmail.md)|  | 

### Return type

[**ManagementEmail**](ManagementEmail.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# Connectwise::CampaignEmailsOpenedApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_id_emails_opened_count_get**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_count_get) | **GET** /marketing/campaigns/{id}/emailsOpened/count | 
[**marketing_campaigns_id_emails_opened_email_opened_id_delete**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_delete) | **DELETE** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
[**marketing_campaigns_id_emails_opened_email_opened_id_get**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_get) | **GET** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
[**marketing_campaigns_id_emails_opened_email_opened_id_patch**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_patch) | **PATCH** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
[**marketing_campaigns_id_emails_opened_email_opened_id_put**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_email_opened_id_put) | **PUT** /marketing/campaigns/{id}/emailsOpened/{emailOpenedId} | 
[**marketing_campaigns_id_emails_opened_get**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_get) | **GET** /marketing/campaigns/{id}/emailsOpened | 
[**marketing_campaigns_id_emails_opened_post**](CampaignEmailsOpenedApi.md#marketing_campaigns_id_emails_opened_post) | **POST** /marketing/campaigns/{id}/emailsOpened | 


# **marketing_campaigns_id_emails_opened_count_get**
> Count marketing_campaigns_id_emails_opened_count_get(id, opts)



Get Emails Opened Count

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_id_emails_opened_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_count_get: #{e}"
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



# **marketing_campaigns_id_emails_opened_email_opened_id_delete**
> marketing_campaigns_id_emails_opened_email_opened_id_delete(id, email_opened_id)



Delete Email Opened By Id

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

email_opened_id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_id_emails_opened_email_opened_id_delete(id, email_opened_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_email_opened_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_opened_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_campaigns_id_emails_opened_email_opened_id_get**
> EmailOpened marketing_campaigns_id_emails_opened_email_opened_id_get(id, email_opened_id)



Get Email Opened By Id

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

email_opened_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_emails_opened_email_opened_id_get(id, email_opened_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_email_opened_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_opened_id** | **Integer**|  | 

### Return type

[**EmailOpened**](EmailOpened.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_emails_opened_email_opened_id_patch**
> EmailOpened marketing_campaigns_id_emails_opened_email_opened_id_patch(id, email_opened_id, operations)



Update Email Opened

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

email_opened_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_id_emails_opened_email_opened_id_patch(id, email_opened_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_email_opened_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_opened_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**EmailOpened**](EmailOpened.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_emails_opened_email_opened_id_put**
> EmailOpened marketing_campaigns_id_emails_opened_email_opened_id_put(id, email_opened_id, email_opened)



Replace Email Opened

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

email_opened_id = 56 # Integer | 

email_opened = Connectwise::EmailOpened.new # EmailOpened | 


begin
  result = api_instance.marketing_campaigns_id_emails_opened_email_opened_id_put(id, email_opened_id, email_opened)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_email_opened_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_opened_id** | **Integer**|  | 
 **email_opened** | [**EmailOpened**](EmailOpened.md)|  | 

### Return type

[**EmailOpened**](EmailOpened.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_emails_opened_get**
> Array&lt;EmailOpened&gt; marketing_campaigns_id_emails_opened_get(id, opts)



Get Emails Opened

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_emails_opened_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_get: #{e}"
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

[**Array&lt;EmailOpened&gt;**](EmailOpened.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_emails_opened_post**
> EmailOpened marketing_campaigns_id_emails_opened_post(id, email_opened)



Create Email Opened

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

api_instance = Connectwise::CampaignEmailsOpenedApi.new

id = 56 # Integer | 

email_opened = Connectwise::EmailOpened.new # EmailOpened | 


begin
  result = api_instance.marketing_campaigns_id_emails_opened_post(id, email_opened)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignEmailsOpenedApi->marketing_campaigns_id_emails_opened_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **email_opened** | [**EmailOpened**](EmailOpened.md)|  | 

### Return type

[**EmailOpened**](EmailOpened.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




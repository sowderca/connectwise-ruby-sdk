# Connectwise::CampaignAuditsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketing_campaigns_id_audits_audit_id_delete**](CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_delete) | **DELETE** /marketing/campaigns/{id}/audits/{auditId} | 
[**marketing_campaigns_id_audits_audit_id_get**](CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_get) | **GET** /marketing/campaigns/{id}/audits/{auditId} | 
[**marketing_campaigns_id_audits_audit_id_patch**](CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_patch) | **PATCH** /marketing/campaigns/{id}/audits/{auditId} | 
[**marketing_campaigns_id_audits_audit_id_put**](CampaignAuditsApi.md#marketing_campaigns_id_audits_audit_id_put) | **PUT** /marketing/campaigns/{id}/audits/{auditId} | 
[**marketing_campaigns_id_audits_count_get**](CampaignAuditsApi.md#marketing_campaigns_id_audits_count_get) | **GET** /marketing/campaigns/{id}/audits/count | 
[**marketing_campaigns_id_audits_get**](CampaignAuditsApi.md#marketing_campaigns_id_audits_get) | **GET** /marketing/campaigns/{id}/audits | 
[**marketing_campaigns_id_audits_post**](CampaignAuditsApi.md#marketing_campaigns_id_audits_post) | **POST** /marketing/campaigns/{id}/audits | 


# **marketing_campaigns_id_audits_audit_id_delete**
> marketing_campaigns_id_audits_audit_id_delete(id, audit_id)



Delete Campaign Audit By Id

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

audit_id = 56 # Integer | 


begin
  api_instance.marketing_campaigns_id_audits_audit_id_delete(id, audit_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_audit_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **audit_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **marketing_campaigns_id_audits_audit_id_get**
> CampaignAudit marketing_campaigns_id_audits_audit_id_get(id, audit_id)



Get Campaign Audit By Id

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

audit_id = 56 # Integer | 


begin
  result = api_instance.marketing_campaigns_id_audits_audit_id_get(id, audit_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_audit_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **audit_id** | **Integer**|  | 

### Return type

[**CampaignAudit**](CampaignAudit.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_audits_audit_id_patch**
> CampaignAudit marketing_campaigns_id_audits_audit_id_patch(id, audit_id, operations)



Update Campaign Audit

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

audit_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.marketing_campaigns_id_audits_audit_id_patch(id, audit_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_audit_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **audit_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CampaignAudit**](CampaignAudit.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_audits_audit_id_put**
> CampaignAudit marketing_campaigns_id_audits_audit_id_put(id, audit_id, campaign_audit)



Replace Campaign Audit

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

audit_id = 56 # Integer | 

campaign_audit = Connectwise::CampaignAudit.new # CampaignAudit | 


begin
  result = api_instance.marketing_campaigns_id_audits_audit_id_put(id, audit_id, campaign_audit)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_audit_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **audit_id** | **Integer**|  | 
 **campaign_audit** | [**CampaignAudit**](CampaignAudit.md)|  | 

### Return type

[**CampaignAudit**](CampaignAudit.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **marketing_campaigns_id_audits_count_get**
> Count marketing_campaigns_id_audits_count_get(id, opts)



Get Campaign Audits Count

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.marketing_campaigns_id_audits_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_count_get: #{e}"
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



# **marketing_campaigns_id_audits_get**
> Array&lt;CampaignAudit&gt; marketing_campaigns_id_audits_get(id, opts)



Get Campaign Audits

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.marketing_campaigns_id_audits_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_get: #{e}"
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

[**Array&lt;CampaignAudit&gt;**](CampaignAudit.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **marketing_campaigns_id_audits_post**
> CampaignAudit marketing_campaigns_id_audits_post(id, campaign_audit)



Create Campaign Audit

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

api_instance = Connectwise::CampaignAuditsApi.new

id = 56 # Integer | 

campaign_audit = Connectwise::CampaignAudit.new # CampaignAudit | 


begin
  result = api_instance.marketing_campaigns_id_audits_post(id, campaign_audit)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling CampaignAuditsApi->marketing_campaigns_id_audits_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **campaign_audit** | [**CampaignAudit**](CampaignAudit.md)|  | 

### Return type

[**CampaignAudit**](CampaignAudit.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




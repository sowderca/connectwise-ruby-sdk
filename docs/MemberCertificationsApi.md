# ConnectWise::MemberCertificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_members_id_certifications_cert_id_delete**](MemberCertificationsApi.md#system_members_id_certifications_cert_id_delete) | **DELETE** /system/members/{id}/certifications/{certId} | 
[**system_members_id_certifications_cert_id_get**](MemberCertificationsApi.md#system_members_id_certifications_cert_id_get) | **GET** /system/members/{id}/certifications/{certId} | 
[**system_members_id_certifications_cert_id_patch**](MemberCertificationsApi.md#system_members_id_certifications_cert_id_patch) | **PATCH** /system/members/{id}/certifications/{certId} | 
[**system_members_id_certifications_cert_id_put**](MemberCertificationsApi.md#system_members_id_certifications_cert_id_put) | **PUT** /system/members/{id}/certifications/{certId} | 
[**system_members_id_certifications_count_get**](MemberCertificationsApi.md#system_members_id_certifications_count_get) | **GET** /system/members/{id}/certifications/count | 
[**system_members_id_certifications_get**](MemberCertificationsApi.md#system_members_id_certifications_get) | **GET** /system/members/{id}/certifications | 
[**system_members_id_certifications_post**](MemberCertificationsApi.md#system_members_id_certifications_post) | **POST** /system/members/{id}/certifications | 


# **system_members_id_certifications_cert_id_delete**
> system_members_id_certifications_cert_id_delete(id, cert_id)



Delete Member Certification By Id

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

cert_id = 56 # Integer | 


begin
  api_instance.system_members_id_certifications_cert_id_delete(id, cert_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_cert_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cert_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_members_id_certifications_cert_id_get**
> MemberCertification system_members_id_certifications_cert_id_get(id, cert_id)



Get Member Certification By Id

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

cert_id = 56 # Integer | 


begin
  result = api_instance.system_members_id_certifications_cert_id_get(id, cert_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_cert_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cert_id** | **Integer**|  | 

### Return type

[**MemberCertification**](MemberCertification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_certifications_cert_id_patch**
> MemberCertification system_members_id_certifications_cert_id_patch(id, cert_id, operations)



Update Member Certification

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

cert_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_members_id_certifications_cert_id_patch(id, cert_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_cert_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cert_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**MemberCertification**](MemberCertification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_certifications_cert_id_put**
> MemberCertification system_members_id_certifications_cert_id_put(id, cert_id, member_certification)



Replace Member Certification

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

cert_id = 56 # Integer | 

member_certification = ConnectWise::MemberCertification.new # MemberCertification | 


begin
  result = api_instance.system_members_id_certifications_cert_id_put(id, cert_id, member_certification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_cert_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **cert_id** | **Integer**|  | 
 **member_certification** | [**MemberCertification**](MemberCertification.md)|  | 

### Return type

[**MemberCertification**](MemberCertification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_members_id_certifications_count_get**
> Count system_members_id_certifications_count_get(id, opts)



Get Member Certifications Count

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_members_id_certifications_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_count_get: #{e}"
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



# **system_members_id_certifications_get**
> Array&lt;MemberCertification&gt; system_members_id_certifications_get(id, opts)



Get Member Certifications

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

api_instance = ConnectWise::MemberCertificationsApi.new

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
  result = api_instance.system_members_id_certifications_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_get: #{e}"
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

[**Array&lt;MemberCertification&gt;**](MemberCertification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_members_id_certifications_post**
> MemberCertification system_members_id_certifications_post(id, member_certification)



Create Member Certification

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

api_instance = ConnectWise::MemberCertificationsApi.new

id = 56 # Integer | 

member_certification = ConnectWise::MemberCertification.new # MemberCertification | 


begin
  result = api_instance.system_members_id_certifications_post(id, member_certification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MemberCertificationsApi->system_members_id_certifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **member_certification** | [**MemberCertification**](MemberCertification.md)|  | 

### Return type

[**MemberCertification**](MemberCertification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::CertificationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_certifications_count_get**](CertificationsApi.md#system_certifications_count_get) | **GET** /system/certifications/count | 
[**system_certifications_get**](CertificationsApi.md#system_certifications_get) | **GET** /system/certifications | 
[**system_certifications_id_delete**](CertificationsApi.md#system_certifications_id_delete) | **DELETE** /system/certifications/{id} | 
[**system_certifications_id_get**](CertificationsApi.md#system_certifications_id_get) | **GET** /system/certifications/{id} | 
[**system_certifications_id_patch**](CertificationsApi.md#system_certifications_id_patch) | **PATCH** /system/certifications/{id} | 
[**system_certifications_id_put**](CertificationsApi.md#system_certifications_id_put) | **PUT** /system/certifications/{id} | 
[**system_certifications_post**](CertificationsApi.md#system_certifications_post) | **POST** /system/certifications | 


# **system_certifications_count_get**
> Count system_certifications_count_get(opts)



Get Certification Count

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

api_instance = ConnectWise::CertificationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_certifications_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_count_get: #{e}"
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



# **system_certifications_get**
> Array&lt;Certification&gt; system_certifications_get(opts)



Get Certification

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

api_instance = ConnectWise::CertificationsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_certifications_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_get: #{e}"
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

[**Array&lt;Certification&gt;**](Certification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_certifications_id_delete**
> system_certifications_id_delete(id)



Delete Certification By Id

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

api_instance = ConnectWise::CertificationsApi.new

id = 56 # Integer | 


begin
  api_instance.system_certifications_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_id_delete: #{e}"
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



# **system_certifications_id_get**
> Certification system_certifications_id_get(id)



Get Certification By Id

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

api_instance = ConnectWise::CertificationsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_certifications_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Certification**](Certification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_certifications_id_patch**
> Certification system_certifications_id_patch(id, operations)



Update Certification

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

api_instance = ConnectWise::CertificationsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_certifications_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Certification**](Certification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_certifications_id_put**
> Certification system_certifications_id_put(id, certification)



Replace Certification

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

api_instance = ConnectWise::CertificationsApi.new

id = 56 # Integer | 

certification = ConnectWise::Certification.new # Certification | 


begin
  result = api_instance.system_certifications_id_put(id, certification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **certification** | [**Certification**](Certification.md)|  | 

### Return type

[**Certification**](Certification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_certifications_post**
> Certification system_certifications_post(certification)



Create Certification

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

api_instance = ConnectWise::CertificationsApi.new

certification = ConnectWise::Certification.new # Certification | 


begin
  result = api_instance.system_certifications_post(certification)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CertificationsApi->system_certifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certification** | [**Certification**](Certification.md)|  | 

### Return type

[**Certification**](Certification.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




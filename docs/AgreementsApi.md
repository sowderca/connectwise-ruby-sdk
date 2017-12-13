# ConnectWise::AgreementsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_count_get**](AgreementsApi.md#finance_agreements_count_get) | **GET** /finance/agreements/count | 
[**finance_agreements_get**](AgreementsApi.md#finance_agreements_get) | **GET** /finance/agreements | 
[**finance_agreements_id_configurations_configuration_id_delete**](AgreementsApi.md#finance_agreements_id_configurations_configuration_id_delete) | **DELETE** /finance/agreements/{id}/configurations/{configurationId} | 
[**finance_agreements_id_configurations_configuration_id_get**](AgreementsApi.md#finance_agreements_id_configurations_configuration_id_get) | **GET** /finance/agreements/{id}/configurations/{configurationId} | 
[**finance_agreements_id_configurations_count_get**](AgreementsApi.md#finance_agreements_id_configurations_count_get) | **GET** /finance/agreements/{id}/configurations/count | 
[**finance_agreements_id_configurations_get**](AgreementsApi.md#finance_agreements_id_configurations_get) | **GET** /finance/agreements/{id}/configurations | 
[**finance_agreements_id_configurations_post**](AgreementsApi.md#finance_agreements_id_configurations_post) | **POST** /finance/agreements/{id}/configurations | 
[**finance_agreements_id_delete**](AgreementsApi.md#finance_agreements_id_delete) | **DELETE** /finance/agreements/{id} | 
[**finance_agreements_id_get**](AgreementsApi.md#finance_agreements_id_get) | **GET** /finance/agreements/{id} | 
[**finance_agreements_id_patch**](AgreementsApi.md#finance_agreements_id_patch) | **PATCH** /finance/agreements/{id} | 
[**finance_agreements_id_put**](AgreementsApi.md#finance_agreements_id_put) | **PUT** /finance/agreements/{id} | 
[**finance_agreements_post**](AgreementsApi.md#finance_agreements_post) | **POST** /finance/agreements | 


# **finance_agreements_count_get**
> Count finance_agreements_count_get(opts)



Get Agreements Count

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

api_instance = ConnectWise::AgreementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_get**
> Array&lt;Agreement&gt; finance_agreements_get(opts)



Get Agreements

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

api_instance = ConnectWise::AgreementsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_get: #{e}"
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

[**Array&lt;Agreement&gt;**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_configurations_configuration_id_delete**
> finance_agreements_id_configurations_configuration_id_delete(id, configuration_id)



Delete Configuration Association

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

configuration_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_configurations_configuration_id_delete(id, configuration_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_configurations_configuration_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_configurations_configuration_id_get**
> ConfigurationReference finance_agreements_id_configurations_configuration_id_get(id, configuration_id)



Get Configuration Association

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

configuration_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_configurations_configuration_id_get(id, configuration_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_configurations_configuration_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration_id** | **Integer**|  | 

### Return type

[**ConfigurationReference**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_configurations_count_get**
> Count finance_agreements_id_configurations_count_get(id)



Get Agreement Configurations Count

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_configurations_count_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_configurations_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_configurations_get**
> Array&lt;ConfigurationReference&gt; finance_agreements_id_configurations_get(id, opts)



Get Agreement Configurations

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

opts = { 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_id_configurations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_configurations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;ConfigurationReference&gt;**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_configurations_post**
> ConfigurationReference finance_agreements_id_configurations_post(id, configuration)



Create Configuration Association

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

configuration = ConnectWise::ConfigurationReference.new # ConfigurationReference | 


begin
  result = api_instance.finance_agreements_id_configurations_post(id, configuration)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_configurations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **configuration** | [**ConfigurationReference**](ConfigurationReference.md)|  | 

### Return type

[**ConfigurationReference**](ConfigurationReference.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_delete**
> finance_agreements_id_delete(id)



Delete Agreement By Id

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_delete: #{e}"
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



# **finance_agreements_id_get**
> Agreement finance_agreements_id_get(id)



Get Agreement By Id

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Agreement**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_patch**
> Agreement finance_agreements_id_patch(id, operations)



Update Agreement

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Agreement**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_put**
> Agreement finance_agreements_id_put(id, agreement)



Replace Agreement

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

api_instance = ConnectWise::AgreementsApi.new

id = 56 # Integer | 

agreement = ConnectWise::Agreement.new # Agreement | 


begin
  result = api_instance.finance_agreements_id_put(id, agreement)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **agreement** | [**Agreement**](Agreement.md)|  | 

### Return type

[**Agreement**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_post**
> Agreement finance_agreements_post(agreement)



Create Agreement

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

api_instance = ConnectWise::AgreementsApi.new

agreement = ConnectWise::Agreement.new # Agreement | 


begin
  result = api_instance.finance_agreements_post(agreement)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementsApi->finance_agreements_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agreement** | [**Agreement**](Agreement.md)|  | 

### Return type

[**Agreement**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




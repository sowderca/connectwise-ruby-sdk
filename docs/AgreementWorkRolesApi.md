# Connectwise::AgreementWorkRolesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_workroles_count_get**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_count_get) | **GET** /finance/agreements/{id}/workroles/count | 
[**finance_agreements_id_workroles_get**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_get) | **GET** /finance/agreements/{id}/workroles | 
[**finance_agreements_id_workroles_post**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_post) | **POST** /finance/agreements/{id}/workroles | 
[**finance_agreements_id_workroles_work_role_id_delete**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_delete) | **DELETE** /finance/agreements/{id}/workroles/{workRoleId} | 
[**finance_agreements_id_workroles_work_role_id_get**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_get) | **GET** /finance/agreements/{id}/workroles/{workRoleId} | 
[**finance_agreements_id_workroles_work_role_id_patch**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_patch) | **PATCH** /finance/agreements/{id}/workroles/{workRoleId} | 
[**finance_agreements_id_workroles_work_role_id_put**](AgreementWorkRolesApi.md#finance_agreements_id_workroles_work_role_id_put) | **PUT** /finance/agreements/{id}/workroles/{workRoleId} | 


# **finance_agreements_id_workroles_count_get**
> Count finance_agreements_id_workroles_count_get(id, opts)



Get Work Roles Count

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_agreements_id_workroles_count_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_count_get: #{e}"
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



# **finance_agreements_id_workroles_get**
> Array&lt;AgreementWorkRole&gt; finance_agreements_id_workroles_get(id, opts)



Get Work Roles

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.finance_agreements_id_workroles_get(id, opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_get: #{e}"
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

[**Array&lt;AgreementWorkRole&gt;**](AgreementWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_workroles_post**
> AgreementWorkRole finance_agreements_id_workroles_post(id, work_role)



Create Work Role

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

work_role = Connectwise::AgreementWorkRole.new # AgreementWorkRole | 


begin
  result = api_instance.finance_agreements_id_workroles_post(id, work_role)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role** | [**AgreementWorkRole**](AgreementWorkRole.md)|  | 

### Return type

[**AgreementWorkRole**](AgreementWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_workroles_work_role_id_delete**
> finance_agreements_id_workroles_work_role_id_delete(id, work_role_id)



Delete Work Role By Id

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

work_role_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_workroles_work_role_id_delete(id, work_role_id)
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_work_role_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_workroles_work_role_id_get**
> AgreementWorkRole finance_agreements_id_workroles_work_role_id_get(id, work_role_id)



Get Work Role By Id

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

work_role_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_workroles_work_role_id_get(id, work_role_id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_work_role_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_id** | **Integer**|  | 

### Return type

[**AgreementWorkRole**](AgreementWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_workroles_work_role_id_patch**
> AgreementWorkRole finance_agreements_id_workroles_work_role_id_patch(id, work_role_id, operations)



Update Work Role

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

work_role_id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_workroles_work_role_id_patch(id, work_role_id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_work_role_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**AgreementWorkRole**](AgreementWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_workroles_work_role_id_put**
> AgreementWorkRole finance_agreements_id_workroles_work_role_id_put(id, work_role_id, work_role)



Replace Work Role

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

api_instance = Connectwise::AgreementWorkRolesApi.new

id = 56 # Integer | 

work_role_id = 56 # Integer | 

work_role = Connectwise::AgreementWorkRole.new # AgreementWorkRole | 


begin
  result = api_instance.finance_agreements_id_workroles_work_role_id_put(id, work_role_id, work_role)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling AgreementWorkRolesApi->finance_agreements_id_workroles_work_role_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_id** | **Integer**|  | 
 **work_role** | [**AgreementWorkRole**](AgreementWorkRole.md)|  | 

### Return type

[**AgreementWorkRole**](AgreementWorkRole.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




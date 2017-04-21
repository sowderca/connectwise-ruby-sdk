# ConnectWise::AgreementBoardDefaultsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_agreements_id_board_defaults_board_default_id_delete**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_delete) | **DELETE** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
[**finance_agreements_id_board_defaults_board_default_id_get**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_get) | **GET** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
[**finance_agreements_id_board_defaults_board_default_id_patch**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_patch) | **PATCH** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
[**finance_agreements_id_board_defaults_board_default_id_put**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_board_default_id_put) | **PUT** /finance/agreements/{id}/boardDefaults/{boardDefaultId} | 
[**finance_agreements_id_board_defaults_count_get**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_count_get) | **GET** /finance/agreements/{id}/boardDefaults/count | 
[**finance_agreements_id_board_defaults_get**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_get) | **GET** /finance/agreements/{id}/boardDefaults | 
[**finance_agreements_id_board_defaults_post**](AgreementBoardDefaultsApi.md#finance_agreements_id_board_defaults_post) | **POST** /finance/agreements/{id}/boardDefaults | 


# **finance_agreements_id_board_defaults_board_default_id_delete**
> finance_agreements_id_board_defaults_board_default_id_delete(id, board_default_id)



Delete Board Default By Id

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

board_default_id = 56 # Integer | 


begin
  api_instance.finance_agreements_id_board_defaults_board_default_id_delete(id, board_default_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_board_default_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_default_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_agreements_id_board_defaults_board_default_id_get**
> BoardDefault finance_agreements_id_board_defaults_board_default_id_get(id, board_default_id)



Get Board Default By Id

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

board_default_id = 56 # Integer | 


begin
  result = api_instance.finance_agreements_id_board_defaults_board_default_id_get(id, board_default_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_board_default_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_default_id** | **Integer**|  | 

### Return type

[**BoardDefault**](BoardDefault.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_board_defaults_board_default_id_patch**
> BoardDefault finance_agreements_id_board_defaults_board_default_id_patch(id, board_default_id, operations)



Update Board Default

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

board_default_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_agreements_id_board_defaults_board_default_id_patch(id, board_default_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_board_default_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_default_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**BoardDefault**](BoardDefault.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_board_defaults_board_default_id_put**
> BoardDefault finance_agreements_id_board_defaults_board_default_id_put(id, board_default_id, board_default)



Replace Board Default

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

board_default_id = 56 # Integer | 

board_default = ConnectWise::BoardDefault.new # BoardDefault | 


begin
  result = api_instance.finance_agreements_id_board_defaults_board_default_id_put(id, board_default_id, board_default)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_board_default_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_default_id** | **Integer**|  | 
 **board_default** | [**BoardDefault**](BoardDefault.md)|  | 

### Return type

[**BoardDefault**](BoardDefault.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_agreements_id_board_defaults_count_get**
> Count finance_agreements_id_board_defaults_count_get(id, opts)



Get Board Defaults Count

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.finance_agreements_id_board_defaults_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_count_get: #{e}"
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



# **finance_agreements_id_board_defaults_get**
> Array&lt;BoardDefault&gt; finance_agreements_id_board_defaults_get(id, opts)



Get Board Defaults

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

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
  result = api_instance.finance_agreements_id_board_defaults_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_get: #{e}"
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

[**Array&lt;BoardDefault&gt;**](BoardDefault.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_agreements_id_board_defaults_post**
> BoardDefault finance_agreements_id_board_defaults_post(id, board_default)



Create Board Default

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

api_instance = ConnectWise::AgreementBoardDefaultsApi.new

id = 56 # Integer | 

board_default = ConnectWise::BoardDefault.new # BoardDefault | 


begin
  result = api_instance.finance_agreements_id_board_defaults_post(id, board_default)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AgreementBoardDefaultsApi->finance_agreements_id_board_defaults_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_default** | [**BoardDefault**](BoardDefault.md)|  | 

### Return type

[**BoardDefault**](BoardDefault.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




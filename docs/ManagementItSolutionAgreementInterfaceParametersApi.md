# ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_it_solutions_id_management_products_count_get**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_count_get) | **GET** /company/managementItSolutions/{id}/managementProducts/count | 
[**company_management_it_solutions_id_management_products_get**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_get) | **GET** /company/managementItSolutions/{id}/managementProducts | 
[**company_management_it_solutions_id_management_products_management_product_id_delete**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_delete) | **DELETE** /company/managementItSolutions/{id}/managementProducts/{managementProductID} | 
[**company_management_it_solutions_id_management_products_management_product_id_get**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_get) | **GET** /company/managementItSolutions/{id}/managementProducts/{managementProductID} | 
[**company_management_it_solutions_id_management_products_management_product_id_patch**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_patch) | **PATCH** /company/managementItSolutions/{id}/managementProducts/{managementProductID} | 
[**company_management_it_solutions_id_management_products_management_product_id_put**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_management_product_id_put) | **PUT** /company/managementItSolutions/{id}/managementProducts/{managementProductID} | 
[**company_management_it_solutions_id_management_products_post**](ManagementItSolutionAgreementInterfaceParametersApi.md#company_management_it_solutions_id_management_products_post) | **POST** /company/managementItSolutions/{id}/managementProducts | 


# **company_management_it_solutions_id_management_products_count_get**
> Count company_management_it_solutions_id_management_products_count_get(id, opts)



Get Management Product Count

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_it_solutions_id_management_products_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_count_get: #{e}"
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



# **company_management_it_solutions_id_management_products_get**
> Array&lt;ManagementItSolutionAgreementInterfaceParameter&gt; company_management_it_solutions_id_management_products_get(id, opts)



Get Management Product

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

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
  result = api_instance.company_management_it_solutions_id_management_products_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_get: #{e}"
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

[**Array&lt;ManagementItSolutionAgreementInterfaceParameter&gt;**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_it_solutions_id_management_products_management_product_id_delete**
> ManagementItSolutionAgreementInterfaceParameter company_management_it_solutions_id_management_products_management_product_id_delete(id, management_product_id)



Delete Management Product

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

management_product_id = 56 # Integer | 


begin
  result = api_instance.company_management_it_solutions_id_management_products_management_product_id_delete(id, management_product_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_management_product_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_product_id** | **Integer**|  | 

### Return type

[**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_it_solutions_id_management_products_management_product_id_get**
> ManagementItSolutionAgreementInterfaceParameter company_management_it_solutions_id_management_products_management_product_id_get(id, management_product_id)



Get Management Product By Id

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

management_product_id = 56 # Integer | 


begin
  result = api_instance.company_management_it_solutions_id_management_products_management_product_id_get(id, management_product_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_management_product_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_product_id** | **Integer**|  | 

### Return type

[**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_it_solutions_id_management_products_management_product_id_patch**
> ManagementItSolutionAgreementInterfaceParameter company_management_it_solutions_id_management_products_management_product_id_patch(id, management_product_id, operations)



Management Product

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

management_product_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_it_solutions_id_management_products_management_product_id_patch(id, management_product_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_management_product_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_product_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_it_solutions_id_management_products_management_product_id_put**
> ManagementItSolutionAgreementInterfaceParameter company_management_it_solutions_id_management_products_management_product_id_put(id, management_product_id, management_product)



Replace Management Product

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

management_product_id = 56 # Integer | 

management_product = ConnectWise::ManagementItSolutionAgreementInterfaceParameter.new # ManagementItSolutionAgreementInterfaceParameter | 


begin
  result = api_instance.company_management_it_solutions_id_management_products_management_product_id_put(id, management_product_id, management_product)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_management_product_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_product_id** | **Integer**|  | 
 **management_product** | [**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)|  | 

### Return type

[**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_it_solutions_id_management_products_post**
> ManagementItSolutionAgreementInterfaceParameter company_management_it_solutions_id_management_products_post(id, management_product)



Create Management Product

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

api_instance = ConnectWise::ManagementItSolutionAgreementInterfaceParametersApi.new

id = 56 # Integer | 

management_product = ConnectWise::ManagementItSolutionAgreementInterfaceParameter.new # ManagementItSolutionAgreementInterfaceParameter | 


begin
  result = api_instance.company_management_it_solutions_id_management_products_post(id, management_product)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionAgreementInterfaceParametersApi->company_management_it_solutions_id_management_products_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_product** | [**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)|  | 

### Return type

[**ManagementItSolutionAgreementInterfaceParameter**](ManagementItSolutionAgreementInterfaceParameter.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




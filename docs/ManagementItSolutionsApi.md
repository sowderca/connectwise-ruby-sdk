# ConnectWise::ManagementItSolutionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_it_solutions_count_get**](ManagementItSolutionsApi.md#company_management_it_solutions_count_get) | **GET** /company/managementItSolutions/count | 
[**company_management_it_solutions_get**](ManagementItSolutionsApi.md#company_management_it_solutions_get) | **GET** /company/managementItSolutions | 
[**company_management_it_solutions_id_delete**](ManagementItSolutionsApi.md#company_management_it_solutions_id_delete) | **DELETE** /company/managementItSolutions/{id} | 
[**company_management_it_solutions_id_get**](ManagementItSolutionsApi.md#company_management_it_solutions_id_get) | **GET** /company/managementItSolutions/{id} | 
[**company_management_it_solutions_id_patch**](ManagementItSolutionsApi.md#company_management_it_solutions_id_patch) | **PATCH** /company/managementItSolutions/{id} | 
[**company_management_it_solutions_id_put**](ManagementItSolutionsApi.md#company_management_it_solutions_id_put) | **PUT** /company/managementItSolutions/{id} | 
[**company_management_it_solutions_post**](ManagementItSolutionsApi.md#company_management_it_solutions_post) | **POST** /company/managementItSolutions | 


# **company_management_it_solutions_count_get**
> Count company_management_it_solutions_count_get(opts)



Get Management It Solutions Count

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_it_solutions_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_count_get: #{e}"
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



# **company_management_it_solutions_get**
> Array&lt;ManagementItSolution&gt; company_management_it_solutions_get(opts)



Get Management It Solutions

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_it_solutions_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_get: #{e}"
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

[**Array&lt;ManagementItSolution&gt;**](ManagementItSolution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_it_solutions_id_delete**
> company_management_it_solutions_id_delete(id)



Delete Management It Solution By Id

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

id = 56 # Integer | 


begin
  api_instance.company_management_it_solutions_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_id_delete: #{e}"
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



# **company_management_it_solutions_id_get**
> ManagementItSolution company_management_it_solutions_id_get(id)



Get Management It Solution By Id

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_management_it_solutions_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ManagementItSolution**](ManagementItSolution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_it_solutions_id_patch**
> ManagementItSolution company_management_it_solutions_id_patch(id, operations)



Update Management It Solution

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_it_solutions_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementItSolution**](ManagementItSolution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_it_solutions_id_put**
> ManagementItSolution company_management_it_solutions_id_put(id, management_it_solution)



Replace Management It Solution

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

id = 56 # Integer | 

management_it_solution = ConnectWise::ManagementItSolution.new # ManagementItSolution | 


begin
  result = api_instance.company_management_it_solutions_id_put(id, management_it_solution)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_it_solution** | [**ManagementItSolution**](ManagementItSolution.md)|  | 

### Return type

[**ManagementItSolution**](ManagementItSolution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_it_solutions_post**
> ManagementItSolution company_management_it_solutions_post(management_it_solution)



Create Management It Solution

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

api_instance = ConnectWise::ManagementItSolutionsApi.new

management_it_solution = ConnectWise::ManagementItSolution.new # ManagementItSolution | 


begin
  result = api_instance.company_management_it_solutions_post(management_it_solution)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementItSolutionsApi->company_management_it_solutions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **management_it_solution** | [**ManagementItSolution**](ManagementItSolution.md)|  | 

### Return type

[**ManagementItSolution**](ManagementItSolution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




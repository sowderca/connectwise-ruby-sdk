# ConnectWise::CompanyGroupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_companies_id_groups_count_get**](CompanyGroupsApi.md#company_companies_id_groups_count_get) | **GET** /company/companies/{id}/groups/count | 
[**company_companies_id_groups_get**](CompanyGroupsApi.md#company_companies_id_groups_get) | **GET** /company/companies/{id}/groups | 
[**company_companies_id_groups_groupid_delete**](CompanyGroupsApi.md#company_companies_id_groups_groupid_delete) | **DELETE** /company/companies/{id}/groups/{groupid} | 
[**company_companies_id_groups_groupid_get**](CompanyGroupsApi.md#company_companies_id_groups_groupid_get) | **GET** /company/companies/{id}/groups/{groupid} | 
[**company_companies_id_groups_groupid_patch**](CompanyGroupsApi.md#company_companies_id_groups_groupid_patch) | **PATCH** /company/companies/{id}/groups/{groupid} | 
[**company_companies_id_groups_groupid_put**](CompanyGroupsApi.md#company_companies_id_groups_groupid_put) | **PUT** /company/companies/{id}/groups/{groupid} | 
[**company_companies_id_groups_post**](CompanyGroupsApi.md#company_companies_id_groups_post) | **POST** /company/companies/{id}/groups | 


# **company_companies_id_groups_count_get**
> Count company_companies_id_groups_count_get(id, opts)



Get Company Groups Count

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_companies_id_groups_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_count_get: #{e}"
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



# **company_companies_id_groups_get**
> Array&lt;CompanyGroup&gt; company_companies_id_groups_get(id, opts)



Get Company Groups

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

api_instance = ConnectWise::CompanyGroupsApi.new

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
  result = api_instance.company_companies_id_groups_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_get: #{e}"
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

[**Array&lt;CompanyGroup&gt;**](CompanyGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_groups_groupid_delete**
> company_companies_id_groups_groupid_delete(id, groupid)



Delete Company Group By Id

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 


begin
  api_instance.company_companies_id_groups_groupid_delete(id, groupid)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_groupid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_companies_id_groups_groupid_get**
> CompanyGroup company_companies_id_groups_groupid_get(id, groupid)



Get Company Group By Id

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 


begin
  result = api_instance.company_companies_id_groups_groupid_get(id, groupid)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_groupid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 

### Return type

[**CompanyGroup**](CompanyGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_companies_id_groups_groupid_patch**
> CompanyGroup company_companies_id_groups_groupid_patch(id, groupid, operations)



Update Company Group

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_companies_id_groups_groupid_patch(id, groupid, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_groupid_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**CompanyGroup**](CompanyGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_groups_groupid_put**
> CompanyGroup company_companies_id_groups_groupid_put(id, groupid, company_group)



Replace Company Group

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

groupid = 56 # Integer | 

company_group = ConnectWise::CompanyGroup.new # CompanyGroup | 


begin
  result = api_instance.company_companies_id_groups_groupid_put(id, groupid, company_group)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_groupid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **groupid** | **Integer**|  | 
 **company_group** | [**CompanyGroup**](CompanyGroup.md)|  | 

### Return type

[**CompanyGroup**](CompanyGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_companies_id_groups_post**
> CompanyGroup company_companies_id_groups_post(id, company_group)



Create Company Group

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

api_instance = ConnectWise::CompanyGroupsApi.new

id = 56 # Integer | 

company_group = ConnectWise::CompanyGroup.new # CompanyGroup | 


begin
  result = api_instance.company_companies_id_groups_post(id, company_group)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyGroupsApi->company_companies_id_groups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **company_group** | [**CompanyGroup**](CompanyGroup.md)|  | 

### Return type

[**CompanyGroup**](CompanyGroup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::CompanyPickerItemsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_company_picker_items_clear_post**](CompanyPickerItemsApi.md#company_company_picker_items_clear_post) | **POST** /company/companyPickerItems/clear | 
[**company_company_picker_items_count_get**](CompanyPickerItemsApi.md#company_company_picker_items_count_get) | **GET** /company/companyPickerItems/count | 
[**company_company_picker_items_get**](CompanyPickerItemsApi.md#company_company_picker_items_get) | **GET** /company/companyPickerItems | 
[**company_company_picker_items_id_delete**](CompanyPickerItemsApi.md#company_company_picker_items_id_delete) | **DELETE** /company/companyPickerItems/{id} | 
[**company_company_picker_items_id_get**](CompanyPickerItemsApi.md#company_company_picker_items_id_get) | **GET** /company/companyPickerItems/{id} | 
[**company_company_picker_items_post**](CompanyPickerItemsApi.md#company_company_picker_items_post) | **POST** /company/companyPickerItems | 


# **company_company_picker_items_clear_post**
> ClearPickerRequest company_company_picker_items_clear_post(opts)



Clear All Picker Items By Member

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

opts = { 
  member: "member_example", # String | 
  type: "type_example", # String | 
}

begin
  result = api_instance.company_company_picker_items_clear_post(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_clear_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **member** | **String**|  | [optional] 
 **type** | **String**|  | [optional] 

### Return type

[**ClearPickerRequest**](ClearPickerRequest.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_company_picker_items_count_get**
> Count company_company_picker_items_count_get(opts)



Get Company Picker Items Count

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_company_picker_items_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_count_get: #{e}"
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



# **company_company_picker_items_get**
> Array&lt;CompanyPickerItem&gt; company_company_picker_items_get(opts)



Get Company Picker Items

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_company_picker_items_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_get: #{e}"
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

[**Array&lt;CompanyPickerItem&gt;**](CompanyPickerItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_company_picker_items_id_delete**
> company_company_picker_items_id_delete(id)



Delete Company Picker Item

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

id = 56 # Integer | 


begin
  api_instance.company_company_picker_items_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_id_delete: #{e}"
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



# **company_company_picker_items_id_get**
> CompanyPickerItem company_company_picker_items_id_get(id)



Get Company Picker Item By Id

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_company_picker_items_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**CompanyPickerItem**](CompanyPickerItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_company_picker_items_post**
> CompanyPickerItem company_company_picker_items_post(company_picker_item)



Add Company Picker Item

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

api_instance = ConnectWise::CompanyPickerItemsApi.new

company_picker_item = ConnectWise::CompanyPickerItem.new # CompanyPickerItem | 


begin
  result = api_instance.company_company_picker_items_post(company_picker_item)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling CompanyPickerItemsApi->company_company_picker_items_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_picker_item** | [**CompanyPickerItem**](CompanyPickerItem.md)|  | 

### Return type

[**CompanyPickerItem**](CompanyPickerItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




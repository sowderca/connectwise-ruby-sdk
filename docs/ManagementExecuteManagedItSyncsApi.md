# ConnectWise::ManagementExecuteManagedItSyncsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_id_execute_managed_it_sync_post**](ManagementExecuteManagedItSyncsApi.md#company_management_id_execute_managed_it_sync_post) | **POST** /company/management/{id}/executeManagedItSync | 


# **company_management_id_execute_managed_it_sync_post**
> SuccessResponse company_management_id_execute_managed_it_sync_post(opts)



Execute Managed It Sync

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

api_instance = ConnectWise::ManagementExecuteManagedItSyncsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_id_execute_managed_it_sync_post(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementExecuteManagedItSyncsApi->company_management_id_execute_managed_it_sync_post: #{e}"
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

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




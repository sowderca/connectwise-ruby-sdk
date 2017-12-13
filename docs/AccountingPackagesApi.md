# ConnectWise::AccountingPackagesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_accounting_packages_count_get**](AccountingPackagesApi.md#system_accounting_packages_count_get) | **GET** /system/accountingPackages/count | 
[**system_accounting_packages_get**](AccountingPackagesApi.md#system_accounting_packages_get) | **GET** /system/accountingPackages | 
[**system_accounting_packages_id_get**](AccountingPackagesApi.md#system_accounting_packages_id_get) | **GET** /system/accountingPackages/{id} | 


# **system_accounting_packages_count_get**
> Count system_accounting_packages_count_get(opts)



Get Accounting Packages Count

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

api_instance = ConnectWise::AccountingPackagesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_accounting_packages_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingPackagesApi->system_accounting_packages_count_get: #{e}"
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



# **system_accounting_packages_get**
> Array&lt;AccountingPackage&gt; system_accounting_packages_get(opts)



Get Accounting Packages

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

api_instance = ConnectWise::AccountingPackagesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_accounting_packages_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingPackagesApi->system_accounting_packages_get: #{e}"
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

[**Array&lt;AccountingPackage&gt;**](AccountingPackage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_accounting_packages_id_get**
> AccountingPackage system_accounting_packages_id_get(id)



Get Accounting Package By Id

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

api_instance = ConnectWise::AccountingPackagesApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_accounting_packages_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling AccountingPackagesApi->system_accounting_packages_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**AccountingPackage**](AccountingPackage.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




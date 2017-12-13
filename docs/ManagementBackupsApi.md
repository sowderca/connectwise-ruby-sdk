# ConnectWise::ManagementBackupsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_management_backups_count_get**](ManagementBackupsApi.md#company_management_backups_count_get) | **GET** /company/managementBackups/count | 
[**company_management_backups_get**](ManagementBackupsApi.md#company_management_backups_get) | **GET** /company/managementBackups | 
[**company_management_backups_id_delete**](ManagementBackupsApi.md#company_management_backups_id_delete) | **DELETE** /company/managementBackups/{id} | 
[**company_management_backups_id_get**](ManagementBackupsApi.md#company_management_backups_id_get) | **GET** /company/managementBackups/{id} | 
[**company_management_backups_id_patch**](ManagementBackupsApi.md#company_management_backups_id_patch) | **PATCH** /company/managementBackups/{id} | 
[**company_management_backups_id_put**](ManagementBackupsApi.md#company_management_backups_id_put) | **PUT** /company/managementBackups/{id} | 
[**company_management_backups_post**](ManagementBackupsApi.md#company_management_backups_post) | **POST** /company/managementBackups | 


# **company_management_backups_count_get**
> Count company_management_backups_count_get(opts)



Get Management Backup Count

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

api_instance = ConnectWise::ManagementBackupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.company_management_backups_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_count_get: #{e}"
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



# **company_management_backups_get**
> Array&lt;ManagementBackup&gt; company_management_backups_get(opts)



Get Management Backup

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

api_instance = ConnectWise::ManagementBackupsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_management_backups_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_get: #{e}"
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

[**Array&lt;ManagementBackup&gt;**](ManagementBackup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_backups_id_delete**
> company_management_backups_id_delete(id)



Delete Management Backup By Id

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

api_instance = ConnectWise::ManagementBackupsApi.new

id = 56 # Integer | 


begin
  api_instance.company_management_backups_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_id_delete: #{e}"
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



# **company_management_backups_id_get**
> ManagementBackup company_management_backups_id_get(id)



Get Management Backup By Id

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

api_instance = ConnectWise::ManagementBackupsApi.new

id = 56 # Integer | 


begin
  result = api_instance.company_management_backups_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ManagementBackup**](ManagementBackup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_management_backups_id_patch**
> ManagementBackup company_management_backups_id_patch(id, operations)



Update Management Backup

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

api_instance = ConnectWise::ManagementBackupsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.company_management_backups_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**ManagementBackup**](ManagementBackup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_backups_id_put**
> ManagementBackup company_management_backups_id_put(id, management_backup)



Replace Management Backup

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

api_instance = ConnectWise::ManagementBackupsApi.new

id = 56 # Integer | 

management_backup = ConnectWise::ManagementBackup.new # ManagementBackup | 


begin
  result = api_instance.company_management_backups_id_put(id, management_backup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **management_backup** | [**ManagementBackup**](ManagementBackup.md)|  | 

### Return type

[**ManagementBackup**](ManagementBackup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_management_backups_post**
> ManagementBackup company_management_backups_post(management_backup)



Create Management Backup

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

api_instance = ConnectWise::ManagementBackupsApi.new

management_backup = ConnectWise::ManagementBackup.new # ManagementBackup | 


begin
  result = api_instance.company_management_backups_post(management_backup)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ManagementBackupsApi->company_management_backups_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **management_backup** | [**ManagementBackup**](ManagementBackup.md)|  | 

### Return type

[**ManagementBackup**](ManagementBackup.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




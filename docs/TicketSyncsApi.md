# ConnectWise::TicketSyncsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_ticket_syncs_count_get**](TicketSyncsApi.md#system_ticket_syncs_count_get) | **GET** /system/ticketSyncs/count | 
[**system_ticket_syncs_get**](TicketSyncsApi.md#system_ticket_syncs_get) | **GET** /system/ticketSyncs | 
[**system_ticket_syncs_id_delete**](TicketSyncsApi.md#system_ticket_syncs_id_delete) | **DELETE** /system/ticketSyncs/{id} | 
[**system_ticket_syncs_id_get**](TicketSyncsApi.md#system_ticket_syncs_id_get) | **GET** /system/ticketSyncs/{id} | 
[**system_ticket_syncs_id_patch**](TicketSyncsApi.md#system_ticket_syncs_id_patch) | **PATCH** /system/ticketSyncs/{id} | 
[**system_ticket_syncs_id_put**](TicketSyncsApi.md#system_ticket_syncs_id_put) | **PUT** /system/ticketSyncs/{id} | 
[**system_ticket_syncs_post**](TicketSyncsApi.md#system_ticket_syncs_post) | **POST** /system/ticketSyncs | 


# **system_ticket_syncs_count_get**
> Count system_ticket_syncs_count_get(opts)



Get Ticket Syncs Count

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

api_instance = ConnectWise::TicketSyncsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_ticket_syncs_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_count_get: #{e}"
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



# **system_ticket_syncs_get**
> Array&lt;TicketSync&gt; system_ticket_syncs_get(opts)



Get Ticket Syncs

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

api_instance = ConnectWise::TicketSyncsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.system_ticket_syncs_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_get: #{e}"
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

[**Array&lt;TicketSync&gt;**](TicketSync.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_ticket_syncs_id_delete**
> system_ticket_syncs_id_delete(id)



Delete Ticket Sync By Id

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

api_instance = ConnectWise::TicketSyncsApi.new

id = 56 # Integer | 


begin
  api_instance.system_ticket_syncs_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_id_delete: #{e}"
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



# **system_ticket_syncs_id_get**
> TicketSync system_ticket_syncs_id_get(id)



Get Ticket Sync By Id

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

api_instance = ConnectWise::TicketSyncsApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_ticket_syncs_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**TicketSync**](TicketSync.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_ticket_syncs_id_patch**
> TicketSync system_ticket_syncs_id_patch(id, operations)



Update Ticket Sync

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

api_instance = ConnectWise::TicketSyncsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.system_ticket_syncs_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**TicketSync**](TicketSync.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_ticket_syncs_id_put**
> TicketSync system_ticket_syncs_id_put(id, ticket_sync)



Replace Ticket Sync

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

api_instance = ConnectWise::TicketSyncsApi.new

id = 56 # Integer | 

ticket_sync = ConnectWise::TicketSync.new # TicketSync | 


begin
  result = api_instance.system_ticket_syncs_id_put(id, ticket_sync)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **ticket_sync** | [**TicketSync**](TicketSync.md)|  | 

### Return type

[**TicketSync**](TicketSync.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **system_ticket_syncs_post**
> TicketSync system_ticket_syncs_post(ticket_sync)



Create Ticket Sync

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

api_instance = ConnectWise::TicketSyncsApi.new

ticket_sync = ConnectWise::TicketSync.new # TicketSync | 


begin
  result = api_instance.system_ticket_syncs_post(ticket_sync)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TicketSyncsApi->system_ticket_syncs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticket_sync** | [**TicketSync**](TicketSync.md)|  | 

### Return type

[**TicketSync**](TicketSync.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




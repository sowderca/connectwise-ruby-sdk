# ConnectWise::MenuEntryLocationsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_menu_entries_id_locations_count_get**](MenuEntryLocationsApi.md#system_menu_entries_id_locations_count_get) | **GET** /system/menuEntries/{id}/locations/count | 
[**system_menu_entries_id_locations_get**](MenuEntryLocationsApi.md#system_menu_entries_id_locations_get) | **GET** /system/menuEntries/{id}/locations | 
[**system_menu_entries_id_locations_location_id_delete**](MenuEntryLocationsApi.md#system_menu_entries_id_locations_location_id_delete) | **DELETE** /system/menuEntries/{id}/locations/{locationId} | 
[**system_menu_entries_id_locations_location_id_get**](MenuEntryLocationsApi.md#system_menu_entries_id_locations_location_id_get) | **GET** /system/menuEntries/{id}/locations/{locationId} | 
[**system_menu_entries_id_locations_post**](MenuEntryLocationsApi.md#system_menu_entries_id_locations_post) | **POST** /system/menuEntries/{id}/locations | 


# **system_menu_entries_id_locations_count_get**
> Count system_menu_entries_id_locations_count_get(id, opts)



Get Menu Entry Location Count

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

api_instance = ConnectWise::MenuEntryLocationsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.system_menu_entries_id_locations_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntryLocationsApi->system_menu_entries_id_locations_count_get: #{e}"
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



# **system_menu_entries_id_locations_get**
> Array&lt;MenuEntryLocation&gt; system_menu_entries_id_locations_get(id, opts)



Get Menu Entry Location

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

api_instance = ConnectWise::MenuEntryLocationsApi.new

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
  result = api_instance.system_menu_entries_id_locations_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntryLocationsApi->system_menu_entries_id_locations_get: #{e}"
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

[**Array&lt;MenuEntryLocation&gt;**](MenuEntryLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_menu_entries_id_locations_location_id_delete**
> system_menu_entries_id_locations_location_id_delete(id, location_id)



Delete Menu Entry Location By Id

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

api_instance = ConnectWise::MenuEntryLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  api_instance.system_menu_entries_id_locations_location_id_delete(id, location_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntryLocationsApi->system_menu_entries_id_locations_location_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **system_menu_entries_id_locations_location_id_get**
> MenuEntryLocation system_menu_entries_id_locations_location_id_get(id, location_id)



Get Menu Entry Location By Id

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

api_instance = ConnectWise::MenuEntryLocationsApi.new

id = 56 # Integer | 

location_id = 56 # Integer | 


begin
  result = api_instance.system_menu_entries_id_locations_location_id_get(id, location_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntryLocationsApi->system_menu_entries_id_locations_location_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **location_id** | **Integer**|  | 

### Return type

[**MenuEntryLocation**](MenuEntryLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **system_menu_entries_id_locations_post**
> MenuEntryLocation system_menu_entries_id_locations_post(id, menu_entry_location)



Create Menu Entry Location

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

api_instance = ConnectWise::MenuEntryLocationsApi.new

id = 56 # Integer | 

menu_entry_location = ConnectWise::MenuEntryLocation.new # MenuEntryLocation | 


begin
  result = api_instance.system_menu_entries_id_locations_post(id, menu_entry_location)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling MenuEntryLocationsApi->system_menu_entries_id_locations_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **menu_entry_location** | [**MenuEntryLocation**](MenuEntryLocation.md)|  | 

### Return type

[**MenuEntryLocation**](MenuEntryLocation.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




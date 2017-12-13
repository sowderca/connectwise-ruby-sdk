# ConnectWise::ImportsMassMaintenanceApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**system_import_mass_maintenance_id_post**](ImportsMassMaintenanceApi.md#system_import_mass_maintenance_id_post) | **POST** /system/importMassMaintenance/{id} | 


# **system_import_mass_maintenance_id_post**
> ImportMassMaintenance system_import_mass_maintenance_id_post(id)



Delete Import Mass Maintenance By Id

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

api_instance = ConnectWise::ImportsMassMaintenanceApi.new

id = 56 # Integer | 


begin
  result = api_instance.system_import_mass_maintenance_id_post(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ImportsMassMaintenanceApi->system_import_mass_maintenance_id_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**ImportMassMaintenance**](ImportMassMaintenance.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




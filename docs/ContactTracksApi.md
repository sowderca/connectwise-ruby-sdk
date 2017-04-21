# ConnectWise::ContactTracksApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**company_contacts_id_tracks_count_get**](ContactTracksApi.md#company_contacts_id_tracks_count_get) | **GET** /company/contacts/{id}/tracks/count | 
[**company_contacts_id_tracks_get**](ContactTracksApi.md#company_contacts_id_tracks_get) | **GET** /company/contacts/{id}/tracks | 
[**company_contacts_id_tracks_post**](ContactTracksApi.md#company_contacts_id_tracks_post) | **POST** /company/contacts/{id}/tracks | 
[**company_contacts_id_tracks_track_id_delete**](ContactTracksApi.md#company_contacts_id_tracks_track_id_delete) | **DELETE** /company/contacts/{id}/tracks/{trackId} | 
[**company_contacts_id_tracks_track_id_get**](ContactTracksApi.md#company_contacts_id_tracks_track_id_get) | **GET** /company/contacts/{id}/tracks/{trackId} | 


# **company_contacts_id_tracks_count_get**
> Count company_contacts_id_tracks_count_get(id, opts)



Get Tracks Count

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

api_instance = ConnectWise::ContactTracksApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
}

begin
  result = api_instance.company_contacts_id_tracks_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTracksApi->company_contacts_id_tracks_count_get: #{e}"
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



# **company_contacts_id_tracks_get**
> Array&lt;Track&gt; company_contacts_id_tracks_get(id, opts)



Get Tracks

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

api_instance = ConnectWise::ContactTracksApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example", # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.company_contacts_id_tracks_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTracksApi->company_contacts_id_tracks_get: #{e}"
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

[**Array&lt;Track&gt;**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **company_contacts_id_tracks_post**
> Track company_contacts_id_tracks_post(id, track)



Create Track

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

api_instance = ConnectWise::ContactTracksApi.new

id = 56 # Integer | 

track = ConnectWise::Track.new # Track | 


begin
  result = api_instance.company_contacts_id_tracks_post(id, track)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTracksApi->company_contacts_id_tracks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **track** | [**Track**](Track.md)|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **company_contacts_id_tracks_track_id_delete**
> company_contacts_id_tracks_track_id_delete(id, track_id)



Delete Track By Id

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

api_instance = ConnectWise::ContactTracksApi.new

id = 56 # Integer | 

track_id = 56 # Integer | 


begin
  api_instance.company_contacts_id_tracks_track_id_delete(id, track_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTracksApi->company_contacts_id_tracks_track_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **track_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **company_contacts_id_tracks_track_id_get**
> Track company_contacts_id_tracks_track_id_get(id, track_id)



Get Track By Id

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

api_instance = ConnectWise::ContactTracksApi.new

id = 56 # Integer | 

track_id = 56 # Integer | 


begin
  result = api_instance.company_contacts_id_tracks_track_id_get(id, track_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling ContactTracksApi->company_contacts_id_tracks_track_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **track_id** | **Integer**|  | 

### Return type

[**Track**](Track.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json




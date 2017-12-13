# ConnectWise::BoardExcludedMembersApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_boards_id_excluded_members_count_get**](BoardExcludedMembersApi.md#service_boards_id_excluded_members_count_get) | **GET** /service/boards/{id}/excludedMembers/count | 
[**service_boards_id_excluded_members_excluded_member_id_delete**](BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_delete) | **DELETE** /service/boards/{id}/excludedMembers/{excludedMemberId} | 
[**service_boards_id_excluded_members_excluded_member_id_get**](BoardExcludedMembersApi.md#service_boards_id_excluded_members_excluded_member_id_get) | **GET** /service/boards/{id}/excludedMembers/{excludedMemberId} | 
[**service_boards_id_excluded_members_get**](BoardExcludedMembersApi.md#service_boards_id_excluded_members_get) | **GET** /service/boards/{id}/excludedMembers | 
[**service_boards_id_excluded_members_post**](BoardExcludedMembersApi.md#service_boards_id_excluded_members_post) | **POST** /service/boards/{id}/excludedMembers | 


# **service_boards_id_excluded_members_count_get**
> Count service_boards_id_excluded_members_count_get(id, opts)



Get Excluded Members Count

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

api_instance = ConnectWise::BoardExcludedMembersApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_boards_id_excluded_members_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardExcludedMembersApi->service_boards_id_excluded_members_count_get: #{e}"
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



# **service_boards_id_excluded_members_excluded_member_id_delete**
> service_boards_id_excluded_members_excluded_member_id_delete(id, excluded_member_id)



Delete Excluded Member By Id

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

api_instance = ConnectWise::BoardExcludedMembersApi.new

id = 56 # Integer | 

excluded_member_id = 56 # Integer | 


begin
  api_instance.service_boards_id_excluded_members_excluded_member_id_delete(id, excluded_member_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardExcludedMembersApi->service_boards_id_excluded_members_excluded_member_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **excluded_member_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **service_boards_id_excluded_members_excluded_member_id_get**
> BoardExcludedMember service_boards_id_excluded_members_excluded_member_id_get(id, excluded_member_id)



Get Excluded Member By Id

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

api_instance = ConnectWise::BoardExcludedMembersApi.new

id = 56 # Integer | 

excluded_member_id = 56 # Integer | 


begin
  result = api_instance.service_boards_id_excluded_members_excluded_member_id_get(id, excluded_member_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardExcludedMembersApi->service_boards_id_excluded_members_excluded_member_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **excluded_member_id** | **Integer**|  | 

### Return type

[**BoardExcludedMember**](BoardExcludedMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_excluded_members_get**
> Array&lt;BoardExcludedMember&gt; service_boards_id_excluded_members_get(id, opts)



Get Excluded Members

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

api_instance = ConnectWise::BoardExcludedMembersApi.new

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
  result = api_instance.service_boards_id_excluded_members_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardExcludedMembersApi->service_boards_id_excluded_members_get: #{e}"
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

[**Array&lt;BoardExcludedMember&gt;**](BoardExcludedMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_boards_id_excluded_members_post**
> BoardExcludedMember service_boards_id_excluded_members_post(id, board_excluded_member)



Create Excluded Member

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

api_instance = ConnectWise::BoardExcludedMembersApi.new

id = 56 # Integer | 

board_excluded_member = ConnectWise::BoardExcludedMember.new # BoardExcludedMember | 


begin
  result = api_instance.service_boards_id_excluded_members_post(id, board_excluded_member)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling BoardExcludedMembersApi->service_boards_id_excluded_members_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **board_excluded_member** | [**BoardExcludedMember**](BoardExcludedMember.md)|  | 

### Return type

[**BoardExcludedMember**](BoardExcludedMember.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




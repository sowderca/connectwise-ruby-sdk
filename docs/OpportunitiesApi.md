# ConnectWise::OpportunitiesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_count_get**](OpportunitiesApi.md#sales_opportunities_count_get) | **GET** /sales/opportunities/count | 
[**sales_opportunities_get**](OpportunitiesApi.md#sales_opportunities_get) | **GET** /sales/opportunities | 
[**sales_opportunities_id_convert_to_agreement_post**](OpportunitiesApi.md#sales_opportunities_id_convert_to_agreement_post) | **POST** /sales/opportunities/{id}/convertToAgreement | 
[**sales_opportunities_id_convert_to_project_post**](OpportunitiesApi.md#sales_opportunities_id_convert_to_project_post) | **POST** /sales/opportunities/{id}/convertToProject | 
[**sales_opportunities_id_convert_to_sales_order_post**](OpportunitiesApi.md#sales_opportunities_id_convert_to_sales_order_post) | **POST** /sales/opportunities/{id}/convertToSalesOrder | 
[**sales_opportunities_id_convert_to_service_ticket_post**](OpportunitiesApi.md#sales_opportunities_id_convert_to_service_ticket_post) | **POST** /sales/opportunities/{id}/convertToServiceTicket | 
[**sales_opportunities_id_delete**](OpportunitiesApi.md#sales_opportunities_id_delete) | **DELETE** /sales/opportunities/{id} | 
[**sales_opportunities_id_get**](OpportunitiesApi.md#sales_opportunities_id_get) | **GET** /sales/opportunities/{id} | 
[**sales_opportunities_id_patch**](OpportunitiesApi.md#sales_opportunities_id_patch) | **PATCH** /sales/opportunities/{id} | 
[**sales_opportunities_id_put**](OpportunitiesApi.md#sales_opportunities_id_put) | **PUT** /sales/opportunities/{id} | 
[**sales_opportunities_post**](OpportunitiesApi.md#sales_opportunities_post) | **POST** /sales/opportunities | 


# **sales_opportunities_count_get**
> Count sales_opportunities_count_get(opts)



Get Opportunities Count

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

api_instance = ConnectWise::OpportunitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  custom_field_conditions: "custom_field_conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_count_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **custom_field_conditions** | **String**|  | [optional] 

### Return type

[**Count**](Count.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_get**
> Array&lt;Opportunity&gt; sales_opportunities_get(opts)



Get Opportunities

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

api_instance = ConnectWise::OpportunitiesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_get: #{e}"
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

[**Array&lt;Opportunity&gt;**](Opportunity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_convert_to_agreement_post**
> Agreement sales_opportunities_id_convert_to_agreement_post(id, conversion)



Convert Opportunity To Agreement

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

conversion = ConnectWise::OpportunityToAgreementConversion.new # OpportunityToAgreementConversion | 


begin
  result = api_instance.sales_opportunities_id_convert_to_agreement_post(id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_convert_to_agreement_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion** | [**OpportunityToAgreementConversion**](OpportunityToAgreementConversion.md)|  | 

### Return type

[**Agreement**](Agreement.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_convert_to_project_post**
> Project sales_opportunities_id_convert_to_project_post(id, conversion)



Convert Opportunity To Project

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

conversion = ConnectWise::OpportunityToProjectConversion.new # OpportunityToProjectConversion | 


begin
  result = api_instance.sales_opportunities_id_convert_to_project_post(id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_convert_to_project_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion** | [**OpportunityToProjectConversion**](OpportunityToProjectConversion.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_convert_to_sales_order_post**
> Order sales_opportunities_id_convert_to_sales_order_post(id, conversion)



Convert Opportunity To Sales Order

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

conversion = ConnectWise::OpportunityToSalesOrderConversion.new # OpportunityToSalesOrderConversion | 


begin
  result = api_instance.sales_opportunities_id_convert_to_sales_order_post(id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_convert_to_sales_order_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion** | [**OpportunityToSalesOrderConversion**](OpportunityToSalesOrderConversion.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_convert_to_service_ticket_post**
> Ticket sales_opportunities_id_convert_to_service_ticket_post(id, conversion)



Convert Opportunity To Service Ticket

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

conversion = ConnectWise::OpportunityToServiceTicketConversion.new # OpportunityToServiceTicketConversion | 


begin
  result = api_instance.sales_opportunities_id_convert_to_service_ticket_post(id, conversion)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_convert_to_service_ticket_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **conversion** | [**OpportunityToServiceTicketConversion**](OpportunityToServiceTicketConversion.md)|  | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_delete**
> sales_opportunities_id_delete(id)



Delete Opportunity By Id

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 


begin
  api_instance.sales_opportunities_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_delete: #{e}"
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



# **sales_opportunities_id_get**
> Opportunity sales_opportunities_id_get(id)



Get Opportunity By Id

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**Opportunity**](Opportunity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_id_patch**
> Opportunity sales_opportunities_id_patch(id, operations)



Update Opportunity

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**Opportunity**](Opportunity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_id_put**
> Opportunity sales_opportunities_id_put(id, opportunity)



Replace Opportunity

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

api_instance = ConnectWise::OpportunitiesApi.new

id = 56 # Integer | 

opportunity = ConnectWise::Opportunity.new # Opportunity | 


begin
  result = api_instance.sales_opportunities_id_put(id, opportunity)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **opportunity** | [**Opportunity**](Opportunity.md)|  | 

### Return type

[**Opportunity**](Opportunity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_post**
> Opportunity sales_opportunities_post(opportunity)



Create Opportunity

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

api_instance = ConnectWise::OpportunitiesApi.new

opportunity = ConnectWise::Opportunity.new # Opportunity | 


begin
  result = api_instance.sales_opportunities_post(opportunity)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunitiesApi->sales_opportunities_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opportunity** | [**Opportunity**](Opportunity.md)|  | 

### Return type

[**Opportunity**](Opportunity.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




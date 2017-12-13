# ConnectWise::OpportunityRatingsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sales_opportunities_ratings_count_get**](OpportunityRatingsApi.md#sales_opportunities_ratings_count_get) | **GET** /sales/opportunities/ratings/count | 
[**sales_opportunities_ratings_get**](OpportunityRatingsApi.md#sales_opportunities_ratings_get) | **GET** /sales/opportunities/ratings | 
[**sales_opportunities_ratings_id_delete**](OpportunityRatingsApi.md#sales_opportunities_ratings_id_delete) | **DELETE** /sales/opportunities/ratings/{id} | 
[**sales_opportunities_ratings_id_get**](OpportunityRatingsApi.md#sales_opportunities_ratings_id_get) | **GET** /sales/opportunities/ratings/{id} | 
[**sales_opportunities_ratings_id_patch**](OpportunityRatingsApi.md#sales_opportunities_ratings_id_patch) | **PATCH** /sales/opportunities/ratings/{id} | 
[**sales_opportunities_ratings_id_put**](OpportunityRatingsApi.md#sales_opportunities_ratings_id_put) | **PUT** /sales/opportunities/ratings/{id} | 
[**sales_opportunities_ratings_post**](OpportunityRatingsApi.md#sales_opportunities_ratings_post) | **POST** /sales/opportunities/ratings | 


# **sales_opportunities_ratings_count_get**
> Count sales_opportunities_ratings_count_get(opts)



Get Opportunity Ratings Count

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

api_instance = ConnectWise::OpportunityRatingsApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.sales_opportunities_ratings_count_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_count_get: #{e}"
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



# **sales_opportunities_ratings_get**
> Array&lt;OpportunityRating&gt; sales_opportunities_ratings_get(opts)



Get Opportunity Ratings

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

api_instance = ConnectWise::OpportunityRatingsApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  childconditions: "childconditions_example", # String | 
  customfieldconditions: "customfieldconditions_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.sales_opportunities_ratings_get(opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_get: #{e}"
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

[**Array&lt;OpportunityRating&gt;**](OpportunityRating.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_ratings_id_delete**
> sales_opportunities_ratings_id_delete(id)



Delete Opportunity Rating By Id

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

api_instance = ConnectWise::OpportunityRatingsApi.new

id = 56 # Integer | 


begin
  api_instance.sales_opportunities_ratings_id_delete(id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_id_delete: #{e}"
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



# **sales_opportunities_ratings_id_get**
> OpportunityRating sales_opportunities_ratings_id_get(id)



Get Opportunity Rating By Id

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

api_instance = ConnectWise::OpportunityRatingsApi.new

id = 56 # Integer | 


begin
  result = api_instance.sales_opportunities_ratings_id_get(id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**OpportunityRating**](OpportunityRating.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **sales_opportunities_ratings_id_patch**
> OpportunityRating sales_opportunities_ratings_id_patch(id, operations)



Update Opportunity Rating

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

api_instance = ConnectWise::OpportunityRatingsApi.new

id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.sales_opportunities_ratings_id_patch(id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**OpportunityRating**](OpportunityRating.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_ratings_id_put**
> OpportunityRating sales_opportunities_ratings_id_put(id, opportunity_rating)



Replace Opportunity Rating

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

api_instance = ConnectWise::OpportunityRatingsApi.new

id = 56 # Integer | 

opportunity_rating = ConnectWise::OpportunityRating.new # OpportunityRating | 


begin
  result = api_instance.sales_opportunities_ratings_id_put(id, opportunity_rating)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **opportunity_rating** | [**OpportunityRating**](OpportunityRating.md)|  | 

### Return type

[**OpportunityRating**](OpportunityRating.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sales_opportunities_ratings_post**
> OpportunityRating sales_opportunities_ratings_post(opportunity_rating)



Create Opportunity Rating

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

api_instance = ConnectWise::OpportunityRatingsApi.new

opportunity_rating = ConnectWise::OpportunityRating.new # OpportunityRating | 


begin
  result = api_instance.sales_opportunities_ratings_post(opportunity_rating)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling OpportunityRatingsApi->sales_opportunities_ratings_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **opportunity_rating** | [**OpportunityRating**](OpportunityRating.md)|  | 

### Return type

[**OpportunityRating**](OpportunityRating.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




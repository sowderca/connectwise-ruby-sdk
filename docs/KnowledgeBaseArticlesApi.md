# Connectwise::KnowledgeBaseArticlesApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_knowledge_base_articles_count_get**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_count_get) | **GET** /service/knowledgeBaseArticles/count | 
[**service_knowledge_base_articles_get**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_get) | **GET** /service/knowledgeBaseArticles | 
[**service_knowledge_base_articles_id_delete**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_delete) | **DELETE** /service/knowledgeBaseArticles/{id} | 
[**service_knowledge_base_articles_id_get**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_get) | **GET** /service/knowledgeBaseArticles/{id} | 
[**service_knowledge_base_articles_id_patch**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_patch) | **PATCH** /service/knowledgeBaseArticles/{id} | 
[**service_knowledge_base_articles_id_put**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_id_put) | **PUT** /service/knowledgeBaseArticles/{id} | 
[**service_knowledge_base_articles_post**](KnowledgeBaseArticlesApi.md#service_knowledge_base_articles_post) | **POST** /service/knowledgeBaseArticles | 


# **service_knowledge_base_articles_count_get**
> Count service_knowledge_base_articles_count_get(opts)



Get Knowledge Base Articles Count

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.service_knowledge_base_articles_count_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_count_get: #{e}"
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



# **service_knowledge_base_articles_get**
> Array&lt;KnowledgeBaseArticle&gt; service_knowledge_base_articles_get(opts)



Get Knowledge Base Articles

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

opts = { 
  conditions: "conditions_example" # String | 
  order_by: "order_by_example", # String | 
  page: 56, # Integer | 
  page_size: 56 # Integer | 
}

begin
  result = api_instance.service_knowledge_base_articles_get(opts)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditions** | **String**|  | [optional] 
 **order_by** | **String**|  | [optional] 
 **page** | **Integer**|  | [optional] 
 **page_size** | **Integer**|  | [optional] 

### Return type

[**Array&lt;KnowledgeBaseArticle&gt;**](KnowledgeBaseArticle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_knowledge_base_articles_id_delete**
> service_knowledge_base_articles_id_delete(id)



Delete Knowledge Base Article By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

id = 56 # Integer | 


begin
  api_instance.service_knowledge_base_articles_id_delete(id)
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_id_delete: #{e}"
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



# **service_knowledge_base_articles_id_get**
> KnowledgeBaseArticle service_knowledge_base_articles_id_get(id)



Get Knowledge Base Article By Id

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

id = 56 # Integer | 


begin
  result = api_instance.service_knowledge_base_articles_id_get(id)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 

### Return type

[**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **service_knowledge_base_articles_id_patch**
> KnowledgeBaseArticle service_knowledge_base_articles_id_patch(id, operations)



Update Knowledge Base Article

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

id = 56 # Integer | 

operations = [Connectwise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.service_knowledge_base_articles_id_patch(id, operations)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_knowledge_base_articles_id_put**
> KnowledgeBaseArticle service_knowledge_base_articles_id_put(id, knowledge_base_article)



Replace Knowledge Base Article

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

id = 56 # Integer | 

knowledge_base_article = Connectwise::KnowledgeBaseArticle.new # KnowledgeBaseArticle | 


begin
  result = api_instance.service_knowledge_base_articles_id_put(id, knowledge_base_article)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **knowledge_base_article** | [**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)|  | 

### Return type

[**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **service_knowledge_base_articles_post**
> KnowledgeBaseArticle service_knowledge_base_articles_post(knowledge_base_article)



Create Knowledge Base Article

### Example
```ruby
# load the gem
require 'connectwise-ruby-sdk'
# setup authorization
Connectwise.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Connectwise::KnowledgeBaseArticlesApi.new

knowledge_base_article = Connectwise::KnowledgeBaseArticle.new # KnowledgeBaseArticle | 


begin
  result = api_instance.service_knowledge_base_articles_post(knowledge_base_article)
  p result
rescue Connectwise::ApiError => e
  puts "Exception when calling KnowledgeBaseArticlesApi->service_knowledge_base_articles_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **knowledge_base_article** | [**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)|  | 

### Return type

[**KnowledgeBaseArticle**](KnowledgeBaseArticle.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# ConnectWise::TaxCodeWorkRoleExemptionsApi

All URIs are relative to *https://api-na.myconnectwise.net/v4_6_release/apis/3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_tax_codes_id_work_role_exemptions_count_get**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_count_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions/count | 
[**finance_tax_codes_id_work_role_exemptions_get**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions | 
[**finance_tax_codes_id_work_role_exemptions_post**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_post) | **POST** /finance/taxCodes/{id}/workRoleExemptions | 
[**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete) | **DELETE** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} | 
[**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get) | **GET** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} | 
[**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch) | **PATCH** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} | 
[**finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put**](TaxCodeWorkRoleExemptionsApi.md#finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put) | **PUT** /finance/taxCodes/{id}/workRoleExemptions/{workRoleExemptionId} | 


# **finance_tax_codes_id_work_role_exemptions_count_get**
> Count finance_tax_codes_id_work_role_exemptions_count_get(id, opts)



Get Tax Code Work Role Exemption Count

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

opts = { 
  conditions: "conditions_example" # String | 
}

begin
  result = api_instance.finance_tax_codes_id_work_role_exemptions_count_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_count_get: #{e}"
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



# **finance_tax_codes_id_work_role_exemptions_get**
> Array&lt;WorkRoleExemption&gt; finance_tax_codes_id_work_role_exemptions_get(id, opts)



Get Tax Code Work Role Exemption

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

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
  result = api_instance.finance_tax_codes_id_work_role_exemptions_get(id, opts)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_get: #{e}"
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

[**Array&lt;WorkRoleExemption&gt;**](WorkRoleExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_work_role_exemptions_post**
> WorkRoleExemption finance_tax_codes_id_work_role_exemptions_post(id, work_role_exemption)



Create Tax Code Work Role Exemption

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

work_role_exemption = ConnectWise::WorkRoleExemption.new # WorkRoleExemption | 


begin
  result = api_instance.finance_tax_codes_id_work_role_exemptions_post(id, work_role_exemption)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exemption** | [**WorkRoleExemption**](WorkRoleExemption.md)|  | 

### Return type

[**WorkRoleExemption**](WorkRoleExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete**
> finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete(id, work_role_exemption_id)



Delete Tax Code Work Role Exemption By Id

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

work_role_exemption_id = 56 # Integer | 


begin
  api_instance.finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete(id, work_role_exemption_id)
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exemption_id** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get**
> WorkRoleExemption finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get(id, work_role_exemption_id)



Get Tax Code Work Role Exemption By Id

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

work_role_exemption_id = 56 # Integer | 


begin
  result = api_instance.finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get(id, work_role_exemption_id)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exemption_id** | **Integer**|  | 

### Return type

[**WorkRoleExemption**](WorkRoleExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch**
> WorkRoleExemption finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch(id, work_role_exemption_id, operations)



Update Tax Code Work Role Exemption

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

work_role_exemption_id = 56 # Integer | 

operations = [ConnectWise::PatchOperation.new] # Array<PatchOperation> | 


begin
  result = api_instance.finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch(id, work_role_exemption_id, operations)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exemption_id** | **Integer**|  | 
 **operations** | [**Array&lt;PatchOperation&gt;**](PatchOperation.md)|  | 

### Return type

[**WorkRoleExemption**](WorkRoleExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put**
> WorkRoleExemption finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put(id, work_role_exemption_id, work_role_exemption)



Replace Tax Code Work Role Exemption

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

api_instance = ConnectWise::TaxCodeWorkRoleExemptionsApi.new

id = 56 # Integer | 

work_role_exemption_id = 56 # Integer | 

work_role_exemption = ConnectWise::WorkRoleExemption.new # WorkRoleExemption | 


begin
  result = api_instance.finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put(id, work_role_exemption_id, work_role_exemption)
  p result
rescue ConnectWise::ApiError => e
  puts "Exception when calling TaxCodeWorkRoleExemptionsApi->finance_tax_codes_id_work_role_exemptions_work_role_exemption_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**|  | 
 **work_role_exemption_id** | **Integer**|  | 
 **work_role_exemption** | [**WorkRoleExemption**](WorkRoleExemption.md)|  | 

### Return type

[**WorkRoleExemption**](WorkRoleExemption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




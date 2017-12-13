
require "uri"

module ConnectWise
  class TaxCodeProductTypeExemptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Tax Code Product Type Exemption Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_tax_codes_id_product_type_exemptions_count_get(id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tax Code Product Type Exemption Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_count_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions/count".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code Product Type Exemption
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProductTypeExemption>]
    def finance_tax_codes_id_product_type_exemptions_get(id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tax Code Product Type Exemption
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProductTypeExemption>, Fixnum, Hash)>] Array<ProductTypeExemption> data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ProductTypeExemption>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption 
    # @param [Hash] opts the optional parameters
    # @return [ProductTypeExemption]
    def finance_tax_codes_id_product_type_exemptions_post(id, product_type_exemption, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_post_with_http_info(id, product_type_exemption, opts)
      return data
    end

    # 
    # Create Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductTypeExemption, Fixnum, Hash)>] ProductTypeExemption data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_post_with_http_info(id, product_type_exemption, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_post"
      end
      # verify the required parameter 'product_type_exemption' is set
      if @api_client.config.client_side_validation && product_type_exemption.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_post"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(product_type_exemption)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductTypeExemption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Tax Code Product Type Exemption By Id
    # @param id 
    # @param product_type_exemption_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete(id, product_type_exemption_id, opts = {})
      finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete_with_http_info(id, product_type_exemption_id, opts)
      return nil
    end

    # 
    # Delete Tax Code Product Type Exemption By Id
    # @param id 
    # @param product_type_exemption_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete_with_http_info(id, product_type_exemption_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete"
      end
      # verify the required parameter 'product_type_exemption_id' is set
      if @api_client.config.client_side_validation && product_type_exemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption_id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'productTypeExemptionId' + '}', product_type_exemption_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code Product Type Exemption By Id
    # @param id 
    # @param product_type_exemption_id 
    # @param [Hash] opts the optional parameters
    # @return [ProductTypeExemption]
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get(id, product_type_exemption_id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get_with_http_info(id, product_type_exemption_id, opts)
      return data
    end

    # 
    # Get Tax Code Product Type Exemption By Id
    # @param id 
    # @param product_type_exemption_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductTypeExemption, Fixnum, Hash)>] ProductTypeExemption data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get_with_http_info(id, product_type_exemption_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get"
      end
      # verify the required parameter 'product_type_exemption_id' is set
      if @api_client.config.client_side_validation && product_type_exemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption_id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'productTypeExemptionId' + '}', product_type_exemption_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductTypeExemption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ProductTypeExemption]
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch(id, product_type_exemption_id, operations, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch_with_http_info(id, product_type_exemption_id, operations, opts)
      return data
    end

    # 
    # Update Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductTypeExemption, Fixnum, Hash)>] ProductTypeExemption data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch_with_http_info(id, product_type_exemption_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch"
      end
      # verify the required parameter 'product_type_exemption_id' is set
      if @api_client.config.client_side_validation && product_type_exemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption_id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'productTypeExemptionId' + '}', product_type_exemption_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductTypeExemption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption_id 
    # @param product_type_exemption 
    # @param [Hash] opts the optional parameters
    # @return [ProductTypeExemption]
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put(id, product_type_exemption_id, product_type_exemption, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put_with_http_info(id, product_type_exemption_id, product_type_exemption, opts)
      return data
    end

    # 
    # Replace Tax Code Product Type Exemption
    # @param id 
    # @param product_type_exemption_id 
    # @param product_type_exemption 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProductTypeExemption, Fixnum, Hash)>] ProductTypeExemption data, response status code and response headers
    def finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put_with_http_info(id, product_type_exemption_id, product_type_exemption, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put"
      end
      # verify the required parameter 'product_type_exemption_id' is set
      if @api_client.config.client_side_validation && product_type_exemption_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption_id' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put"
      end
      # verify the required parameter 'product_type_exemption' is set
      if @api_client.config.client_side_validation && product_type_exemption.nil?
        fail ArgumentError, "Missing the required parameter 'product_type_exemption' when calling TaxCodeProductTypeExemptionsApi.finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}/productTypeExemptions/{productTypeExemptionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'productTypeExemptionId' + '}', product_type_exemption_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(product_type_exemption)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProductTypeExemption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodeProductTypeExemptionsApi#finance_tax_codes_id_product_type_exemptions_product_type_exemption_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

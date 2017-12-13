
require "uri"

module ConnectWise
  class TaxCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Tax Code Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_tax_codes_count_get(opts = {})
      data, _status_code, _headers = finance_tax_codes_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Tax Code Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_tax_codes_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_count_get ..."
      end
      # resource path
      local_var_path = "/finance/taxCodes/count"

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
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<TaxCode>]
    def finance_tax_codes_get(opts = {})
      data, _status_code, _headers = finance_tax_codes_get_with_http_info(opts)
      return data
    end

    # 
    # Get Tax Code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<TaxCode>, Fixnum, Hash)>] Array<TaxCode> data, response status code and response headers
    def finance_tax_codes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_get ..."
      end
      # resource path
      local_var_path = "/finance/taxCodes"

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
        :return_type => 'Array<TaxCode>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Tax Code By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_tax_codes_id_delete(id, opts = {})
      finance_tax_codes_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Tax Code By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_tax_codes_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodesApi.finance_tax_codes_id_delete"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tax Code By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [TaxCode]
    def finance_tax_codes_id_get(id, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tax Code By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCode, Fixnum, Hash)>] TaxCode data, response status code and response headers
    def finance_tax_codes_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodesApi.finance_tax_codes_id_get"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TaxCode')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Tax Code
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [TaxCode]
    def finance_tax_codes_id_patch(id, operations, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Tax Code
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCode, Fixnum, Hash)>] TaxCode data, response status code and response headers
    def finance_tax_codes_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodesApi.finance_tax_codes_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling TaxCodesApi.finance_tax_codes_id_patch"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TaxCode')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Tax Code
    # @param id 
    # @param tax_code 
    # @param [Hash] opts the optional parameters
    # @return [TaxCode]
    def finance_tax_codes_id_put(id, tax_code, opts = {})
      data, _status_code, _headers = finance_tax_codes_id_put_with_http_info(id, tax_code, opts)
      return data
    end

    # 
    # Replace Tax Code
    # @param id 
    # @param tax_code 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCode, Fixnum, Hash)>] TaxCode data, response status code and response headers
    def finance_tax_codes_id_put_with_http_info(id, tax_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TaxCodesApi.finance_tax_codes_id_put"
      end
      # verify the required parameter 'tax_code' is set
      if @api_client.config.client_side_validation && tax_code.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code' when calling TaxCodesApi.finance_tax_codes_id_put"
      end
      # resource path
      local_var_path = "/finance/taxCodes/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(tax_code)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxCode')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Tax Code
    # @param tax_code 
    # @param [Hash] opts the optional parameters
    # @return [TaxCode]
    def finance_tax_codes_post(tax_code, opts = {})
      data, _status_code, _headers = finance_tax_codes_post_with_http_info(tax_code, opts)
      return data
    end

    # 
    # Create Tax Code
    # @param tax_code 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TaxCode, Fixnum, Hash)>] TaxCode data, response status code and response headers
    def finance_tax_codes_post_with_http_info(tax_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TaxCodesApi.finance_tax_codes_post ..."
      end
      # verify the required parameter 'tax_code' is set
      if @api_client.config.client_side_validation && tax_code.nil?
        fail ArgumentError, "Missing the required parameter 'tax_code' when calling TaxCodesApi.finance_tax_codes_post"
      end
      # resource path
      local_var_path = "/finance/taxCodes"

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
      post_body = @api_client.object_to_http_body(tax_code)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TaxCode')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TaxCodesApi#finance_tax_codes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

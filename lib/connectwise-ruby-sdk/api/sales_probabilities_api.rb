
require "uri"

module ConnectWise
  class SalesProbabilitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Probabilities Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def sales_probabilities_count_get(opts = {})
      data, _status_code, _headers = sales_probabilities_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Probabilities Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def sales_probabilities_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_count_get ..."
      end
      # resource path
      local_var_path = "/sales/probabilities/count"

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
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Probabilities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SalesProbability>]
    def sales_probabilities_get(opts = {})
      data, _status_code, _headers = sales_probabilities_get_with_http_info(opts)
      return data
    end

    # 
    # Get Probabilities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SalesProbability>, Fixnum, Hash)>] Array<SalesProbability> data, response status code and response headers
    def sales_probabilities_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_get ..."
      end
      # resource path
      local_var_path = "/sales/probabilities"

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
        :return_type => 'Array<SalesProbability>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Probability By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sales_probabilities_id_delete(id, opts = {})
      sales_probabilities_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Probability By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sales_probabilities_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesProbabilitiesApi.sales_probabilities_id_delete"
      end
      # resource path
      local_var_path = "/sales/probabilities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Probability By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SalesProbability]
    def sales_probabilities_id_get(id, opts = {})
      data, _status_code, _headers = sales_probabilities_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Probability By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesProbability, Fixnum, Hash)>] SalesProbability data, response status code and response headers
    def sales_probabilities_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesProbabilitiesApi.sales_probabilities_id_get"
      end
      # resource path
      local_var_path = "/sales/probabilities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesProbability')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Probability
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SalesProbability]
    def sales_probabilities_id_patch(id, operations, opts = {})
      data, _status_code, _headers = sales_probabilities_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Probability
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesProbability, Fixnum, Hash)>] SalesProbability data, response status code and response headers
    def sales_probabilities_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesProbabilitiesApi.sales_probabilities_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SalesProbabilitiesApi.sales_probabilities_id_patch"
      end
      # resource path
      local_var_path = "/sales/probabilities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesProbability')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Probability
    # @param id 
    # @param probability 
    # @param [Hash] opts the optional parameters
    # @return [SalesProbability]
    def sales_probabilities_id_put(id, probability, opts = {})
      data, _status_code, _headers = sales_probabilities_id_put_with_http_info(id, probability, opts)
      return data
    end

    # 
    # Replace Probability
    # @param id 
    # @param probability 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesProbability, Fixnum, Hash)>] SalesProbability data, response status code and response headers
    def sales_probabilities_id_put_with_http_info(id, probability, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesProbabilitiesApi.sales_probabilities_id_put"
      end
      # verify the required parameter 'probability' is set
      if @api_client.config.client_side_validation && probability.nil?
        fail ArgumentError, "Missing the required parameter 'probability' when calling SalesProbabilitiesApi.sales_probabilities_id_put"
      end
      # resource path
      local_var_path = "/sales/probabilities/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(probability)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesProbability')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Probability
    # @param probability 
    # @param [Hash] opts the optional parameters
    # @return [SalesProbability]
    def sales_probabilities_post(probability, opts = {})
      data, _status_code, _headers = sales_probabilities_post_with_http_info(probability, opts)
      return data
    end

    # 
    # Create Probability
    # @param probability 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesProbability, Fixnum, Hash)>] SalesProbability data, response status code and response headers
    def sales_probabilities_post_with_http_info(probability, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesProbabilitiesApi.sales_probabilities_post ..."
      end
      # verify the required parameter 'probability' is set
      if @api_client.config.client_side_validation && probability.nil?
        fail ArgumentError, "Missing the required parameter 'probability' when calling SalesProbabilitiesApi.sales_probabilities_post"
      end
      # resource path
      local_var_path = "/sales/probabilities"

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
      post_body = @api_client.object_to_http_body(probability)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesProbability')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesProbabilitiesApi#sales_probabilities_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

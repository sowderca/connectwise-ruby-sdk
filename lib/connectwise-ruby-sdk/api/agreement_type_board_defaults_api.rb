
require "uri"

module ConnectWise
  class AgreementTypeBoardDefaultsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Agreement Type Board Default By Id
    # @param id 
    # @param board_default_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreement_types_id_board_defaults_board_default_id_delete(id, board_default_id, opts = {})
      finance_agreement_types_id_board_defaults_board_default_id_delete_with_http_info(id, board_default_id, opts)
      return nil
    end

    # 
    # Delete Agreement Type Board Default By Id
    # @param id 
    # @param board_default_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreement_types_id_board_defaults_board_default_id_delete_with_http_info(id, board_default_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_delete"
      end
      # verify the required parameter 'board_default_id' is set
      if @api_client.config.client_side_validation && board_default_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_default_id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults/{boardDefaultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'boardDefaultId' + '}', board_default_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_board_default_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement Type Board Default By Id
    # @param id 
    # @param board_default_id 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeBoardDefault]
    def finance_agreement_types_id_board_defaults_board_default_id_get(id, board_default_id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_board_default_id_get_with_http_info(id, board_default_id, opts)
      return data
    end

    # 
    # Get Agreement Type Board Default By Id
    # @param id 
    # @param board_default_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeBoardDefault, Fixnum, Hash)>] AgreementTypeBoardDefault data, response status code and response headers
    def finance_agreement_types_id_board_defaults_board_default_id_get_with_http_info(id, board_default_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_get"
      end
      # verify the required parameter 'board_default_id' is set
      if @api_client.config.client_side_validation && board_default_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_default_id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults/{boardDefaultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'boardDefaultId' + '}', board_default_id.to_s)

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
        :return_type => 'AgreementTypeBoardDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_board_default_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Agreement Type Board Default
    # @param id 
    # @param board_default_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeBoardDefault]
    def finance_agreement_types_id_board_defaults_board_default_id_patch(id, board_default_id, operations, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_board_default_id_patch_with_http_info(id, board_default_id, operations, opts)
      return data
    end

    # 
    # Update Agreement Type Board Default
    # @param id 
    # @param board_default_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeBoardDefault, Fixnum, Hash)>] AgreementTypeBoardDefault data, response status code and response headers
    def finance_agreement_types_id_board_defaults_board_default_id_patch_with_http_info(id, board_default_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_patch"
      end
      # verify the required parameter 'board_default_id' is set
      if @api_client.config.client_side_validation && board_default_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_default_id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_patch"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults/{boardDefaultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'boardDefaultId' + '}', board_default_id.to_s)

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
        :return_type => 'AgreementTypeBoardDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_board_default_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Agreement Type Board Default
    # @param id 
    # @param board_default_id 
    # @param board_default 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeBoardDefault]
    def finance_agreement_types_id_board_defaults_board_default_id_put(id, board_default_id, board_default, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_board_default_id_put_with_http_info(id, board_default_id, board_default, opts)
      return data
    end

    # 
    # Replace Agreement Type Board Default
    # @param id 
    # @param board_default_id 
    # @param board_default 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeBoardDefault, Fixnum, Hash)>] AgreementTypeBoardDefault data, response status code and response headers
    def finance_agreement_types_id_board_defaults_board_default_id_put_with_http_info(id, board_default_id, board_default, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_put"
      end
      # verify the required parameter 'board_default_id' is set
      if @api_client.config.client_side_validation && board_default_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_default_id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_put"
      end
      # verify the required parameter 'board_default' is set
      if @api_client.config.client_side_validation && board_default.nil?
        fail ArgumentError, "Missing the required parameter 'board_default' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_board_default_id_put"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults/{boardDefaultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'boardDefaultId' + '}', board_default_id.to_s)

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
      post_body = @api_client.object_to_http_body(board_default)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementTypeBoardDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_board_default_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement Type Board Defaults Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_agreement_types_id_board_defaults_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Agreement Type Board Defaults Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreement_types_id_board_defaults_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_count_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement Type Board Defaults
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AgreementTypeBoardDefault>]
    def finance_agreement_types_id_board_defaults_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Agreement Type Board Defaults
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AgreementTypeBoardDefault>, Fixnum, Hash)>] Array<AgreementTypeBoardDefault> data, response status code and response headers
    def finance_agreement_types_id_board_defaults_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AgreementTypeBoardDefault>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Agreement Type Board Default
    # @param id 
    # @param board_default 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeBoardDefault]
    def finance_agreement_types_id_board_defaults_post(id, board_default, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_board_defaults_post_with_http_info(id, board_default, opts)
      return data
    end

    # 
    # Create Agreement Type Board Default
    # @param id 
    # @param board_default 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeBoardDefault, Fixnum, Hash)>] AgreementTypeBoardDefault data, response status code and response headers
    def finance_agreement_types_id_board_defaults_post_with_http_info(id, board_default, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_post"
      end
      # verify the required parameter 'board_default' is set
      if @api_client.config.client_side_validation && board_default.nil?
        fail ArgumentError, "Missing the required parameter 'board_default' when calling AgreementTypeBoardDefaultsApi.finance_agreement_types_id_board_defaults_post"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/boardDefaults".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(board_default)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementTypeBoardDefault')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeBoardDefaultsApi#finance_agreement_types_id_board_defaults_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

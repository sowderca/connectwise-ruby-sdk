
require "uri"

module ConnectWise
  class AuthAnvilsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Auth Anvil Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_auth_anvils_count_get(opts = {})
      data, _status_code, _headers = system_auth_anvils_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Auth Anvil Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_auth_anvils_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_count_get ..."
      end
      # resource path
      local_var_path = "/system/authAnvils/count"

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
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Auth Anvils
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AuthAnvil>]
    def system_auth_anvils_get(opts = {})
      data, _status_code, _headers = system_auth_anvils_get_with_http_info(opts)
      return data
    end

    # 
    # Get Auth Anvils
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AuthAnvil>, Fixnum, Hash)>] Array<AuthAnvil> data, response status code and response headers
    def system_auth_anvils_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_get ..."
      end
      # resource path
      local_var_path = "/system/authAnvils"

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
        :return_type => 'Array<AuthAnvil>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Auth Anvil By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [AuthAnvil]
    def system_auth_anvils_id_get(id, opts = {})
      data, _status_code, _headers = system_auth_anvils_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Auth Anvil By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthAnvil, Fixnum, Hash)>] AuthAnvil data, response status code and response headers
    def system_auth_anvils_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthAnvilsApi.system_auth_anvils_id_get"
      end
      # resource path
      local_var_path = "/system/authAnvils/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AuthAnvil')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Auth Anvil
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [AuthAnvil]
    def system_auth_anvils_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_auth_anvils_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Auth Anvil
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthAnvil, Fixnum, Hash)>] AuthAnvil data, response status code and response headers
    def system_auth_anvils_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthAnvilsApi.system_auth_anvils_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling AuthAnvilsApi.system_auth_anvils_id_patch"
      end
      # resource path
      local_var_path = "/system/authAnvils/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AuthAnvil')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Auth Anvil
    # @param id 
    # @param auth_anvil 
    # @param [Hash] opts the optional parameters
    # @return [AuthAnvil]
    def system_auth_anvils_id_put(id, auth_anvil, opts = {})
      data, _status_code, _headers = system_auth_anvils_id_put_with_http_info(id, auth_anvil, opts)
      return data
    end

    # 
    # Replace Auth Anvil
    # @param id 
    # @param auth_anvil 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthAnvil, Fixnum, Hash)>] AuthAnvil data, response status code and response headers
    def system_auth_anvils_id_put_with_http_info(id, auth_anvil, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AuthAnvilsApi.system_auth_anvils_id_put"
      end
      # verify the required parameter 'auth_anvil' is set
      if @api_client.config.client_side_validation && auth_anvil.nil?
        fail ArgumentError, "Missing the required parameter 'auth_anvil' when calling AuthAnvilsApi.system_auth_anvils_id_put"
      end
      # resource path
      local_var_path = "/system/authAnvils/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(auth_anvil)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthAnvil')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Validate Auth Anvil Url Connectivity
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def system_auth_anvils_test_connection_get(opts = {})
      data, _status_code, _headers = system_auth_anvils_test_connection_get_with_http_info(opts)
      return data
    end

    # 
    # Validate Auth Anvil Url Connectivity
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def system_auth_anvils_test_connection_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthAnvilsApi.system_auth_anvils_test_connection_get ..."
      end
      # resource path
      local_var_path = "/system/authAnvils/testConnection"

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
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthAnvilsApi#system_auth_anvils_test_connection_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

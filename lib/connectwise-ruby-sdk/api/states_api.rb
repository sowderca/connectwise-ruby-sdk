
require "uri"

module ConnectWise
  class StatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get States Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_states_count_get(opts = {})
      data, _status_code, _headers = system_states_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get States Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_states_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatesApi.system_states_count_get ..."
      end
      # resource path
      local_var_path = "/system/states/count"

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
        @api_client.config.logger.debug "API called: StatesApi#system_states_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get States
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<State>]
    def system_states_get(opts = {})
      data, _status_code, _headers = system_states_get_with_http_info(opts)
      return data
    end

    # 
    # Get States
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<State>, Fixnum, Hash)>] Array<State> data, response status code and response headers
    def system_states_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatesApi.system_states_get ..."
      end
      # resource path
      local_var_path = "/system/states"

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
        :return_type => 'Array<State>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatesApi#system_states_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get State By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [State]
    def system_states_id_get(id, opts = {})
      data, _status_code, _headers = system_states_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get State By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(State, Fixnum, Hash)>] State data, response status code and response headers
    def system_states_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatesApi.system_states_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StatesApi.system_states_id_get"
      end
      # resource path
      local_var_path = "/system/states/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'State')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatesApi#system_states_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create State
    # @param billing_setup 
    # @param [Hash] opts the optional parameters
    # @return [State]
    def system_states_post(billing_setup, opts = {})
      data, _status_code, _headers = system_states_post_with_http_info(billing_setup, opts)
      return data
    end

    # 
    # Create State
    # @param billing_setup 
    # @param [Hash] opts the optional parameters
    # @return [Array<(State, Fixnum, Hash)>] State data, response status code and response headers
    def system_states_post_with_http_info(billing_setup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatesApi.system_states_post ..."
      end
      # verify the required parameter 'billing_setup' is set
      if @api_client.config.client_side_validation && billing_setup.nil?
        fail ArgumentError, "Missing the required parameter 'billing_setup' when calling StatesApi.system_states_post"
      end
      # resource path
      local_var_path = "/system/states"

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
      post_body = @api_client.object_to_http_body(billing_setup)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'State')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatesApi#system_states_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

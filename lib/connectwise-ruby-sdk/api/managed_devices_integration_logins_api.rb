
require "uri"

module ConnectWise
  class ManagedDevicesIntegrationLoginsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Login Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_managed_devices_integrations_id_logins_count_get(id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Login Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_managed_devices_integrations_id_logins_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_count_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Login
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ManagedDevicesIntegrationLogin>]
    def company_managed_devices_integrations_id_logins_get(id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Login
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ManagedDevicesIntegrationLogin>, Fixnum, Hash)>] Array<ManagedDevicesIntegrationLogin> data, response status code and response headers
    def company_managed_devices_integrations_id_logins_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ManagedDevicesIntegrationLogin>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Login
    # @param id 
    # @param login_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationLogin]
    def company_managed_devices_integrations_id_logins_login_id_delete(id, login_id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_login_id_delete_with_http_info(id, login_id, opts)
      return data
    end

    # 
    # Delete Login
    # @param id 
    # @param login_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationLogin, Fixnum, Hash)>] ManagedDevicesIntegrationLogin data, response status code and response headers
    def company_managed_devices_integrations_id_logins_login_id_delete_with_http_info(id, login_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_delete"
      end
      # verify the required parameter 'login_id' is set
      if @api_client.config.client_side_validation && login_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_delete"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins/{loginID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'loginID' + '}', login_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationLogin')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_login_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Login By Id
    # @param id 
    # @param login_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationLogin]
    def company_managed_devices_integrations_id_logins_login_id_get(id, login_id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_login_id_get_with_http_info(id, login_id, opts)
      return data
    end

    # 
    # Get Login By Id
    # @param id 
    # @param login_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationLogin, Fixnum, Hash)>] ManagedDevicesIntegrationLogin data, response status code and response headers
    def company_managed_devices_integrations_id_logins_login_id_get_with_http_info(id, login_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_get"
      end
      # verify the required parameter 'login_id' is set
      if @api_client.config.client_side_validation && login_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins/{loginID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'loginID' + '}', login_id.to_s)

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
        :return_type => 'ManagedDevicesIntegrationLogin')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_login_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Login
    # @param id 
    # @param login_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationLogin]
    def company_managed_devices_integrations_id_logins_login_id_patch(id, login_id, operations, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_login_id_patch_with_http_info(id, login_id, operations, opts)
      return data
    end

    # 
    # Update Login
    # @param id 
    # @param login_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationLogin, Fixnum, Hash)>] ManagedDevicesIntegrationLogin data, response status code and response headers
    def company_managed_devices_integrations_id_logins_login_id_patch_with_http_info(id, login_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_patch"
      end
      # verify the required parameter 'login_id' is set
      if @api_client.config.client_side_validation && login_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_patch"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins/{loginID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'loginID' + '}', login_id.to_s)

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
        :return_type => 'ManagedDevicesIntegrationLogin')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_login_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Login
    # @param id 
    # @param login_id 
    # @param login 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationLogin]
    def company_managed_devices_integrations_id_logins_login_id_put(id, login_id, login, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_login_id_put_with_http_info(id, login_id, login, opts)
      return data
    end

    # 
    # Replace Login
    # @param id 
    # @param login_id 
    # @param login 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationLogin, Fixnum, Hash)>] ManagedDevicesIntegrationLogin data, response status code and response headers
    def company_managed_devices_integrations_id_logins_login_id_put_with_http_info(id, login_id, login, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_put"
      end
      # verify the required parameter 'login_id' is set
      if @api_client.config.client_side_validation && login_id.nil?
        fail ArgumentError, "Missing the required parameter 'login_id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_put"
      end
      # verify the required parameter 'login' is set
      if @api_client.config.client_side_validation && login.nil?
        fail ArgumentError, "Missing the required parameter 'login' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_login_id_put"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins/{loginID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'loginID' + '}', login_id.to_s)

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
      post_body = @api_client.object_to_http_body(login)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationLogin')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_login_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Login
    # @param id 
    # @param login 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationLogin]
    def company_managed_devices_integrations_id_logins_post(id, login, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_logins_post_with_http_info(id, login, opts)
      return data
    end

    # 
    # Create Login
    # @param id 
    # @param login 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationLogin, Fixnum, Hash)>] ManagedDevicesIntegrationLogin data, response status code and response headers
    def company_managed_devices_integrations_id_logins_post_with_http_info(id, login, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_post"
      end
      # verify the required parameter 'login' is set
      if @api_client.config.client_side_validation && login.nil?
        fail ArgumentError, "Missing the required parameter 'login' when calling ManagedDevicesIntegrationLoginsApi.company_managed_devices_integrations_id_logins_post"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/logins".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(login)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationLogin')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationLoginsApi#company_managed_devices_integrations_id_logins_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

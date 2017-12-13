
require "uri"

module ConnectWise
  class ProjectSecurityRoleSettingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Project Security Role Setting Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_project_security_roles_id_settings_count_get(id, opts = {})
      data, _status_code, _headers = system_project_security_roles_id_settings_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Project Security Role Setting Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_project_security_roles_id_settings_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_count_get"
      end
      # resource path
      local_var_path = "/system/projectSecurityRoles/{id}/settings/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ProjectSecurityRoleSettingsApi#system_project_security_roles_id_settings_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Security Role Settings
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProjectSecurityRoleSetting>]
    def system_project_security_roles_id_settings_get(id, opts = {})
      data, _status_code, _headers = system_project_security_roles_id_settings_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Project Security Role Settings
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProjectSecurityRoleSetting>, Fixnum, Hash)>] Array<ProjectSecurityRoleSetting> data, response status code and response headers
    def system_project_security_roles_id_settings_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_get"
      end
      # resource path
      local_var_path = "/system/projectSecurityRoles/{id}/settings".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ProjectSecurityRoleSetting>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectSecurityRoleSettingsApi#system_project_security_roles_id_settings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Project Security Role Setting By Id
    # @param id 
    # @param setting_id 
    # @param [Hash] opts the optional parameters
    # @return [ProjectSecurityRoleSetting]
    def system_project_security_roles_id_settings_setting_id_get(id, setting_id, opts = {})
      data, _status_code, _headers = system_project_security_roles_id_settings_setting_id_get_with_http_info(id, setting_id, opts)
      return data
    end

    # 
    # Get Project Security Role Setting By Id
    # @param id 
    # @param setting_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectSecurityRoleSetting, Fixnum, Hash)>] ProjectSecurityRoleSetting data, response status code and response headers
    def system_project_security_roles_id_settings_setting_id_get_with_http_info(id, setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_get"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_get"
      end
      # resource path
      local_var_path = "/system/projectSecurityRoles/{id}/settings/{settingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'settingId' + '}', setting_id.to_s)

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
        :return_type => 'ProjectSecurityRoleSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectSecurityRoleSettingsApi#system_project_security_roles_id_settings_setting_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Project Security Role Setting
    # @param id 
    # @param setting_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ProjectSecurityRoleSetting]
    def system_project_security_roles_id_settings_setting_id_patch(id, setting_id, operations, opts = {})
      data, _status_code, _headers = system_project_security_roles_id_settings_setting_id_patch_with_http_info(id, setting_id, operations, opts)
      return data
    end

    # 
    # Update Project Security Role Setting
    # @param id 
    # @param setting_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectSecurityRoleSetting, Fixnum, Hash)>] ProjectSecurityRoleSetting data, response status code and response headers
    def system_project_security_roles_id_settings_setting_id_patch_with_http_info(id, setting_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_patch"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_patch"
      end
      # resource path
      local_var_path = "/system/projectSecurityRoles/{id}/settings/{settingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'settingId' + '}', setting_id.to_s)

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
        :return_type => 'ProjectSecurityRoleSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectSecurityRoleSettingsApi#system_project_security_roles_id_settings_setting_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Project Security Role Setting
    # @param id 
    # @param setting_id 
    # @param project_security_role_setting 
    # @param [Hash] opts the optional parameters
    # @return [ProjectSecurityRoleSetting]
    def system_project_security_roles_id_settings_setting_id_put(id, setting_id, project_security_role_setting, opts = {})
      data, _status_code, _headers = system_project_security_roles_id_settings_setting_id_put_with_http_info(id, setting_id, project_security_role_setting, opts)
      return data
    end

    # 
    # Replace Project Security Role Setting
    # @param id 
    # @param setting_id 
    # @param project_security_role_setting 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProjectSecurityRoleSetting, Fixnum, Hash)>] ProjectSecurityRoleSetting data, response status code and response headers
    def system_project_security_roles_id_settings_setting_id_put_with_http_info(id, setting_id, project_security_role_setting, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_put"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_put"
      end
      # verify the required parameter 'project_security_role_setting' is set
      if @api_client.config.client_side_validation && project_security_role_setting.nil?
        fail ArgumentError, "Missing the required parameter 'project_security_role_setting' when calling ProjectSecurityRoleSettingsApi.system_project_security_roles_id_settings_setting_id_put"
      end
      # resource path
      local_var_path = "/system/projectSecurityRoles/{id}/settings/{settingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'settingId' + '}', setting_id.to_s)

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
      post_body = @api_client.object_to_http_body(project_security_role_setting)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProjectSecurityRoleSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectSecurityRoleSettingsApi#system_project_security_roles_id_settings_setting_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

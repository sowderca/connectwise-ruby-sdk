
require "uri"

module ConnectWise
  class LocationWorkRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Location Work Role Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_locations_id_work_roles_count_get(id, opts = {})
      data, _status_code, _headers = system_locations_id_work_roles_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Location Work Role Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_locations_id_work_roles_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationWorkRolesApi.system_locations_id_work_roles_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationWorkRolesApi.system_locations_id_work_roles_count_get"
      end
      # resource path
      local_var_path = "/system/locations/{id}/workRoles/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: LocationWorkRolesApi#system_locations_id_work_roles_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Location Work Role
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<LocationWorkRole>]
    def system_locations_id_work_roles_get(id, opts = {})
      data, _status_code, _headers = system_locations_id_work_roles_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Location Work Role
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<LocationWorkRole>, Fixnum, Hash)>] Array<LocationWorkRole> data, response status code and response headers
    def system_locations_id_work_roles_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationWorkRolesApi.system_locations_id_work_roles_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationWorkRolesApi.system_locations_id_work_roles_get"
      end
      # resource path
      local_var_path = "/system/locations/{id}/workRoles".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<LocationWorkRole>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationWorkRolesApi#system_locations_id_work_roles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Location Work Role By Id
    # @param parent_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [LocationWorkRole]
    def system_locations_parent_id_work_roles_id_get(parent_id, id, opts = {})
      data, _status_code, _headers = system_locations_parent_id_work_roles_id_get_with_http_info(parent_id, id, opts)
      return data
    end

    # 
    # Get Location Work Role By Id
    # @param parent_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocationWorkRole, Fixnum, Hash)>] LocationWorkRole data, response status code and response headers
    def system_locations_parent_id_work_roles_id_get_with_http_info(parent_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LocationWorkRolesApi.system_locations_parent_id_work_roles_id_get ..."
      end
      # verify the required parameter 'parent_id' is set
      if @api_client.config.client_side_validation && parent_id.nil?
        fail ArgumentError, "Missing the required parameter 'parent_id' when calling LocationWorkRolesApi.system_locations_parent_id_work_roles_id_get"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling LocationWorkRolesApi.system_locations_parent_id_work_roles_id_get"
      end
      # resource path
      local_var_path = "/system/locations/{parentId}/workRoles/{id}".sub('{' + 'parentId' + '}', parent_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'LocationWorkRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LocationWorkRolesApi#system_locations_parent_id_work_roles_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

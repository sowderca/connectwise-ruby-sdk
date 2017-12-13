
require "uri"

module ConnectWise
  class DepartmentLocationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Department Location Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_departments_id_locations_count_get(id, opts = {})
      data, _status_code, _headers = system_departments_id_locations_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Department Location Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_departments_id_locations_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_count_get"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Department Location
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<DepartmentLocation>]
    def system_departments_id_locations_get(id, opts = {})
      data, _status_code, _headers = system_departments_id_locations_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Department Location
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<DepartmentLocation>, Fixnum, Hash)>] Array<DepartmentLocation> data, response status code and response headers
    def system_departments_id_locations_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_get"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<DepartmentLocation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Department Location By Id
    # @param id 
    # @param location_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_departments_id_locations_location_id_delete(id, location_id, opts = {})
      system_departments_id_locations_location_id_delete_with_http_info(id, location_id, opts)
      return nil
    end

    # 
    # Delete Department Location By Id
    # @param id 
    # @param location_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_departments_id_locations_location_id_delete_with_http_info(id, location_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_location_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_delete"
      end
      # verify the required parameter 'location_id' is set
      if @api_client.config.client_side_validation && location_id.nil?
        fail ArgumentError, "Missing the required parameter 'location_id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_delete"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations/{locationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'locationId' + '}', location_id.to_s)

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
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_location_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Department Location By Id
    # @param id 
    # @param location_id 
    # @param [Hash] opts the optional parameters
    # @return [DepartmentLocation]
    def system_departments_id_locations_location_id_get(id, location_id, opts = {})
      data, _status_code, _headers = system_departments_id_locations_location_id_get_with_http_info(id, location_id, opts)
      return data
    end

    # 
    # Get Department Location By Id
    # @param id 
    # @param location_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepartmentLocation, Fixnum, Hash)>] DepartmentLocation data, response status code and response headers
    def system_departments_id_locations_location_id_get_with_http_info(id, location_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_location_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_get"
      end
      # verify the required parameter 'location_id' is set
      if @api_client.config.client_side_validation && location_id.nil?
        fail ArgumentError, "Missing the required parameter 'location_id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_get"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations/{locationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'locationId' + '}', location_id.to_s)

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
        :return_type => 'DepartmentLocation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_location_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Department Location
    # @param id 
    # @param location_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [DepartmentLocation]
    def system_departments_id_locations_location_id_patch(id, location_id, operations, opts = {})
      data, _status_code, _headers = system_departments_id_locations_location_id_patch_with_http_info(id, location_id, operations, opts)
      return data
    end

    # 
    # Update Department Location
    # @param id 
    # @param location_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepartmentLocation, Fixnum, Hash)>] DepartmentLocation data, response status code and response headers
    def system_departments_id_locations_location_id_patch_with_http_info(id, location_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_location_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_patch"
      end
      # verify the required parameter 'location_id' is set
      if @api_client.config.client_side_validation && location_id.nil?
        fail ArgumentError, "Missing the required parameter 'location_id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_patch"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations/{locationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'locationId' + '}', location_id.to_s)

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
        :return_type => 'DepartmentLocation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_location_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Company Team
    # @param id 
    # @param location_id 
    # @param department_location 
    # @param [Hash] opts the optional parameters
    # @return [DepartmentLocation]
    def system_departments_id_locations_location_id_put(id, location_id, department_location, opts = {})
      data, _status_code, _headers = system_departments_id_locations_location_id_put_with_http_info(id, location_id, department_location, opts)
      return data
    end

    # 
    # Replace Company Team
    # @param id 
    # @param location_id 
    # @param department_location 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepartmentLocation, Fixnum, Hash)>] DepartmentLocation data, response status code and response headers
    def system_departments_id_locations_location_id_put_with_http_info(id, location_id, department_location, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_location_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_put"
      end
      # verify the required parameter 'location_id' is set
      if @api_client.config.client_side_validation && location_id.nil?
        fail ArgumentError, "Missing the required parameter 'location_id' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_put"
      end
      # verify the required parameter 'department_location' is set
      if @api_client.config.client_side_validation && department_location.nil?
        fail ArgumentError, "Missing the required parameter 'department_location' when calling DepartmentLocationsApi.system_departments_id_locations_location_id_put"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations/{locationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'locationId' + '}', location_id.to_s)

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
      post_body = @api_client.object_to_http_body(department_location)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DepartmentLocation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_location_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Department Location
    # @param id 
    # @param department_location 
    # @param [Hash] opts the optional parameters
    # @return [DepartmentLocation]
    def system_departments_id_locations_post(id, department_location, opts = {})
      data, _status_code, _headers = system_departments_id_locations_post_with_http_info(id, department_location, opts)
      return data
    end

    # 
    # Create Department Location
    # @param id 
    # @param department_location 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DepartmentLocation, Fixnum, Hash)>] DepartmentLocation data, response status code and response headers
    def system_departments_id_locations_post_with_http_info(id, department_location, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DepartmentLocationsApi.system_departments_id_locations_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DepartmentLocationsApi.system_departments_id_locations_post"
      end
      # verify the required parameter 'department_location' is set
      if @api_client.config.client_side_validation && department_location.nil?
        fail ArgumentError, "Missing the required parameter 'department_location' when calling DepartmentLocationsApi.system_departments_id_locations_post"
      end
      # resource path
      local_var_path = "/system/departments/{id}/locations".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(department_location)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DepartmentLocation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DepartmentLocationsApi#system_departments_id_locations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

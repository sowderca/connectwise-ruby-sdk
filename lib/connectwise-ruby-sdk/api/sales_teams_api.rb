
require "uri"

module ConnectWise
  class SalesTeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Sales Teams Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_sales_teams_count_get(opts = {})
      data, _status_code, _headers = system_sales_teams_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Sales Teams Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_sales_teams_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_count_get ..."
      end
      # resource path
      local_var_path = "/system/salesTeams/count"

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
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Sales Teams
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SalesTeam>]
    def system_sales_teams_get(opts = {})
      data, _status_code, _headers = system_sales_teams_get_with_http_info(opts)
      return data
    end

    # 
    # Get Sales Teams
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SalesTeam>, Fixnum, Hash)>] Array<SalesTeam> data, response status code and response headers
    def system_sales_teams_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_get ..."
      end
      # resource path
      local_var_path = "/system/salesTeams"

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
        :return_type => 'Array<SalesTeam>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Sales Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_sales_teams_id_delete(id, opts = {})
      system_sales_teams_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Sales Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_sales_teams_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesTeamsApi.system_sales_teams_id_delete"
      end
      # resource path
      local_var_path = "/system/salesTeams/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Sales Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SalesTeam]
    def system_sales_teams_id_get(id, opts = {})
      data, _status_code, _headers = system_sales_teams_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Sales Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesTeam, Fixnum, Hash)>] SalesTeam data, response status code and response headers
    def system_sales_teams_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesTeamsApi.system_sales_teams_id_get"
      end
      # resource path
      local_var_path = "/system/salesTeams/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Sales Team
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SalesTeam]
    def system_sales_teams_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_sales_teams_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Sales Team
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesTeam, Fixnum, Hash)>] SalesTeam data, response status code and response headers
    def system_sales_teams_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesTeamsApi.system_sales_teams_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SalesTeamsApi.system_sales_teams_id_patch"
      end
      # resource path
      local_var_path = "/system/salesTeams/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Sales Team
    # @param id 
    # @param sales_team 
    # @param [Hash] opts the optional parameters
    # @return [SalesTeam]
    def system_sales_teams_id_put(id, sales_team, opts = {})
      data, _status_code, _headers = system_sales_teams_id_put_with_http_info(id, sales_team, opts)
      return data
    end

    # 
    # Replace Sales Team
    # @param id 
    # @param sales_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesTeam, Fixnum, Hash)>] SalesTeam data, response status code and response headers
    def system_sales_teams_id_put_with_http_info(id, sales_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesTeamsApi.system_sales_teams_id_put"
      end
      # verify the required parameter 'sales_team' is set
      if @api_client.config.client_side_validation && sales_team.nil?
        fail ArgumentError, "Missing the required parameter 'sales_team' when calling SalesTeamsApi.system_sales_teams_id_put"
      end
      # resource path
      local_var_path = "/system/salesTeams/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(sales_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Sales Team
    # @param sales_team 
    # @param [Hash] opts the optional parameters
    # @return [SalesTeam]
    def system_sales_teams_post(sales_team, opts = {})
      data, _status_code, _headers = system_sales_teams_post_with_http_info(sales_team, opts)
      return data
    end

    # 
    # Create Sales Team
    # @param sales_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesTeam, Fixnum, Hash)>] SalesTeam data, response status code and response headers
    def system_sales_teams_post_with_http_info(sales_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesTeamsApi.system_sales_teams_post ..."
      end
      # verify the required parameter 'sales_team' is set
      if @api_client.config.client_side_validation && sales_team.nil?
        fail ArgumentError, "Missing the required parameter 'sales_team' when calling SalesTeamsApi.system_sales_teams_post"
      end
      # resource path
      local_var_path = "/system/salesTeams"

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
      post_body = @api_client.object_to_http_body(sales_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesTeamsApi#system_sales_teams_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

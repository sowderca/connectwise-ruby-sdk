
require "uri"

module ConnectWise
  class BoardTeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Teams Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_boards_id_teams_count_get(id, opts = {})
      data, _status_code, _headers = service_boards_id_teams_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Teams Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_boards_id_teams_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_count_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Teams
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<BoardTeam>]
    def service_boards_id_teams_get(id, opts = {})
      data, _status_code, _headers = service_boards_id_teams_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Teams
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<BoardTeam>, Fixnum, Hash)>] Array<BoardTeam> data, response status code and response headers
    def service_boards_id_teams_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<BoardTeam>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Team
    # @param id 
    # @param _board_team 
    # @param [Hash] opts the optional parameters
    # @return [BoardTeam]
    def service_boards_id_teams_post(id, _board_team, opts = {})
      data, _status_code, _headers = service_boards_id_teams_post_with_http_info(id, _board_team, opts)
      return data
    end

    # 
    # Create Team
    # @param id 
    # @param _board_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardTeam, Fixnum, Hash)>] BoardTeam data, response status code and response headers
    def service_boards_id_teams_post_with_http_info(id, _board_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_post"
      end
      # verify the required parameter '_board_team' is set
      if @api_client.config.client_side_validation && _board_team.nil?
        fail ArgumentError, "Missing the required parameter '_board_team' when calling BoardTeamsApi.service_boards_id_teams_post"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(_board_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_boards_id_teams_team_id_delete(id, team_id, opts = {})
      service_boards_id_teams_team_id_delete_with_http_info(id, team_id, opts)
      return nil
    end

    # 
    # Delete Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_boards_id_teams_team_id_delete_with_http_info(id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_team_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_team_id_delete"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling BoardTeamsApi.service_boards_id_teams_team_id_delete"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_team_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [BoardTeam]
    def service_boards_id_teams_team_id_get(id, team_id, opts = {})
      data, _status_code, _headers = service_boards_id_teams_team_id_get_with_http_info(id, team_id, opts)
      return data
    end

    # 
    # Get Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardTeam, Fixnum, Hash)>] BoardTeam data, response status code and response headers
    def service_boards_id_teams_team_id_get_with_http_info(id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_team_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_team_id_get"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling BoardTeamsApi.service_boards_id_teams_team_id_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'BoardTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_team_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Team
    # @param id 
    # @param team_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [BoardTeam]
    def service_boards_id_teams_team_id_patch(id, team_id, operations, opts = {})
      data, _status_code, _headers = service_boards_id_teams_team_id_patch_with_http_info(id, team_id, operations, opts)
      return data
    end

    # 
    # Update Team
    # @param id 
    # @param team_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardTeam, Fixnum, Hash)>] BoardTeam data, response status code and response headers
    def service_boards_id_teams_team_id_patch_with_http_info(id, team_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_team_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_team_id_patch"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling BoardTeamsApi.service_boards_id_teams_team_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling BoardTeamsApi.service_boards_id_teams_team_id_patch"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'BoardTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_team_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Team
    # @param id 
    # @param team_id 
    # @param _board_team 
    # @param [Hash] opts the optional parameters
    # @return [BoardTeam]
    def service_boards_id_teams_team_id_put(id, team_id, _board_team, opts = {})
      data, _status_code, _headers = service_boards_id_teams_team_id_put_with_http_info(id, team_id, _board_team, opts)
      return data
    end

    # 
    # Replace Team
    # @param id 
    # @param team_id 
    # @param _board_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardTeam, Fixnum, Hash)>] BoardTeam data, response status code and response headers
    def service_boards_id_teams_team_id_put_with_http_info(id, team_id, _board_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardTeamsApi.service_boards_id_teams_team_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardTeamsApi.service_boards_id_teams_team_id_put"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling BoardTeamsApi.service_boards_id_teams_team_id_put"
      end
      # verify the required parameter '_board_team' is set
      if @api_client.config.client_side_validation && _board_team.nil?
        fail ArgumentError, "Missing the required parameter '_board_team' when calling BoardTeamsApi.service_boards_id_teams_team_id_put"
      end
      # resource path
      local_var_path = "/service/boards/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
      post_body = @api_client.object_to_http_body(_board_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardTeamsApi#service_boards_id_teams_team_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

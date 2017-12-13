
require "uri"

module ConnectWise
  class TeamMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Team Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_team_members_count_get(opts = {})
      data, _status_code, _headers = service_team_members_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Team Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_team_members_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi.service_team_members_count_get ..."
      end
      # resource path
      local_var_path = "/service/teamMembers/count"

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
        @api_client.config.logger.debug "API called: TeamMembersApi#service_team_members_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Team Members
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<TeamMember>]
    def service_team_members_get(opts = {})
      data, _status_code, _headers = service_team_members_get_with_http_info(opts)
      return data
    end

    # 
    # Get Team Members
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<TeamMember>, Fixnum, Hash)>] Array<TeamMember> data, response status code and response headers
    def service_team_members_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi.service_team_members_get ..."
      end
      # resource path
      local_var_path = "/service/teamMembers"

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
        :return_type => 'Array<TeamMember>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#service_team_members_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_team_members_id_delete(id, opts = {})
      service_team_members_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Team By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_team_members_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi.service_team_members_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamMembersApi.service_team_members_id_delete"
      end
      # resource path
      local_var_path = "/service/teamMembers/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TeamMembersApi#service_team_members_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Team Member By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [TeamMember]
    def service_team_members_id_get(id, opts = {})
      data, _status_code, _headers = service_team_members_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Team Member By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeamMember, Fixnum, Hash)>] TeamMember data, response status code and response headers
    def service_team_members_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi.service_team_members_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamMembersApi.service_team_members_id_get"
      end
      # resource path
      local_var_path = "/service/teamMembers/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#service_team_members_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Team Member
    # @param team_member 
    # @param [Hash] opts the optional parameters
    # @return [TeamMember]
    def service_team_members_post(team_member, opts = {})
      data, _status_code, _headers = service_team_members_post_with_http_info(team_member, opts)
      return data
    end

    # 
    # Create Team Member
    # @param team_member 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TeamMember, Fixnum, Hash)>] TeamMember data, response status code and response headers
    def service_team_members_post_with_http_info(team_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi.service_team_members_post ..."
      end
      # verify the required parameter 'team_member' is set
      if @api_client.config.client_side_validation && team_member.nil?
        fail ArgumentError, "Missing the required parameter 'team_member' when calling TeamMembersApi.service_team_members_post"
      end
      # resource path
      local_var_path = "/service/teamMembers"

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
      post_body = @api_client.object_to_http_body(team_member)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#service_team_members_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

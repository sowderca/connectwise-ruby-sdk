
require "uri"

module ConnectWise
  class CompanyTeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Company Teams Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_companies_id_teams_count_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_teams_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Teams Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_companies_id_teams_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_count_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Teams
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyTeam>]
    def company_companies_id_teams_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_teams_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Teams
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyTeam>, Fixnum, Hash)>] Array<CompanyTeam> data, response status code and response headers
    def company_companies_id_teams_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<CompanyTeam>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Company Team
    # @param id 
    # @param company_team 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTeam]
    def company_companies_id_teams_post(id, company_team, opts = {})
      data, _status_code, _headers = company_companies_id_teams_post_with_http_info(id, company_team, opts)
      return data
    end

    # 
    # Create Company Team
    # @param id 
    # @param company_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTeam, Fixnum, Hash)>] CompanyTeam data, response status code and response headers
    def company_companies_id_teams_post_with_http_info(id, company_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_post"
      end
      # verify the required parameter 'company_team' is set
      if @api_client.config.client_side_validation && company_team.nil?
        fail ArgumentError, "Missing the required parameter 'company_team' when calling CompanyTeamsApi.company_companies_id_teams_post"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(company_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Company Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_teams_team_id_delete(id, team_id, opts = {})
      company_companies_id_teams_team_id_delete_with_http_info(id, team_id, opts)
      return nil
    end

    # 
    # Delete Company Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_teams_team_id_delete_with_http_info(id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_team_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_delete"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_delete"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_team_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTeam]
    def company_companies_id_teams_team_id_get(id, team_id, opts = {})
      data, _status_code, _headers = company_companies_id_teams_team_id_get_with_http_info(id, team_id, opts)
      return data
    end

    # 
    # Get Company Team By Id
    # @param id 
    # @param team_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTeam, Fixnum, Hash)>] CompanyTeam data, response status code and response headers
    def company_companies_id_teams_team_id_get_with_http_info(id, team_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_team_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_get"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'CompanyTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_team_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Company Team
    # @param id 
    # @param team_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTeam]
    def company_companies_id_teams_team_id_patch(id, team_id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_teams_team_id_patch_with_http_info(id, team_id, operations, opts)
      return data
    end

    # 
    # Update Company Team
    # @param id 
    # @param team_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTeam, Fixnum, Hash)>] CompanyTeam data, response status code and response headers
    def company_companies_id_teams_team_id_patch_with_http_info(id, team_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_team_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_patch"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CompanyTeamsApi.company_companies_id_teams_team_id_patch"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
        :return_type => 'CompanyTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_team_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Company Team
    # @param id 
    # @param team_id 
    # @param company_team 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTeam]
    def company_companies_id_teams_team_id_put(id, team_id, company_team, opts = {})
      data, _status_code, _headers = company_companies_id_teams_team_id_put_with_http_info(id, team_id, company_team, opts)
      return data
    end

    # 
    # Replace Company Team
    # @param id 
    # @param team_id 
    # @param company_team 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTeam, Fixnum, Hash)>] CompanyTeam data, response status code and response headers
    def company_companies_id_teams_team_id_put_with_http_info(id, team_id, company_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTeamsApi.company_companies_id_teams_team_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_put"
      end
      # verify the required parameter 'team_id' is set
      if @api_client.config.client_side_validation && team_id.nil?
        fail ArgumentError, "Missing the required parameter 'team_id' when calling CompanyTeamsApi.company_companies_id_teams_team_id_put"
      end
      # verify the required parameter 'company_team' is set
      if @api_client.config.client_side_validation && company_team.nil?
        fail ArgumentError, "Missing the required parameter 'company_team' when calling CompanyTeamsApi.company_companies_id_teams_team_id_put"
      end
      # resource path
      local_var_path = "/company/companies/{id}/teams/{teamId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'teamId' + '}', team_id.to_s)

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
      post_body = @api_client.object_to_http_body(company_team)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyTeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTeamsApi#company_companies_id_teams_team_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

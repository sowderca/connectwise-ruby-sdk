
require "uri"

module ConnectWise
  class BoardExcludedMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Excluded Members Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_boards_id_excluded_members_count_get(id, opts = {})
      data, _status_code, _headers = service_boards_id_excluded_members_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Excluded Members Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_boards_id_excluded_members_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardExcludedMembersApi.service_boards_id_excluded_members_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_count_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/excludedMembers/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BoardExcludedMembersApi#service_boards_id_excluded_members_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Excluded Member By Id
    # @param id 
    # @param excluded_member_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_boards_id_excluded_members_excluded_member_id_delete(id, excluded_member_id, opts = {})
      service_boards_id_excluded_members_excluded_member_id_delete_with_http_info(id, excluded_member_id, opts)
      return nil
    end

    # 
    # Delete Excluded Member By Id
    # @param id 
    # @param excluded_member_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_boards_id_excluded_members_excluded_member_id_delete_with_http_info(id, excluded_member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_delete"
      end
      # verify the required parameter 'excluded_member_id' is set
      if @api_client.config.client_side_validation && excluded_member_id.nil?
        fail ArgumentError, "Missing the required parameter 'excluded_member_id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_delete"
      end
      # resource path
      local_var_path = "/service/boards/{id}/excludedMembers/{excludedMemberId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'excludedMemberId' + '}', excluded_member_id.to_s)

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
        @api_client.config.logger.debug "API called: BoardExcludedMembersApi#service_boards_id_excluded_members_excluded_member_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Excluded Member By Id
    # @param id 
    # @param excluded_member_id 
    # @param [Hash] opts the optional parameters
    # @return [BoardExcludedMember]
    def service_boards_id_excluded_members_excluded_member_id_get(id, excluded_member_id, opts = {})
      data, _status_code, _headers = service_boards_id_excluded_members_excluded_member_id_get_with_http_info(id, excluded_member_id, opts)
      return data
    end

    # 
    # Get Excluded Member By Id
    # @param id 
    # @param excluded_member_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardExcludedMember, Fixnum, Hash)>] BoardExcludedMember data, response status code and response headers
    def service_boards_id_excluded_members_excluded_member_id_get_with_http_info(id, excluded_member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_get"
      end
      # verify the required parameter 'excluded_member_id' is set
      if @api_client.config.client_side_validation && excluded_member_id.nil?
        fail ArgumentError, "Missing the required parameter 'excluded_member_id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_excluded_member_id_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/excludedMembers/{excludedMemberId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'excludedMemberId' + '}', excluded_member_id.to_s)

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
        :return_type => 'BoardExcludedMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardExcludedMembersApi#service_boards_id_excluded_members_excluded_member_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Excluded Members
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<BoardExcludedMember>]
    def service_boards_id_excluded_members_get(id, opts = {})
      data, _status_code, _headers = service_boards_id_excluded_members_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Excluded Members
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<BoardExcludedMember>, Fixnum, Hash)>] Array<BoardExcludedMember> data, response status code and response headers
    def service_boards_id_excluded_members_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardExcludedMembersApi.service_boards_id_excluded_members_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_get"
      end
      # resource path
      local_var_path = "/service/boards/{id}/excludedMembers".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<BoardExcludedMember>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardExcludedMembersApi#service_boards_id_excluded_members_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Excluded Member
    # @param id 
    # @param board_excluded_member 
    # @param [Hash] opts the optional parameters
    # @return [BoardExcludedMember]
    def service_boards_id_excluded_members_post(id, board_excluded_member, opts = {})
      data, _status_code, _headers = service_boards_id_excluded_members_post_with_http_info(id, board_excluded_member, opts)
      return data
    end

    # 
    # Create Excluded Member
    # @param id 
    # @param board_excluded_member 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardExcludedMember, Fixnum, Hash)>] BoardExcludedMember data, response status code and response headers
    def service_boards_id_excluded_members_post_with_http_info(id, board_excluded_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardExcludedMembersApi.service_boards_id_excluded_members_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_post"
      end
      # verify the required parameter 'board_excluded_member' is set
      if @api_client.config.client_side_validation && board_excluded_member.nil?
        fail ArgumentError, "Missing the required parameter 'board_excluded_member' when calling BoardExcludedMembersApi.service_boards_id_excluded_members_post"
      end
      # resource path
      local_var_path = "/service/boards/{id}/excludedMembers".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(board_excluded_member)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardExcludedMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardExcludedMembersApi#service_boards_id_excluded_members_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

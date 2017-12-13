
require "uri"

module ConnectWise
  class MembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_members_count_get(opts = {})
      data, _status_code, _headers = system_members_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Members Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_members_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_count_get ..."
      end
      # resource path
      local_var_path = "/system/members/count"

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
        @api_client.config.logger.debug "API called: MembersApi#system_members_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Members
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Member>]
    def system_members_get(opts = {})
      data, _status_code, _headers = system_members_get_with_http_info(opts)
      return data
    end

    # 
    # Get Members
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Member>, Fixnum, Hash)>] Array<Member> data, response status code and response headers
    def system_members_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_get ..."
      end
      # resource path
      local_var_path = "/system/members"

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
        :return_type => 'Array<Member>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Deactivatemember
    # @param id 
    # @param item 
    # @param [Hash] opts the optional parameters
    # @return [MemberDeactivation]
    def system_members_id_deactivate_post(id, item, opts = {})
      data, _status_code, _headers = system_members_id_deactivate_post_with_http_info(id, item, opts)
      return data
    end

    # 
    # Deactivatemember
    # @param id 
    # @param item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberDeactivation, Fixnum, Hash)>] MemberDeactivation data, response status code and response headers
    def system_members_id_deactivate_post_with_http_info(id, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_id_deactivate_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.system_members_id_deactivate_post"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling MembersApi.system_members_id_deactivate_post"
      end
      # resource path
      local_var_path = "/system/members/{id}/deactivate".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberDeactivation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_id_deactivate_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Member By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def system_members_id_get(id, opts = {})
      data, _status_code, _headers = system_members_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Member By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def system_members_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.system_members_id_get"
      end
      # resource path
      local_var_path = "/system/members/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Member
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def system_members_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_members_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Member
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def system_members_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.system_members_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling MembersApi.system_members_id_patch"
      end
      # resource path
      local_var_path = "/system/members/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Member
    # @param id 
    # @param member 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def system_members_id_put(id, member, opts = {})
      data, _status_code, _headers = system_members_id_put_with_http_info(id, member, opts)
      return data
    end

    # 
    # Replace Member
    # @param id 
    # @param member 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def system_members_id_put_with_http_info(id, member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.system_members_id_put"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling MembersApi.system_members_id_put"
      end
      # resource path
      local_var_path = "/system/members/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(member)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Member Unused Time Sheets
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_members_id_unused_time_sheets_delete(id, opts = {})
      system_members_id_unused_time_sheets_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Member Unused Time Sheets
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_members_id_unused_time_sheets_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_id_unused_time_sheets_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.system_members_id_unused_time_sheets_delete"
      end
      # resource path
      local_var_path = "/system/members/{id}/unusedTimeSheets".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MembersApi#system_members_id_unused_time_sheets_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Token By Member Identifier
    # @param member_identifier 
    # @param [Hash] opts the optional parameters
    # @return [Token]
    def system_members_member_identifier_tokens_post(member_identifier, opts = {})
      data, _status_code, _headers = system_members_member_identifier_tokens_post_with_http_info(member_identifier, opts)
      return data
    end

    # 
    # Create Token By Member Identifier
    # @param member_identifier 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Token, Fixnum, Hash)>] Token data, response status code and response headers
    def system_members_member_identifier_tokens_post_with_http_info(member_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_member_identifier_tokens_post ..."
      end
      # verify the required parameter 'member_identifier' is set
      if @api_client.config.client_side_validation && member_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'member_identifier' when calling MembersApi.system_members_member_identifier_tokens_post"
      end
      # resource path
      local_var_path = "/system/members/{memberIdentifier}/tokens".sub('{' + 'memberIdentifier' + '}', member_identifier.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Token')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_member_identifier_tokens_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Member
    # @param member 
    # @param [Hash] opts the optional parameters
    # @return [Member]
    def system_members_post(member, opts = {})
      data, _status_code, _headers = system_members_post_with_http_info(member, opts)
      return data
    end

    # 
    # Create Member
    # @param member 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Member, Fixnum, Hash)>] Member data, response status code and response headers
    def system_members_post_with_http_info(member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MembersApi.system_members_post ..."
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling MembersApi.system_members_post"
      end
      # resource path
      local_var_path = "/system/members"

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
      post_body = @api_client.object_to_http_body(member)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Member')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#system_members_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

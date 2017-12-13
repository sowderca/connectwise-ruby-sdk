
require "uri"

module ConnectWise
  class MemberAccrualsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Member Accrual By Id
    # @param id 
    # @param accrual_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_members_id_accruals_accrual_id_delete(id, accrual_id, opts = {})
      system_members_id_accruals_accrual_id_delete_with_http_info(id, accrual_id, opts)
      return nil
    end

    # 
    # Delete Member Accrual By Id
    # @param id 
    # @param accrual_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_members_id_accruals_accrual_id_delete_with_http_info(id, accrual_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_accrual_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_delete"
      end
      # verify the required parameter 'accrual_id' is set
      if @api_client.config.client_side_validation && accrual_id.nil?
        fail ArgumentError, "Missing the required parameter 'accrual_id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_delete"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals/{accrualId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'accrualId' + '}', accrual_id.to_s)

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
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_accrual_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Member Accrual By Id
    # @param id 
    # @param accrual_id 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccrual]
    def system_members_id_accruals_accrual_id_get(id, accrual_id, opts = {})
      data, _status_code, _headers = system_members_id_accruals_accrual_id_get_with_http_info(id, accrual_id, opts)
      return data
    end

    # 
    # Get Member Accrual By Id
    # @param id 
    # @param accrual_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccrual, Fixnum, Hash)>] MemberAccrual data, response status code and response headers
    def system_members_id_accruals_accrual_id_get_with_http_info(id, accrual_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_accrual_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_get"
      end
      # verify the required parameter 'accrual_id' is set
      if @api_client.config.client_side_validation && accrual_id.nil?
        fail ArgumentError, "Missing the required parameter 'accrual_id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_get"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals/{accrualId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'accrualId' + '}', accrual_id.to_s)

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
        :return_type => 'MemberAccrual')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_accrual_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Member Accrual
    # @param id 
    # @param accrual_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccrual]
    def system_members_id_accruals_accrual_id_patch(id, accrual_id, operations, opts = {})
      data, _status_code, _headers = system_members_id_accruals_accrual_id_patch_with_http_info(id, accrual_id, operations, opts)
      return data
    end

    # 
    # Update Member Accrual
    # @param id 
    # @param accrual_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccrual, Fixnum, Hash)>] MemberAccrual data, response status code and response headers
    def system_members_id_accruals_accrual_id_patch_with_http_info(id, accrual_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_accrual_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_patch"
      end
      # verify the required parameter 'accrual_id' is set
      if @api_client.config.client_side_validation && accrual_id.nil?
        fail ArgumentError, "Missing the required parameter 'accrual_id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_patch"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals/{accrualId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'accrualId' + '}', accrual_id.to_s)

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
        :return_type => 'MemberAccrual')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_accrual_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Member Accrual
    # @param id 
    # @param accrual_id 
    # @param member_accrual 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccrual]
    def system_members_id_accruals_accrual_id_put(id, accrual_id, member_accrual, opts = {})
      data, _status_code, _headers = system_members_id_accruals_accrual_id_put_with_http_info(id, accrual_id, member_accrual, opts)
      return data
    end

    # 
    # Replace Member Accrual
    # @param id 
    # @param accrual_id 
    # @param member_accrual 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccrual, Fixnum, Hash)>] MemberAccrual data, response status code and response headers
    def system_members_id_accruals_accrual_id_put_with_http_info(id, accrual_id, member_accrual, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_accrual_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_put"
      end
      # verify the required parameter 'accrual_id' is set
      if @api_client.config.client_side_validation && accrual_id.nil?
        fail ArgumentError, "Missing the required parameter 'accrual_id' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_put"
      end
      # verify the required parameter 'member_accrual' is set
      if @api_client.config.client_side_validation && member_accrual.nil?
        fail ArgumentError, "Missing the required parameter 'member_accrual' when calling MemberAccrualsApi.system_members_id_accruals_accrual_id_put"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals/{accrualId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'accrualId' + '}', accrual_id.to_s)

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
      post_body = @api_client.object_to_http_body(member_accrual)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberAccrual')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_accrual_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Member Accruals Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_members_id_accruals_count_get(id, opts = {})
      data, _status_code, _headers = system_members_id_accruals_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Member Accruals Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_members_id_accruals_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_count_get"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Member Accruals
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<MemberAccrual>]
    def system_members_id_accruals_get(id, opts = {})
      data, _status_code, _headers = system_members_id_accruals_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Member Accruals
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<MemberAccrual>, Fixnum, Hash)>] Array<MemberAccrual> data, response status code and response headers
    def system_members_id_accruals_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_get"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<MemberAccrual>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Member Accrual
    # @param id 
    # @param member_accrual 
    # @param [Hash] opts the optional parameters
    # @return [MemberAccrual]
    def system_members_id_accruals_post(id, member_accrual, opts = {})
      data, _status_code, _headers = system_members_id_accruals_post_with_http_info(id, member_accrual, opts)
      return data
    end

    # 
    # Create Member Accrual
    # @param id 
    # @param member_accrual 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAccrual, Fixnum, Hash)>] MemberAccrual data, response status code and response headers
    def system_members_id_accruals_post_with_http_info(id, member_accrual, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MemberAccrualsApi.system_members_id_accruals_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MemberAccrualsApi.system_members_id_accruals_post"
      end
      # verify the required parameter 'member_accrual' is set
      if @api_client.config.client_side_validation && member_accrual.nil?
        fail ArgumentError, "Missing the required parameter 'member_accrual' when calling MemberAccrualsApi.system_members_id_accruals_post"
      end
      # resource path
      local_var_path = "/system/members/{id}/accruals".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(member_accrual)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberAccrual')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAccrualsApi#system_members_id_accruals_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

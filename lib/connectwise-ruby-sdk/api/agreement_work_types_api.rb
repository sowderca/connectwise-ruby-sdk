
require "uri"

module ConnectWise
  class AgreementWorkTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Work Types Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_agreements_id_worktypes_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Types Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreements_id_worktypes_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_count_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Types
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AgreementWorkType>]
    def finance_agreements_id_worktypes_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Types
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AgreementWorkType>, Fixnum, Hash)>] Array<AgreementWorkType> data, response status code and response headers
    def finance_agreements_id_worktypes_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AgreementWorkType>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Work Type
    # @param id 
    # @param work_type 
    # @param [Hash] opts the optional parameters
    # @return [AgreementWorkType]
    def finance_agreements_id_worktypes_post(id, work_type, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_post_with_http_info(id, work_type, opts)
      return data
    end

    # 
    # Create Work Type
    # @param id 
    # @param work_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementWorkType, Fixnum, Hash)>] AgreementWorkType data, response status code and response headers
    def finance_agreements_id_worktypes_post_with_http_info(id, work_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_post"
      end
      # verify the required parameter 'work_type' is set
      if @api_client.config.client_side_validation && work_type.nil?
        fail ArgumentError, "Missing the required parameter 'work_type' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_post"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(work_type)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementWorkType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Work Type By Id
    # @param id 
    # @param worktype_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreements_id_worktypes_worktype_id_delete(id, worktype_id, opts = {})
      finance_agreements_id_worktypes_worktype_id_delete_with_http_info(id, worktype_id, opts)
      return nil
    end

    # 
    # Delete Work Type By Id
    # @param id 
    # @param worktype_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreements_id_worktypes_worktype_id_delete_with_http_info(id, worktype_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_delete"
      end
      # verify the required parameter 'worktype_id' is set
      if @api_client.config.client_side_validation && worktype_id.nil?
        fail ArgumentError, "Missing the required parameter 'worktype_id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes/{worktypeId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'worktypeId' + '}', worktype_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_worktype_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Type By Id
    # @param id 
    # @param worktype_id 
    # @param [Hash] opts the optional parameters
    # @return [AgreementWorkType]
    def finance_agreements_id_worktypes_worktype_id_get(id, worktype_id, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_worktype_id_get_with_http_info(id, worktype_id, opts)
      return data
    end

    # 
    # Get Work Type By Id
    # @param id 
    # @param worktype_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementWorkType, Fixnum, Hash)>] AgreementWorkType data, response status code and response headers
    def finance_agreements_id_worktypes_worktype_id_get_with_http_info(id, worktype_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_get"
      end
      # verify the required parameter 'worktype_id' is set
      if @api_client.config.client_side_validation && worktype_id.nil?
        fail ArgumentError, "Missing the required parameter 'worktype_id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes/{worktypeId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'worktypeId' + '}', worktype_id.to_s)

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
        :return_type => 'AgreementWorkType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_worktype_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Work Type
    # @param id 
    # @param worktype_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [AgreementWorkType]
    def finance_agreements_id_worktypes_worktype_id_patch(id, worktype_id, operations, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_worktype_id_patch_with_http_info(id, worktype_id, operations, opts)
      return data
    end

    # 
    # Update Work Type
    # @param id 
    # @param worktype_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementWorkType, Fixnum, Hash)>] AgreementWorkType data, response status code and response headers
    def finance_agreements_id_worktypes_worktype_id_patch_with_http_info(id, worktype_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_patch"
      end
      # verify the required parameter 'worktype_id' is set
      if @api_client.config.client_side_validation && worktype_id.nil?
        fail ArgumentError, "Missing the required parameter 'worktype_id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_patch"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes/{worktypeId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'worktypeId' + '}', worktype_id.to_s)

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
        :return_type => 'AgreementWorkType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_worktype_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Work Type
    # @param id 
    # @param worktype_id 
    # @param work_type 
    # @param [Hash] opts the optional parameters
    # @return [AgreementWorkType]
    def finance_agreements_id_worktypes_worktype_id_put(id, worktype_id, work_type, opts = {})
      data, _status_code, _headers = finance_agreements_id_worktypes_worktype_id_put_with_http_info(id, worktype_id, work_type, opts)
      return data
    end

    # 
    # Replace Work Type
    # @param id 
    # @param worktype_id 
    # @param work_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementWorkType, Fixnum, Hash)>] AgreementWorkType data, response status code and response headers
    def finance_agreements_id_worktypes_worktype_id_put_with_http_info(id, worktype_id, work_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_put"
      end
      # verify the required parameter 'worktype_id' is set
      if @api_client.config.client_side_validation && worktype_id.nil?
        fail ArgumentError, "Missing the required parameter 'worktype_id' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_put"
      end
      # verify the required parameter 'work_type' is set
      if @api_client.config.client_side_validation && work_type.nil?
        fail ArgumentError, "Missing the required parameter 'work_type' when calling AgreementWorkTypesApi.finance_agreements_id_worktypes_worktype_id_put"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/worktypes/{worktypeId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'worktypeId' + '}', worktype_id.to_s)

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
      post_body = @api_client.object_to_http_body(work_type)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementWorkType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementWorkTypesApi#finance_agreements_id_worktypes_worktype_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class AgreementTypeWorkRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Work Roles Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_agreement_types_id_workroles_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Roles Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreement_types_id_workroles_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_count_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Roles
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AgreementTypeWorkRole>]
    def finance_agreement_types_id_workroles_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Roles
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AgreementTypeWorkRole>, Fixnum, Hash)>] Array<AgreementTypeWorkRole> data, response status code and response headers
    def finance_agreement_types_id_workroles_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AgreementTypeWorkRole>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Work Role
    # @param id 
    # @param work_role 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRole]
    def finance_agreement_types_id_workroles_post(id, work_role, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_post_with_http_info(id, work_role, opts)
      return data
    end

    # 
    # Create Work Role
    # @param id 
    # @param work_role 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRole, Fixnum, Hash)>] AgreementTypeWorkRole data, response status code and response headers
    def finance_agreement_types_id_workroles_post_with_http_info(id, work_role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_post"
      end
      # verify the required parameter 'work_role' is set
      if @api_client.config.client_side_validation && work_role.nil?
        fail ArgumentError, "Missing the required parameter 'work_role' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_post"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(work_role)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementTypeWorkRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Work Role By Id
    # @param id 
    # @param work_role_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreement_types_id_workroles_work_role_id_delete(id, work_role_id, opts = {})
      finance_agreement_types_id_workroles_work_role_id_delete_with_http_info(id, work_role_id, opts)
      return nil
    end

    # 
    # Delete Work Role By Id
    # @param id 
    # @param work_role_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreement_types_id_workroles_work_role_id_delete_with_http_info(id, work_role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_delete"
      end
      # verify the required parameter 'work_role_id' is set
      if @api_client.config.client_side_validation && work_role_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles/{workRoleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleId' + '}', work_role_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_work_role_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Role By Id
    # @param id 
    # @param work_role_id 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRole]
    def finance_agreement_types_id_workroles_work_role_id_get(id, work_role_id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_work_role_id_get_with_http_info(id, work_role_id, opts)
      return data
    end

    # 
    # Get Work Role By Id
    # @param id 
    # @param work_role_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRole, Fixnum, Hash)>] AgreementTypeWorkRole data, response status code and response headers
    def finance_agreement_types_id_workroles_work_role_id_get_with_http_info(id, work_role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_get"
      end
      # verify the required parameter 'work_role_id' is set
      if @api_client.config.client_side_validation && work_role_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles/{workRoleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleId' + '}', work_role_id.to_s)

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
        :return_type => 'AgreementTypeWorkRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_work_role_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Work Role
    # @param id 
    # @param work_role_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRole]
    def finance_agreement_types_id_workroles_work_role_id_patch(id, work_role_id, operations, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_work_role_id_patch_with_http_info(id, work_role_id, operations, opts)
      return data
    end

    # 
    # Update Work Role
    # @param id 
    # @param work_role_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRole, Fixnum, Hash)>] AgreementTypeWorkRole data, response status code and response headers
    def finance_agreement_types_id_workroles_work_role_id_patch_with_http_info(id, work_role_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_patch"
      end
      # verify the required parameter 'work_role_id' is set
      if @api_client.config.client_side_validation && work_role_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_patch"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles/{workRoleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleId' + '}', work_role_id.to_s)

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
        :return_type => 'AgreementTypeWorkRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_work_role_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Work Role
    # @param id 
    # @param work_role_id 
    # @param work_role 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRole]
    def finance_agreement_types_id_workroles_work_role_id_put(id, work_role_id, work_role, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_workroles_work_role_id_put_with_http_info(id, work_role_id, work_role, opts)
      return data
    end

    # 
    # Replace Work Role
    # @param id 
    # @param work_role_id 
    # @param work_role 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRole, Fixnum, Hash)>] AgreementTypeWorkRole data, response status code and response headers
    def finance_agreement_types_id_workroles_work_role_id_put_with_http_info(id, work_role_id, work_role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_put"
      end
      # verify the required parameter 'work_role_id' is set
      if @api_client.config.client_side_validation && work_role_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_id' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_put"
      end
      # verify the required parameter 'work_role' is set
      if @api_client.config.client_side_validation && work_role.nil?
        fail ArgumentError, "Missing the required parameter 'work_role' when calling AgreementTypeWorkRolesApi.finance_agreement_types_id_workroles_work_role_id_put"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workroles/{workRoleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleId' + '}', work_role_id.to_s)

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
      post_body = @api_client.object_to_http_body(work_role)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementTypeWorkRole')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRolesApi#finance_agreement_types_id_workroles_work_role_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

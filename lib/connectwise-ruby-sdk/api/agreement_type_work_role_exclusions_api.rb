
require "uri"

module ConnectWise
  class AgreementTypeWorkRoleExclusionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Work Role Exclusions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_agreement_types_id_work_role_exclusions_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_work_role_exclusions_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Role Exclusions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreement_types_id_work_role_exclusions_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_count_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workRoleExclusions/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeWorkRoleExclusionsApi#finance_agreement_types_id_work_role_exclusions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Role Exclusions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AgreementTypeWorkRoleExclusion>]
    def finance_agreement_types_id_work_role_exclusions_get(id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_work_role_exclusions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Work Role Exclusions
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AgreementTypeWorkRoleExclusion>, Fixnum, Hash)>] Array<AgreementTypeWorkRoleExclusion> data, response status code and response headers
    def finance_agreement_types_id_work_role_exclusions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workRoleExclusions".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AgreementTypeWorkRoleExclusion>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRoleExclusionsApi#finance_agreement_types_id_work_role_exclusions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Work Role Exclusion
    # @param id 
    # @param work_role_exclusion 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRoleExclusion]
    def finance_agreement_types_id_work_role_exclusions_post(id, work_role_exclusion, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_work_role_exclusions_post_with_http_info(id, work_role_exclusion, opts)
      return data
    end

    # 
    # Create Work Role Exclusion
    # @param id 
    # @param work_role_exclusion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRoleExclusion, Fixnum, Hash)>] AgreementTypeWorkRoleExclusion data, response status code and response headers
    def finance_agreement_types_id_work_role_exclusions_post_with_http_info(id, work_role_exclusion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_post"
      end
      # verify the required parameter 'work_role_exclusion' is set
      if @api_client.config.client_side_validation && work_role_exclusion.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_exclusion' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_post"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workRoleExclusions".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(work_role_exclusion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AgreementTypeWorkRoleExclusion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRoleExclusionsApi#finance_agreement_types_id_work_role_exclusions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Work Role Exclusion By Id
    # @param id 
    # @param work_role_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete(id, work_role_exclusion_id, opts = {})
      finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete_with_http_info(id, work_role_exclusion_id, opts)
      return nil
    end

    # 
    # Delete Work Role Exclusion By Id
    # @param id 
    # @param work_role_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete_with_http_info(id, work_role_exclusion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete"
      end
      # verify the required parameter 'work_role_exclusion_id' is set
      if @api_client.config.client_side_validation && work_role_exclusion_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_exclusion_id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleExclusionId' + '}', work_role_exclusion_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementTypeWorkRoleExclusionsApi#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Work Role Exclusion By Id
    # @param id 
    # @param work_role_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [AgreementTypeWorkRoleExclusion]
    def finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get(id, work_role_exclusion_id, opts = {})
      data, _status_code, _headers = finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get_with_http_info(id, work_role_exclusion_id, opts)
      return data
    end

    # 
    # Get Work Role Exclusion By Id
    # @param id 
    # @param work_role_exclusion_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AgreementTypeWorkRoleExclusion, Fixnum, Hash)>] AgreementTypeWorkRoleExclusion data, response status code and response headers
    def finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get_with_http_info(id, work_role_exclusion_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get"
      end
      # verify the required parameter 'work_role_exclusion_id' is set
      if @api_client.config.client_side_validation && work_role_exclusion_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_role_exclusion_id' when calling AgreementTypeWorkRoleExclusionsApi.finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get"
      end
      # resource path
      local_var_path = "/finance/agreementTypes/{id}/workRoleExclusions/{workRoleExclusionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'workRoleExclusionId' + '}', work_role_exclusion_id.to_s)

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
        :return_type => 'AgreementTypeWorkRoleExclusion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementTypeWorkRoleExclusionsApi#finance_agreement_types_id_work_role_exclusions_work_role_exclusion_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

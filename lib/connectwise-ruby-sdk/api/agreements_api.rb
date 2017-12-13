
require "uri"

module ConnectWise
  class AgreementsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Agreements Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Count]
    def finance_agreements_count_get(opts = {})
      data, _status_code, _headers = finance_agreements_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Agreements Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreements_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_count_get ..."
      end
      # resource path
      local_var_path = "/finance/agreements/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'customFieldConditions'] = opts[:'custom_field_conditions'] if !opts[:'custom_field_conditions'].nil?

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
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreements
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Agreement>]
    def finance_agreements_get(opts = {})
      data, _status_code, _headers = finance_agreements_get_with_http_info(opts)
      return data
    end

    # 
    # Get Agreements
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Agreement>, Fixnum, Hash)>] Array<Agreement> data, response status code and response headers
    def finance_agreements_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_get ..."
      end
      # resource path
      local_var_path = "/finance/agreements"

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
        :return_type => 'Array<Agreement>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Configuration Association
    # @param id 
    # @param configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreements_id_configurations_configuration_id_delete(id, configuration_id, opts = {})
      finance_agreements_id_configurations_configuration_id_delete_with_http_info(id, configuration_id, opts)
      return nil
    end

    # 
    # Delete Configuration Association
    # @param id 
    # @param configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreements_id_configurations_configuration_id_delete_with_http_info(id, configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_configurations_configuration_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_configurations_configuration_id_delete"
      end
      # verify the required parameter 'configuration_id' is set
      if @api_client.config.client_side_validation && configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_id' when calling AgreementsApi.finance_agreements_id_configurations_configuration_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/configurations/{configurationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'configurationId' + '}', configuration_id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_configurations_configuration_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configuration Association
    # @param id 
    # @param configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationReference]
    def finance_agreements_id_configurations_configuration_id_get(id, configuration_id, opts = {})
      data, _status_code, _headers = finance_agreements_id_configurations_configuration_id_get_with_http_info(id, configuration_id, opts)
      return data
    end

    # 
    # Get Configuration Association
    # @param id 
    # @param configuration_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationReference, Fixnum, Hash)>] ConfigurationReference data, response status code and response headers
    def finance_agreements_id_configurations_configuration_id_get_with_http_info(id, configuration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_configurations_configuration_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_configurations_configuration_id_get"
      end
      # verify the required parameter 'configuration_id' is set
      if @api_client.config.client_side_validation && configuration_id.nil?
        fail ArgumentError, "Missing the required parameter 'configuration_id' when calling AgreementsApi.finance_agreements_id_configurations_configuration_id_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/configurations/{configurationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'configurationId' + '}', configuration_id.to_s)

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
        :return_type => 'ConfigurationReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_configurations_configuration_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement Configurations Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def finance_agreements_id_configurations_count_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_configurations_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Agreement Configurations Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_agreements_id_configurations_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_configurations_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_configurations_count_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/configurations/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_configurations_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement Configurations
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ConfigurationReference>]
    def finance_agreements_id_configurations_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_configurations_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Agreement Configurations
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ConfigurationReference>, Fixnum, Hash)>] Array<ConfigurationReference> data, response status code and response headers
    def finance_agreements_id_configurations_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_configurations_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_configurations_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/configurations".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<ConfigurationReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_configurations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Configuration Association
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationReference]
    def finance_agreements_id_configurations_post(id, configuration, opts = {})
      data, _status_code, _headers = finance_agreements_id_configurations_post_with_http_info(id, configuration, opts)
      return data
    end

    # 
    # Create Configuration Association
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationReference, Fixnum, Hash)>] ConfigurationReference data, response status code and response headers
    def finance_agreements_id_configurations_post_with_http_info(id, configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_configurations_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_configurations_post"
      end
      # verify the required parameter 'configuration' is set
      if @api_client.config.client_side_validation && configuration.nil?
        fail ArgumentError, "Missing the required parameter 'configuration' when calling AgreementsApi.finance_agreements_id_configurations_post"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}/configurations".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConfigurationReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_configurations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Agreement By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_agreements_id_delete(id, opts = {})
      finance_agreements_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Agreement By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_agreements_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_delete"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Agreement By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Agreement]
    def finance_agreements_id_get(id, opts = {})
      data, _status_code, _headers = finance_agreements_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Agreement By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agreement, Fixnum, Hash)>] Agreement data, response status code and response headers
    def finance_agreements_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_get"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Agreement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Agreement
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Agreement]
    def finance_agreements_id_patch(id, operations, opts = {})
      data, _status_code, _headers = finance_agreements_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Agreement
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agreement, Fixnum, Hash)>] Agreement data, response status code and response headers
    def finance_agreements_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling AgreementsApi.finance_agreements_id_patch"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Agreement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Agreement
    # @param id 
    # @param agreement 
    # @param [Hash] opts the optional parameters
    # @return [Agreement]
    def finance_agreements_id_put(id, agreement, opts = {})
      data, _status_code, _headers = finance_agreements_id_put_with_http_info(id, agreement, opts)
      return data
    end

    # 
    # Replace Agreement
    # @param id 
    # @param agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agreement, Fixnum, Hash)>] Agreement data, response status code and response headers
    def finance_agreements_id_put_with_http_info(id, agreement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgreementsApi.finance_agreements_id_put"
      end
      # verify the required parameter 'agreement' is set
      if @api_client.config.client_side_validation && agreement.nil?
        fail ArgumentError, "Missing the required parameter 'agreement' when calling AgreementsApi.finance_agreements_id_put"
      end
      # resource path
      local_var_path = "/finance/agreements/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(agreement)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Agreement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Agreement
    # @param agreement 
    # @param [Hash] opts the optional parameters
    # @return [Agreement]
    def finance_agreements_post(agreement, opts = {})
      data, _status_code, _headers = finance_agreements_post_with_http_info(agreement, opts)
      return data
    end

    # 
    # Create Agreement
    # @param agreement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agreement, Fixnum, Hash)>] Agreement data, response status code and response headers
    def finance_agreements_post_with_http_info(agreement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AgreementsApi.finance_agreements_post ..."
      end
      # verify the required parameter 'agreement' is set
      if @api_client.config.client_side_validation && agreement.nil?
        fail ArgumentError, "Missing the required parameter 'agreement' when calling AgreementsApi.finance_agreements_post"
      end
      # resource path
      local_var_path = "/finance/agreements"

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
      post_body = @api_client.object_to_http_body(agreement)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Agreement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgreementsApi#finance_agreements_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

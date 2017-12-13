
require "uri"

module ConnectWise
  class PortalConfigurationInvoiceSetupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Portal Configuration Invoice Setup Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_portal_configurations_id_invoice_setups_count_get(id, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Portal Configuration Invoice Setup Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_count_get"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Portal Configuration Invoice Setup
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PortalConfigurationInvoiceSetup>]
    def system_portal_configurations_id_invoice_setups_get(id, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Portal Configuration Invoice Setup
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PortalConfigurationInvoiceSetup>, Fixnum, Hash)>] Array<PortalConfigurationInvoiceSetup> data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_get"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<PortalConfigurationInvoiceSetup>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Portal Configuration Invoice Setup By Id
    # @param id 
    # @param invoice_setup_id 
    # @param [Hash] opts the optional parameters
    # @return [PortalConfigurationInvoiceSetup]
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_get(id, invoice_setup_id, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_invoice_setup_id_get_with_http_info(id, invoice_setup_id, opts)
      return data
    end

    # 
    # Get Portal Configuration Invoice Setup By Id
    # @param id 
    # @param invoice_setup_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalConfigurationInvoiceSetup, Fixnum, Hash)>] PortalConfigurationInvoiceSetup data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_get_with_http_info(id, invoice_setup_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_get"
      end
      # verify the required parameter 'invoice_setup_id' is set
      if @api_client.config.client_side_validation && invoice_setup_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_setup_id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_get"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'invoiceSetupId' + '}', invoice_setup_id.to_s)

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
        :return_type => 'PortalConfigurationInvoiceSetup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_invoice_setup_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Portal Configuration Invoice Setup
    # @param id 
    # @param invoice_setup_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PortalConfigurationInvoiceSetup]
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_patch(id, invoice_setup_id, operations, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_invoice_setup_id_patch_with_http_info(id, invoice_setup_id, operations, opts)
      return data
    end

    # 
    # Update Portal Configuration Invoice Setup
    # @param id 
    # @param invoice_setup_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalConfigurationInvoiceSetup, Fixnum, Hash)>] PortalConfigurationInvoiceSetup data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_patch_with_http_info(id, invoice_setup_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_patch"
      end
      # verify the required parameter 'invoice_setup_id' is set
      if @api_client.config.client_side_validation && invoice_setup_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_setup_id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_patch"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'invoiceSetupId' + '}', invoice_setup_id.to_s)

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
        :return_type => 'PortalConfigurationInvoiceSetup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_invoice_setup_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Portal Configuration Invoice Setup
    # @param id 
    # @param invoice_setup_id 
    # @param portal_configuration_invoice_setup 
    # @param [Hash] opts the optional parameters
    # @return [PortalConfigurationInvoiceSetup]
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_put(id, invoice_setup_id, portal_configuration_invoice_setup, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_invoice_setup_id_put_with_http_info(id, invoice_setup_id, portal_configuration_invoice_setup, opts)
      return data
    end

    # 
    # Replace Portal Configuration Invoice Setup
    # @param id 
    # @param invoice_setup_id 
    # @param portal_configuration_invoice_setup 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortalConfigurationInvoiceSetup, Fixnum, Hash)>] PortalConfigurationInvoiceSetup data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_put_with_http_info(id, invoice_setup_id, portal_configuration_invoice_setup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_put"
      end
      # verify the required parameter 'invoice_setup_id' is set
      if @api_client.config.client_side_validation && invoice_setup_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_setup_id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_put"
      end
      # verify the required parameter 'portal_configuration_invoice_setup' is set
      if @api_client.config.client_side_validation && portal_configuration_invoice_setup.nil?
        fail ArgumentError, "Missing the required parameter 'portal_configuration_invoice_setup' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_put"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'invoiceSetupId' + '}', invoice_setup_id.to_s)

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
      post_body = @api_client.object_to_http_body(portal_configuration_invoice_setup)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortalConfigurationInvoiceSetup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_invoice_setup_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Test Transaction
    # @param id 
    # @param invoice_setup_id 
    # @param portal_configuration_invoice_setup 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post(id, invoice_setup_id, portal_configuration_invoice_setup, opts = {})
      data, _status_code, _headers = system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post_with_http_info(id, invoice_setup_id, portal_configuration_invoice_setup, opts)
      return data
    end

    # 
    # Test Transaction
    # @param id 
    # @param invoice_setup_id 
    # @param portal_configuration_invoice_setup 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post_with_http_info(id, invoice_setup_id, portal_configuration_invoice_setup, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post"
      end
      # verify the required parameter 'invoice_setup_id' is set
      if @api_client.config.client_side_validation && invoice_setup_id.nil?
        fail ArgumentError, "Missing the required parameter 'invoice_setup_id' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post"
      end
      # verify the required parameter 'portal_configuration_invoice_setup' is set
      if @api_client.config.client_side_validation && portal_configuration_invoice_setup.nil?
        fail ArgumentError, "Missing the required parameter 'portal_configuration_invoice_setup' when calling PortalConfigurationInvoiceSetupsApi.system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post"
      end
      # resource path
      local_var_path = "/system/portalConfigurations/{id}/invoiceSetups/{invoiceSetupId}/testTransaction".sub('{' + 'id' + '}', id.to_s).sub('{' + 'invoiceSetupId' + '}', invoice_setup_id.to_s)

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
      post_body = @api_client.object_to_http_body(portal_configuration_invoice_setup)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortalConfigurationInvoiceSetupsApi#system_portal_configurations_id_invoice_setups_invoice_setup_id_test_transaction_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class ManagedDevicesIntegrationCrossReferencesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Cross Reference Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_managed_devices_integrations_id_cross_references_count_get(id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Cross Reference Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_count_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationCrossReference]
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_delete(id, cross_reference_id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_cross_reference_id_delete_with_http_info(id, cross_reference_id, opts)
      return data
    end

    # 
    # Delete Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationCrossReference, Fixnum, Hash)>] ManagedDevicesIntegrationCrossReference data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_delete_with_http_info(id, cross_reference_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_delete"
      end
      # verify the required parameter 'cross_reference_id' is set
      if @api_client.config.client_side_validation && cross_reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference_id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_delete"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'crossReferenceID' + '}', cross_reference_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationCrossReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_cross_reference_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Cross Reference By Id
    # @param id 
    # @param cross_reference_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationCrossReference]
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_get(id, cross_reference_id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_cross_reference_id_get_with_http_info(id, cross_reference_id, opts)
      return data
    end

    # 
    # Get Cross Reference By Id
    # @param id 
    # @param cross_reference_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationCrossReference, Fixnum, Hash)>] ManagedDevicesIntegrationCrossReference data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_get_with_http_info(id, cross_reference_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_get"
      end
      # verify the required parameter 'cross_reference_id' is set
      if @api_client.config.client_side_validation && cross_reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference_id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'crossReferenceID' + '}', cross_reference_id.to_s)

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
        :return_type => 'ManagedDevicesIntegrationCrossReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_cross_reference_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationCrossReference]
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_patch(id, cross_reference_id, operations, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_cross_reference_id_patch_with_http_info(id, cross_reference_id, operations, opts)
      return data
    end

    # 
    # Update Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationCrossReference, Fixnum, Hash)>] ManagedDevicesIntegrationCrossReference data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_patch_with_http_info(id, cross_reference_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_patch"
      end
      # verify the required parameter 'cross_reference_id' is set
      if @api_client.config.client_side_validation && cross_reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference_id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_patch"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'crossReferenceID' + '}', cross_reference_id.to_s)

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
        :return_type => 'ManagedDevicesIntegrationCrossReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_cross_reference_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param cross_reference 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationCrossReference]
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_put(id, cross_reference_id, cross_reference, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_cross_reference_id_put_with_http_info(id, cross_reference_id, cross_reference, opts)
      return data
    end

    # 
    # Replace Cross Reference
    # @param id 
    # @param cross_reference_id 
    # @param cross_reference 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationCrossReference, Fixnum, Hash)>] ManagedDevicesIntegrationCrossReference data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_cross_reference_id_put_with_http_info(id, cross_reference_id, cross_reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_put"
      end
      # verify the required parameter 'cross_reference_id' is set
      if @api_client.config.client_side_validation && cross_reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference_id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_put"
      end
      # verify the required parameter 'cross_reference' is set
      if @api_client.config.client_side_validation && cross_reference.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_cross_reference_id_put"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences/{crossReferenceID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'crossReferenceID' + '}', cross_reference_id.to_s)

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
      post_body = @api_client.object_to_http_body(cross_reference)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationCrossReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_cross_reference_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Cross Reference
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ManagedDevicesIntegrationCrossReference>]
    def company_managed_devices_integrations_id_cross_references_get(id, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Cross Reference
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ManagedDevicesIntegrationCrossReference>, Fixnum, Hash)>] Array<ManagedDevicesIntegrationCrossReference> data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_get"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ManagedDevicesIntegrationCrossReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Cross Reference
    # @param id 
    # @param cross_reference 
    # @param [Hash] opts the optional parameters
    # @return [ManagedDevicesIntegrationCrossReference]
    def company_managed_devices_integrations_id_cross_references_post(id, cross_reference, opts = {})
      data, _status_code, _headers = company_managed_devices_integrations_id_cross_references_post_with_http_info(id, cross_reference, opts)
      return data
    end

    # 
    # Create Cross Reference
    # @param id 
    # @param cross_reference 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagedDevicesIntegrationCrossReference, Fixnum, Hash)>] ManagedDevicesIntegrationCrossReference data, response status code and response headers
    def company_managed_devices_integrations_id_cross_references_post_with_http_info(id, cross_reference, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_post"
      end
      # verify the required parameter 'cross_reference' is set
      if @api_client.config.client_side_validation && cross_reference.nil?
        fail ArgumentError, "Missing the required parameter 'cross_reference' when calling ManagedDevicesIntegrationCrossReferencesApi.company_managed_devices_integrations_id_cross_references_post"
      end
      # resource path
      local_var_path = "/company/managedDevicesIntegrations/{id}/crossReferences".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(cross_reference)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagedDevicesIntegrationCrossReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagedDevicesIntegrationCrossReferencesApi#company_managed_devices_integrations_id_cross_references_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

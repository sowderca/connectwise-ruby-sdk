
require "uri"

module ConnectWise
  class ReportingServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Reporting Services
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ReportingService>]
    def system_mycompany_reporting_services_get(opts = {})
      data, _status_code, _headers = system_mycompany_reporting_services_get_with_http_info(opts)
      return data
    end

    # 
    # Get Reporting Services
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ReportingService>, Fixnum, Hash)>] Array<ReportingService> data, response status code and response headers
    def system_mycompany_reporting_services_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingServicesApi.system_mycompany_reporting_services_get ..."
      end
      # resource path
      local_var_path = "/system/mycompany/reportingServices"

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
        :return_type => 'Array<ReportingService>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingServicesApi#system_mycompany_reporting_services_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Reporting Service By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ReportingService]
    def system_mycompany_reporting_services_id_get(id, opts = {})
      data, _status_code, _headers = system_mycompany_reporting_services_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Reporting Service By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportingService, Fixnum, Hash)>] ReportingService data, response status code and response headers
    def system_mycompany_reporting_services_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingServicesApi.system_mycompany_reporting_services_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportingServicesApi.system_mycompany_reporting_services_id_get"
      end
      # resource path
      local_var_path = "/system/mycompany/reportingServices/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ReportingService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingServicesApi#system_mycompany_reporting_services_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Reporting Service
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ReportingService]
    def system_mycompany_reporting_services_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_mycompany_reporting_services_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Reporting Service
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportingService, Fixnum, Hash)>] ReportingService data, response status code and response headers
    def system_mycompany_reporting_services_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingServicesApi.system_mycompany_reporting_services_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportingServicesApi.system_mycompany_reporting_services_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ReportingServicesApi.system_mycompany_reporting_services_id_patch"
      end
      # resource path
      local_var_path = "/system/mycompany/reportingServices/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ReportingService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingServicesApi#system_mycompany_reporting_services_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Reporting Service
    # @param id 
    # @param service 
    # @param [Hash] opts the optional parameters
    # @return [ReportingService]
    def system_mycompany_reporting_services_id_put(id, service, opts = {})
      data, _status_code, _headers = system_mycompany_reporting_services_id_put_with_http_info(id, service, opts)
      return data
    end

    # 
    # Replace Reporting Service
    # @param id 
    # @param service 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportingService, Fixnum, Hash)>] ReportingService data, response status code and response headers
    def system_mycompany_reporting_services_id_put_with_http_info(id, service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingServicesApi.system_mycompany_reporting_services_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportingServicesApi.system_mycompany_reporting_services_id_put"
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling ReportingServicesApi.system_mycompany_reporting_services_id_put"
      end
      # resource path
      local_var_path = "/system/mycompany/reportingServices/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(service)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ReportingService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingServicesApi#system_mycompany_reporting_services_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Test Reporting Service Connection
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def system_mycompany_reporting_services_id_test_connection_post(id, opts = {})
      data, _status_code, _headers = system_mycompany_reporting_services_id_test_connection_post_with_http_info(id, opts)
      return data
    end

    # 
    # Test Reporting Service Connection
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def system_mycompany_reporting_services_id_test_connection_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReportingServicesApi.system_mycompany_reporting_services_id_test_connection_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReportingServicesApi.system_mycompany_reporting_services_id_test_connection_post"
      end
      # resource path
      local_var_path = "/system/mycompany/reportingServices/{id}/testConnection".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportingServicesApi#system_mycompany_reporting_services_id_test_connection_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

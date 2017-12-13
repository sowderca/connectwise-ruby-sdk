
require "uri"

module ConnectWise
  class ManagementLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Download Document
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_path 
    # @return [nil]
    def company_management_id_log_download_get(opts = {})
      company_management_id_log_download_get_with_http_info(opts)
      return nil
    end

    # 
    # Download Document
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_path 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_management_id_log_download_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementLogsApi.company_management_id_log_download_get ..."
      end
      # resource path
      local_var_path = "/company/management/{id}/log/download"

      # query parameters
      query_params = {}
      query_params[:'filePath'] = opts[:'file_path'] if !opts[:'file_path'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementLogsApi#company_management_id_log_download_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Management Execute Managed It Syncs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ManagementLogDocumentInfo>]
    def company_management_id_logs_get(opts = {})
      data, _status_code, _headers = company_management_id_logs_get_with_http_info(opts)
      return data
    end

    # 
    # Get Management Execute Managed It Syncs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ManagementLogDocumentInfo>, Fixnum, Hash)>] Array<ManagementLogDocumentInfo> data, response status code and response headers
    def company_management_id_logs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementLogsApi.company_management_id_logs_get ..."
      end
      # resource path
      local_var_path = "/company/management/{id}/logs"

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
        :return_type => 'Array<ManagementLogDocumentInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementLogsApi#company_management_id_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

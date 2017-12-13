
require "uri"

module ConnectWise
  class TimeSheetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Time Sheet Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def time_sheets_count_get(opts = {})
      data, _status_code, _headers = time_sheets_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Time Sheet Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def time_sheets_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeSheetsApi.time_sheets_count_get ..."
      end
      # resource path
      local_var_path = "/time/sheets/count"

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
        @api_client.config.logger.debug "API called: TimeSheetsApi#time_sheets_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Time Sheet
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<TimeSheet>]
    def time_sheets_get(opts = {})
      data, _status_code, _headers = time_sheets_get_with_http_info(opts)
      return data
    end

    # 
    # Get Time Sheet
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<TimeSheet>, Fixnum, Hash)>] Array<TimeSheet> data, response status code and response headers
    def time_sheets_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeSheetsApi.time_sheets_get ..."
      end
      # resource path
      local_var_path = "/time/sheets"

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
        :return_type => 'Array<TimeSheet>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeSheetsApi#time_sheets_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Time Sheet By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [TimeSheet]
    def time_sheets_id_get(id, opts = {})
      data, _status_code, _headers = time_sheets_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Time Sheet By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TimeSheet, Fixnum, Hash)>] TimeSheet data, response status code and response headers
    def time_sheets_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeSheetsApi.time_sheets_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeSheetsApi.time_sheets_id_get"
      end
      # resource path
      local_var_path = "/time/sheets/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'TimeSheet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimeSheetsApi#time_sheets_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Reverse Time Sheet
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def time_sheets_id_reverse_post(id, opts = {})
      data, _status_code, _headers = time_sheets_id_reverse_post_with_http_info(id, opts)
      return data
    end

    # 
    # Reverse Time Sheet
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def time_sheets_id_reverse_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeSheetsApi.time_sheets_id_reverse_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeSheetsApi.time_sheets_id_reverse_post"
      end
      # resource path
      local_var_path = "/time/sheets/{id}/reverse".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TimeSheetsApi#time_sheets_id_reverse_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Submit Time Sheet
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def time_sheets_id_submit_post(id, opts = {})
      data, _status_code, _headers = time_sheets_id_submit_post_with_http_info(id, opts)
      return data
    end

    # 
    # Submit Time Sheet
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def time_sheets_id_submit_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TimeSheetsApi.time_sheets_id_submit_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimeSheetsApi.time_sheets_id_submit_post"
      end
      # resource path
      local_var_path = "/time/sheets/{id}/submit".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TimeSheetsApi#time_sheets_id_submit_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class CalendarsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Calendars Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Calendar]
    def system_calendars_count_get(opts = {})
      data, _status_code, _headers = system_calendars_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Calendars Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Calendar, Fixnum, Hash)>] Calendar data, response status code and response headers
    def system_calendars_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarsApi.system_calendars_count_get ..."
      end
      # resource path
      local_var_path = "/system/calendars/count"

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
        :return_type => 'Calendar')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarsApi#system_calendars_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Calendars
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Calendar>]
    def system_calendars_get(opts = {})
      data, _status_code, _headers = system_calendars_get_with_http_info(opts)
      return data
    end

    # 
    # Get Calendars
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Calendar>, Fixnum, Hash)>] Array<Calendar> data, response status code and response headers
    def system_calendars_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarsApi.system_calendars_get ..."
      end
      # resource path
      local_var_path = "/system/calendars"

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
        :return_type => 'Array<Calendar>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarsApi#system_calendars_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Calendar By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Calendar]
    def system_calendars_id_get(id, opts = {})
      data, _status_code, _headers = system_calendars_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Calendar By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Calendar, Fixnum, Hash)>] Calendar data, response status code and response headers
    def system_calendars_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalendarsApi.system_calendars_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CalendarsApi.system_calendars_id_get"
      end
      # resource path
      local_var_path = "/system/calendars/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Calendar')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalendarsApi#system_calendars_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

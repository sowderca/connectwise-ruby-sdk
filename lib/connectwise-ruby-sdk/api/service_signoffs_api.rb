
require "uri"

module ConnectWise
  class ServiceSignoffsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Service Signoffs Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_service_signoff_count_get(opts = {})
      data, _status_code, _headers = service_service_signoff_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Service Signoffs Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_service_signoff_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_count_get ..."
      end
      # resource path
      local_var_path = "/service/serviceSignoff/count"

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
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Service Signoffs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ServiceSignoff>]
    def service_service_signoff_get(opts = {})
      data, _status_code, _headers = service_service_signoff_get_with_http_info(opts)
      return data
    end

    # 
    # Get Service Signoffs
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ServiceSignoff>, Fixnum, Hash)>] Array<ServiceSignoff> data, response status code and response headers
    def service_service_signoff_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_get ..."
      end
      # resource path
      local_var_path = "/service/serviceSignoff"

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
        :return_type => 'Array<ServiceSignoff>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Service Signoff By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_service_signoff_id_delete(id, opts = {})
      service_service_signoff_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Service Signoff By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_service_signoff_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceSignoffsApi.service_service_signoff_id_delete"
      end
      # resource path
      local_var_path = "/service/serviceSignoff/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Service Signoff By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ServiceSignoff]
    def service_service_signoff_id_get(id, opts = {})
      data, _status_code, _headers = service_service_signoff_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Service Signoff By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceSignoff, Fixnum, Hash)>] ServiceSignoff data, response status code and response headers
    def service_service_signoff_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceSignoffsApi.service_service_signoff_id_get"
      end
      # resource path
      local_var_path = "/service/serviceSignoff/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ServiceSignoff')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Service Signoff
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ServiceSignoff]
    def service_service_signoff_id_patch(id, operations, opts = {})
      data, _status_code, _headers = service_service_signoff_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Service Signoff
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceSignoff, Fixnum, Hash)>] ServiceSignoff data, response status code and response headers
    def service_service_signoff_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceSignoffsApi.service_service_signoff_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ServiceSignoffsApi.service_service_signoff_id_patch"
      end
      # resource path
      local_var_path = "/service/serviceSignoff/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ServiceSignoff')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Service Signoff
    # @param id 
    # @param service_signoff 
    # @param [Hash] opts the optional parameters
    # @return [ServiceSignoff]
    def service_service_signoff_id_put(id, service_signoff, opts = {})
      data, _status_code, _headers = service_service_signoff_id_put_with_http_info(id, service_signoff, opts)
      return data
    end

    # 
    # Replace Service Signoff
    # @param id 
    # @param service_signoff 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceSignoff, Fixnum, Hash)>] ServiceSignoff data, response status code and response headers
    def service_service_signoff_id_put_with_http_info(id, service_signoff, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceSignoffsApi.service_service_signoff_id_put"
      end
      # verify the required parameter 'service_signoff' is set
      if @api_client.config.client_side_validation && service_signoff.nil?
        fail ArgumentError, "Missing the required parameter 'service_signoff' when calling ServiceSignoffsApi.service_service_signoff_id_put"
      end
      # resource path
      local_var_path = "/service/serviceSignoff/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(service_signoff)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceSignoff')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Service Signoff
    # @param service_signoff 
    # @param [Hash] opts the optional parameters
    # @return [ServiceSignoff]
    def service_service_signoff_post(service_signoff, opts = {})
      data, _status_code, _headers = service_service_signoff_post_with_http_info(service_signoff, opts)
      return data
    end

    # 
    # Create Service Signoff
    # @param service_signoff 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceSignoff, Fixnum, Hash)>] ServiceSignoff data, response status code and response headers
    def service_service_signoff_post_with_http_info(service_signoff, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ServiceSignoffsApi.service_service_signoff_post ..."
      end
      # verify the required parameter 'service_signoff' is set
      if @api_client.config.client_side_validation && service_signoff.nil?
        fail ArgumentError, "Missing the required parameter 'service_signoff' when calling ServiceSignoffsApi.service_service_signoff_post"
      end
      # resource path
      local_var_path = "/service/serviceSignoff"

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
      post_body = @api_client.object_to_http_body(service_signoff)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceSignoff')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceSignoffsApi#service_service_signoff_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class OpportunityStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def sales_opportunities_statuses_count_get(opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def sales_opportunities_statuses_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_count_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses/count"

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
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<OpportunityStatus>]
    def sales_opportunities_statuses_get(opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_get_with_http_info(opts)
      return data
    end

    # 
    # Get Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<OpportunityStatus>, Fixnum, Hash)>] Array<OpportunityStatus> data, response status code and response headers
    def sales_opportunities_statuses_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses"

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
        :return_type => 'Array<OpportunityStatus>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sales_opportunities_statuses_id_delete(id, opts = {})
      sales_opportunities_statuses_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sales_opportunities_statuses_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_delete"
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityStatus]
    def sales_opportunities_statuses_id_get(id, opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityStatus, Fixnum, Hash)>] OpportunityStatus data, response status code and response headers
    def sales_opportunities_statuses_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_get"
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'OpportunityStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityStatus]
    def sales_opportunities_statuses_id_patch(id, operations, opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityStatus, Fixnum, Hash)>] OpportunityStatus data, response status code and response headers
    def sales_opportunities_statuses_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_patch"
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'OpportunityStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Status
    # @param id 
    # @param status 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityStatus]
    def sales_opportunities_statuses_id_put(id, status, opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_id_put_with_http_info(id, status, opts)
      return data
    end

    # 
    # Replace Status
    # @param id 
    # @param status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityStatus, Fixnum, Hash)>] OpportunityStatus data, response status code and response headers
    def sales_opportunities_statuses_id_put_with_http_info(id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_put"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling OpportunityStatusesApi.sales_opportunities_statuses_id_put"
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OpportunityStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Status
    # @param status 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityStatus]
    def sales_opportunities_statuses_post(status, opts = {})
      data, _status_code, _headers = sales_opportunities_statuses_post_with_http_info(status, opts)
      return data
    end

    # 
    # Create Status
    # @param status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityStatus, Fixnum, Hash)>] OpportunityStatus data, response status code and response headers
    def sales_opportunities_statuses_post_with_http_info(status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStatusesApi.sales_opportunities_statuses_post ..."
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling OpportunityStatusesApi.sales_opportunities_statuses_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/statuses"

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
      post_body = @api_client.object_to_http_body(status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OpportunityStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStatusesApi#sales_opportunities_statuses_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class SalesQuotasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Sales Quota Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def sales_quotas_count_get(opts = {})
      data, _status_code, _headers = sales_quotas_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Sales Quota Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def sales_quotas_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_count_get ..."
      end
      # resource path
      local_var_path = "/sales/quotas/count"

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
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Sales Quota
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SalesQuota>]
    def sales_quotas_get(opts = {})
      data, _status_code, _headers = sales_quotas_get_with_http_info(opts)
      return data
    end

    # 
    # Get Sales Quota
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SalesQuota>, Fixnum, Hash)>] Array<SalesQuota> data, response status code and response headers
    def sales_quotas_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_get ..."
      end
      # resource path
      local_var_path = "/sales/quotas"

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
        :return_type => 'Array<SalesQuota>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Sales Quota By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sales_quotas_id_delete(id, opts = {})
      sales_quotas_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Sales Quota By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sales_quotas_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesQuotasApi.sales_quotas_id_delete"
      end
      # resource path
      local_var_path = "/sales/quotas/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Sales Quota By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SalesQuota]
    def sales_quotas_id_get(id, opts = {})
      data, _status_code, _headers = sales_quotas_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Sales Quota By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesQuota, Fixnum, Hash)>] SalesQuota data, response status code and response headers
    def sales_quotas_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesQuotasApi.sales_quotas_id_get"
      end
      # resource path
      local_var_path = "/sales/quotas/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesQuota')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Sales Quota
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SalesQuota]
    def sales_quotas_id_patch(id, operations, opts = {})
      data, _status_code, _headers = sales_quotas_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Sales Quota
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesQuota, Fixnum, Hash)>] SalesQuota data, response status code and response headers
    def sales_quotas_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesQuotasApi.sales_quotas_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SalesQuotasApi.sales_quotas_id_patch"
      end
      # resource path
      local_var_path = "/sales/quotas/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SalesQuota')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Sales Quota
    # @param id 
    # @param sales_quota 
    # @param [Hash] opts the optional parameters
    # @return [SalesQuota]
    def sales_quotas_id_put(id, sales_quota, opts = {})
      data, _status_code, _headers = sales_quotas_id_put_with_http_info(id, sales_quota, opts)
      return data
    end

    # 
    # Replace Sales Quota
    # @param id 
    # @param sales_quota 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesQuota, Fixnum, Hash)>] SalesQuota data, response status code and response headers
    def sales_quotas_id_put_with_http_info(id, sales_quota, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalesQuotasApi.sales_quotas_id_put"
      end
      # verify the required parameter 'sales_quota' is set
      if @api_client.config.client_side_validation && sales_quota.nil?
        fail ArgumentError, "Missing the required parameter 'sales_quota' when calling SalesQuotasApi.sales_quotas_id_put"
      end
      # resource path
      local_var_path = "/sales/quotas/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(sales_quota)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesQuota')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Sales Quota
    # @param sales_quota 
    # @param [Hash] opts the optional parameters
    # @return [SalesQuota]
    def sales_quotas_post(sales_quota, opts = {})
      data, _status_code, _headers = sales_quotas_post_with_http_info(sales_quota, opts)
      return data
    end

    # 
    # Create Sales Quota
    # @param sales_quota 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SalesQuota, Fixnum, Hash)>] SalesQuota data, response status code and response headers
    def sales_quotas_post_with_http_info(sales_quota, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SalesQuotasApi.sales_quotas_post ..."
      end
      # verify the required parameter 'sales_quota' is set
      if @api_client.config.client_side_validation && sales_quota.nil?
        fail ArgumentError, "Missing the required parameter 'sales_quota' when calling SalesQuotasApi.sales_quotas_post"
      end
      # resource path
      local_var_path = "/sales/quotas"

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
      post_body = @api_client.object_to_http_body(sales_quota)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SalesQuota')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalesQuotasApi#sales_quotas_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

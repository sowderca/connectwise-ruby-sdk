
require "uri"

module ConnectWise
  class BillingSetupRoutingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Billing Setup Routings Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_billing_setups_id_routings_count_get(id, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Billing Setup Routings Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_billing_setups_id_routings_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_count_get"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Billing Setup Routings
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<BillingSetupRouting>]
    def finance_billing_setups_id_routings_get(id, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Billing Setup Routings
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<BillingSetupRouting>, Fixnum, Hash)>] Array<BillingSetupRouting> data, response status code and response headers
    def finance_billing_setups_id_routings_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_get"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<BillingSetupRouting>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Billing Setup Routing
    # @param id 
    # @param billing_setup_routing 
    # @param [Hash] opts the optional parameters
    # @return [BillingSetupRouting]
    def finance_billing_setups_id_routings_post(id, billing_setup_routing, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_post_with_http_info(id, billing_setup_routing, opts)
      return data
    end

    # 
    # Create Billing Setup Routing
    # @param id 
    # @param billing_setup_routing 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingSetupRouting, Fixnum, Hash)>] BillingSetupRouting data, response status code and response headers
    def finance_billing_setups_id_routings_post_with_http_info(id, billing_setup_routing, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_post"
      end
      # verify the required parameter 'billing_setup_routing' is set
      if @api_client.config.client_side_validation && billing_setup_routing.nil?
        fail ArgumentError, "Missing the required parameter 'billing_setup_routing' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_post"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(billing_setup_routing)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BillingSetupRouting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Billing Setup Routing By Id
    # @param id 
    # @param routing_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_billing_setups_id_routings_routing_id_delete(id, routing_id, opts = {})
      finance_billing_setups_id_routings_routing_id_delete_with_http_info(id, routing_id, opts)
      return nil
    end

    # 
    # Delete Billing Setup Routing By Id
    # @param id 
    # @param routing_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_billing_setups_id_routings_routing_id_delete_with_http_info(id, routing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_delete"
      end
      # verify the required parameter 'routing_id' is set
      if @api_client.config.client_side_validation && routing_id.nil?
        fail ArgumentError, "Missing the required parameter 'routing_id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_delete"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings/{routingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'routingId' + '}', routing_id.to_s)

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
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_routing_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Billing Setup Routing By Id
    # @param id 
    # @param routing_id 
    # @param [Hash] opts the optional parameters
    # @return [BillingSetupRouting]
    def finance_billing_setups_id_routings_routing_id_get(id, routing_id, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_routing_id_get_with_http_info(id, routing_id, opts)
      return data
    end

    # 
    # Get Billing Setup Routing By Id
    # @param id 
    # @param routing_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingSetupRouting, Fixnum, Hash)>] BillingSetupRouting data, response status code and response headers
    def finance_billing_setups_id_routings_routing_id_get_with_http_info(id, routing_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_get"
      end
      # verify the required parameter 'routing_id' is set
      if @api_client.config.client_side_validation && routing_id.nil?
        fail ArgumentError, "Missing the required parameter 'routing_id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_get"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings/{routingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'routingId' + '}', routing_id.to_s)

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
        :return_type => 'BillingSetupRouting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_routing_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Billing Setup Routing
    # @param id 
    # @param routing_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [BillingSetupRouting]
    def finance_billing_setups_id_routings_routing_id_patch(id, routing_id, operations, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_routing_id_patch_with_http_info(id, routing_id, operations, opts)
      return data
    end

    # 
    # Update Billing Setup Routing
    # @param id 
    # @param routing_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingSetupRouting, Fixnum, Hash)>] BillingSetupRouting data, response status code and response headers
    def finance_billing_setups_id_routings_routing_id_patch_with_http_info(id, routing_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_patch"
      end
      # verify the required parameter 'routing_id' is set
      if @api_client.config.client_side_validation && routing_id.nil?
        fail ArgumentError, "Missing the required parameter 'routing_id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_patch"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings/{routingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'routingId' + '}', routing_id.to_s)

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
        :return_type => 'BillingSetupRouting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_routing_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Billing Setup Routing
    # @param id 
    # @param routing_id 
    # @param billing_setup_routing 
    # @param [Hash] opts the optional parameters
    # @return [BillingSetupRouting]
    def finance_billing_setups_id_routings_routing_id_put(id, routing_id, billing_setup_routing, opts = {})
      data, _status_code, _headers = finance_billing_setups_id_routings_routing_id_put_with_http_info(id, routing_id, billing_setup_routing, opts)
      return data
    end

    # 
    # Replace Billing Setup Routing
    # @param id 
    # @param routing_id 
    # @param billing_setup_routing 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillingSetupRouting, Fixnum, Hash)>] BillingSetupRouting data, response status code and response headers
    def finance_billing_setups_id_routings_routing_id_put_with_http_info(id, routing_id, billing_setup_routing, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_put"
      end
      # verify the required parameter 'routing_id' is set
      if @api_client.config.client_side_validation && routing_id.nil?
        fail ArgumentError, "Missing the required parameter 'routing_id' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_put"
      end
      # verify the required parameter 'billing_setup_routing' is set
      if @api_client.config.client_side_validation && billing_setup_routing.nil?
        fail ArgumentError, "Missing the required parameter 'billing_setup_routing' when calling BillingSetupRoutingsApi.finance_billing_setups_id_routings_routing_id_put"
      end
      # resource path
      local_var_path = "/finance/billingSetups/{id}/routings/{routingId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'routingId' + '}', routing_id.to_s)

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
      post_body = @api_client.object_to_http_body(billing_setup_routing)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BillingSetupRouting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillingSetupRoutingsApi#finance_billing_setups_id_routings_routing_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

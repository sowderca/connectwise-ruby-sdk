
require "uri"

module ConnectWise
  class PurchaseOrderStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Purchase Orders Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_purchaseorderstatuses_count_get(opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Purchase Orders Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_purchaseorderstatuses_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_count_get ..."
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses/count"

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
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<PurchaseOrderStatus>]
    def procurement_purchaseorderstatuses_get(opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_get_with_http_info(opts)
      return data
    end

    # 
    # Get Purchase Order Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<PurchaseOrderStatus>, Fixnum, Hash)>] Array<PurchaseOrderStatus> data, response status code and response headers
    def procurement_purchaseorderstatuses_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_get ..."
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses"

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
        :return_type => 'Array<PurchaseOrderStatus>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Purchase Order Status
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_purchaseorderstatuses_id_delete(id, opts = {})
      procurement_purchaseorderstatuses_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Purchase Order Status
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_purchaseorderstatuses_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_delete"
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Purchase Order Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderStatus]
    def procurement_purchaseorderstatuses_id_get(id, opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Purchase Order Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderStatus, Fixnum, Hash)>] PurchaseOrderStatus data, response status code and response headers
    def procurement_purchaseorderstatuses_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_get"
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PurchaseOrderStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Purchase Order Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderStatus]
    def procurement_purchaseorderstatuses_id_patch(id, operations, opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Purchase Order Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderStatus, Fixnum, Hash)>] PurchaseOrderStatus data, response status code and response headers
    def procurement_purchaseorderstatuses_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_patch"
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'PurchaseOrderStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Purchase Order Status
    # @param id 
    # @param purchase_order_status 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderStatus]
    def procurement_purchaseorderstatuses_id_put(id, purchase_order_status, opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_id_put_with_http_info(id, purchase_order_status, opts)
      return data
    end

    # 
    # Replace Purchase Order Status
    # @param id 
    # @param purchase_order_status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderStatus, Fixnum, Hash)>] PurchaseOrderStatus data, response status code and response headers
    def procurement_purchaseorderstatuses_id_put_with_http_info(id, purchase_order_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_put"
      end
      # verify the required parameter 'purchase_order_status' is set
      if @api_client.config.client_side_validation && purchase_order_status.nil?
        fail ArgumentError, "Missing the required parameter 'purchase_order_status' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_id_put"
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(purchase_order_status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Purchase Order Status
    # @param po_status 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseOrderStatus]
    def procurement_purchaseorderstatuses_post(po_status, opts = {})
      data, _status_code, _headers = procurement_purchaseorderstatuses_post_with_http_info(po_status, opts)
      return data
    end

    # 
    # Create Purchase Order Status
    # @param po_status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseOrderStatus, Fixnum, Hash)>] PurchaseOrderStatus data, response status code and response headers
    def procurement_purchaseorderstatuses_post_with_http_info(po_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_post ..."
      end
      # verify the required parameter 'po_status' is set
      if @api_client.config.client_side_validation && po_status.nil?
        fail ArgumentError, "Missing the required parameter 'po_status' when calling PurchaseOrderStatusesApi.procurement_purchaseorderstatuses_post"
      end
      # resource path
      local_var_path = "/procurement/purchaseorderstatuses"

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
      post_body = @api_client.object_to_http_body(po_status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseOrderStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PurchaseOrderStatusesApi#procurement_purchaseorderstatuses_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

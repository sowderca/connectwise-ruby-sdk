
require "uri"

module ConnectWise
  class AdjustmentDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Adjustment Detail Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def procurement_adjustments_id_details_count_get(id, opts = {})
      data, _status_code, _headers = procurement_adjustments_id_details_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Adjustment Detail Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def procurement_adjustments_id_details_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdjustmentDetailsApi.procurement_adjustments_id_details_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_count_get"
      end
      # resource path
      local_var_path = "/procurement/adjustments/{id}/details/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AdjustmentDetailsApi#procurement_adjustments_id_details_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Adjustment Detail By Id
    # @param id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def procurement_adjustments_id_details_detail_id_delete(id, detail_id, opts = {})
      procurement_adjustments_id_details_detail_id_delete_with_http_info(id, detail_id, opts)
      return nil
    end

    # 
    # Delete Adjustment Detail By Id
    # @param id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def procurement_adjustments_id_details_detail_id_delete_with_http_info(id, detail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_delete"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_delete"
      end
      # resource path
      local_var_path = "/procurement/adjustments/{id}/details/{detailId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s)

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
        @api_client.config.logger.debug "API called: AdjustmentDetailsApi#procurement_adjustments_id_details_detail_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Adjustment Detail By Id
    # @param id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @return [AdjustmentDetail]
    def procurement_adjustments_id_details_detail_id_get(id, detail_id, opts = {})
      data, _status_code, _headers = procurement_adjustments_id_details_detail_id_get_with_http_info(id, detail_id, opts)
      return data
    end

    # 
    # Get Adjustment Detail By Id
    # @param id 
    # @param detail_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdjustmentDetail, Fixnum, Hash)>] AdjustmentDetail data, response status code and response headers
    def procurement_adjustments_id_details_detail_id_get_with_http_info(id, detail_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_get"
      end
      # verify the required parameter 'detail_id' is set
      if @api_client.config.client_side_validation && detail_id.nil?
        fail ArgumentError, "Missing the required parameter 'detail_id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_detail_id_get"
      end
      # resource path
      local_var_path = "/procurement/adjustments/{id}/details/{detailId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'detailId' + '}', detail_id.to_s)

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
        :return_type => 'AdjustmentDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentDetailsApi#procurement_adjustments_id_details_detail_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Adjustment Detail
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AdjustmentDetail>]
    def procurement_adjustments_id_details_get(id, opts = {})
      data, _status_code, _headers = procurement_adjustments_id_details_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Adjustment Detail
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AdjustmentDetail>, Fixnum, Hash)>] Array<AdjustmentDetail> data, response status code and response headers
    def procurement_adjustments_id_details_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdjustmentDetailsApi.procurement_adjustments_id_details_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_get"
      end
      # resource path
      local_var_path = "/procurement/adjustments/{id}/details".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<AdjustmentDetail>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentDetailsApi#procurement_adjustments_id_details_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Adjustment Detail
    # @param id 
    # @param adjustment_detail 
    # @param [Hash] opts the optional parameters
    # @return [AdjustmentDetail]
    def procurement_adjustments_id_details_post(id, adjustment_detail, opts = {})
      data, _status_code, _headers = procurement_adjustments_id_details_post_with_http_info(id, adjustment_detail, opts)
      return data
    end

    # 
    # Create Adjustment Detail
    # @param id 
    # @param adjustment_detail 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdjustmentDetail, Fixnum, Hash)>] AdjustmentDetail data, response status code and response headers
    def procurement_adjustments_id_details_post_with_http_info(id, adjustment_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdjustmentDetailsApi.procurement_adjustments_id_details_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_post"
      end
      # verify the required parameter 'adjustment_detail' is set
      if @api_client.config.client_side_validation && adjustment_detail.nil?
        fail ArgumentError, "Missing the required parameter 'adjustment_detail' when calling AdjustmentDetailsApi.procurement_adjustments_id_details_post"
      end
      # resource path
      local_var_path = "/procurement/adjustments/{id}/details".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(adjustment_detail)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AdjustmentDetail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdjustmentDetailsApi#procurement_adjustments_id_details_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

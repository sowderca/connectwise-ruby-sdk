
require "uri"

module ConnectWise
  class CampaignStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Campaign Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def marketing_campaigns_statuses_count_get(opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Campaign Statuses Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def marketing_campaigns_statuses_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_count_get ..."
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses/count"

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
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Campaign Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CampaignStatus>]
    def marketing_campaigns_statuses_get(opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_get_with_http_info(opts)
      return data
    end

    # 
    # Get Campaign Statuses
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CampaignStatus>, Fixnum, Hash)>] Array<CampaignStatus> data, response status code and response headers
    def marketing_campaigns_statuses_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_get ..."
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses"

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
        :return_type => 'Array<CampaignStatus>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Campaign Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def marketing_campaigns_statuses_id_delete(id, opts = {})
      marketing_campaigns_statuses_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Campaign Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def marketing_campaigns_statuses_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_delete"
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Campaign Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [CampaignStatus]
    def marketing_campaigns_statuses_id_get(id, opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Campaign Status By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignStatus, Fixnum, Hash)>] CampaignStatus data, response status code and response headers
    def marketing_campaigns_statuses_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_get"
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CampaignStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Campaign Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CampaignStatus]
    def marketing_campaigns_statuses_id_patch(id, operations, opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Campaign Status
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignStatus, Fixnum, Hash)>] CampaignStatus data, response status code and response headers
    def marketing_campaigns_statuses_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_patch"
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CampaignStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Campaign Status
    # @param id 
    # @param campaign_status 
    # @param [Hash] opts the optional parameters
    # @return [CampaignStatus]
    def marketing_campaigns_statuses_id_put(id, campaign_status, opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_id_put_with_http_info(id, campaign_status, opts)
      return data
    end

    # 
    # Replace Campaign Status
    # @param id 
    # @param campaign_status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignStatus, Fixnum, Hash)>] CampaignStatus data, response status code and response headers
    def marketing_campaigns_statuses_id_put_with_http_info(id, campaign_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_put"
      end
      # verify the required parameter 'campaign_status' is set
      if @api_client.config.client_side_validation && campaign_status.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_status' when calling CampaignStatusesApi.marketing_campaigns_statuses_id_put"
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(campaign_status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Campaign Status
    # @param campaign_status 
    # @param [Hash] opts the optional parameters
    # @return [CampaignStatus]
    def marketing_campaigns_statuses_post(campaign_status, opts = {})
      data, _status_code, _headers = marketing_campaigns_statuses_post_with_http_info(campaign_status, opts)
      return data
    end

    # 
    # Create Campaign Status
    # @param campaign_status 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignStatus, Fixnum, Hash)>] CampaignStatus data, response status code and response headers
    def marketing_campaigns_statuses_post_with_http_info(campaign_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignStatusesApi.marketing_campaigns_statuses_post ..."
      end
      # verify the required parameter 'campaign_status' is set
      if @api_client.config.client_side_validation && campaign_status.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_status' when calling CampaignStatusesApi.marketing_campaigns_statuses_post"
      end
      # resource path
      local_var_path = "/marketing/campaigns/statuses"

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
      post_body = @api_client.object_to_http_body(campaign_status)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CampaignStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignStatusesApi#marketing_campaigns_statuses_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class CompanyPickerItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Clear All Picker Items By Member
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member 
    # @option opts [String] :type 
    # @return [ClearPickerRequest]
    def company_company_picker_items_clear_post(opts = {})
      data, _status_code, _headers = company_company_picker_items_clear_post_with_http_info(opts)
      return data
    end

    # 
    # Clear All Picker Items By Member
    # @param [Hash] opts the optional parameters
    # @option opts [String] :member 
    # @option opts [String] :type 
    # @return [Array<(ClearPickerRequest, Fixnum, Hash)>] ClearPickerRequest data, response status code and response headers
    def company_company_picker_items_clear_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_clear_post ..."
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/company/companyPickerItems/clear"

      # query parameters
      query_params = {}
      query_params[:'member'] = opts[:'member'] if !opts[:'member'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = {}

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
        :return_type => 'ClearPickerRequest')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_clear_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Picker Items Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_company_picker_items_count_get(opts = {})
      data, _status_code, _headers = company_company_picker_items_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Company Picker Items Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_company_picker_items_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_count_get ..."
      end
      # resource path
      local_var_path = "/company/companyPickerItems/count"

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
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Picker Items
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyPickerItem>]
    def company_company_picker_items_get(opts = {})
      data, _status_code, _headers = company_company_picker_items_get_with_http_info(opts)
      return data
    end

    # 
    # Get Company Picker Items
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyPickerItem>, Fixnum, Hash)>] Array<CompanyPickerItem> data, response status code and response headers
    def company_company_picker_items_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_get ..."
      end
      # resource path
      local_var_path = "/company/companyPickerItems"

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
        :return_type => 'Array<CompanyPickerItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Company Picker Item
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_company_picker_items_id_delete(id, opts = {})
      company_company_picker_items_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Company Picker Item
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_company_picker_items_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyPickerItemsApi.company_company_picker_items_id_delete"
      end
      # resource path
      local_var_path = "/company/companyPickerItems/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Picker Item By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyPickerItem]
    def company_company_picker_items_id_get(id, opts = {})
      data, _status_code, _headers = company_company_picker_items_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Picker Item By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyPickerItem, Fixnum, Hash)>] CompanyPickerItem data, response status code and response headers
    def company_company_picker_items_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyPickerItemsApi.company_company_picker_items_id_get"
      end
      # resource path
      local_var_path = "/company/companyPickerItems/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CompanyPickerItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Add Company Picker Item
    # @param company_picker_item 
    # @param [Hash] opts the optional parameters
    # @return [CompanyPickerItem]
    def company_company_picker_items_post(company_picker_item, opts = {})
      data, _status_code, _headers = company_company_picker_items_post_with_http_info(company_picker_item, opts)
      return data
    end

    # 
    # Add Company Picker Item
    # @param company_picker_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyPickerItem, Fixnum, Hash)>] CompanyPickerItem data, response status code and response headers
    def company_company_picker_items_post_with_http_info(company_picker_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyPickerItemsApi.company_company_picker_items_post ..."
      end
      # verify the required parameter 'company_picker_item' is set
      if @api_client.config.client_side_validation && company_picker_item.nil?
        fail ArgumentError, "Missing the required parameter 'company_picker_item' when calling CompanyPickerItemsApi.company_company_picker_items_post"
      end
      # resource path
      local_var_path = "/company/companyPickerItems"

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
      post_body = @api_client.object_to_http_body(company_picker_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyPickerItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyPickerItemsApi#company_company_picker_items_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

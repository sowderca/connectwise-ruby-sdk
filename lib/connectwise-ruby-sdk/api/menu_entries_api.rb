
require "uri"

module ConnectWise
  class MenuEntriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Menu Entries Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_menuentries_count_get(opts = {})
      data, _status_code, _headers = system_menuentries_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Menu Entries Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_menuentries_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_count_get ..."
      end
      # resource path
      local_var_path = "/system/menuentries/count"

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
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Menu Entries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<MenuEntry>]
    def system_menuentries_get(opts = {})
      data, _status_code, _headers = system_menuentries_get_with_http_info(opts)
      return data
    end

    # 
    # Get Menu Entries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<MenuEntry>, Fixnum, Hash)>] Array<MenuEntry> data, response status code and response headers
    def system_menuentries_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_get ..."
      end
      # resource path
      local_var_path = "/system/menuentries"

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
        :return_type => 'Array<MenuEntry>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Menu Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_menuentries_id_delete(id, opts = {})
      system_menuentries_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Menu Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_menuentries_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_delete"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Menu Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [MenuEntry]
    def system_menuentries_id_get(id, opts = {})
      data, _status_code, _headers = system_menuentries_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Menu Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuEntry, Fixnum, Hash)>] MenuEntry data, response status code and response headers
    def system_menuentries_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_get"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'MenuEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Menu Entry Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lastmodified 
    # @option opts [BOOLEAN] :large_flag 
    # @return [nil]
    def system_menuentries_id_image_get(id, opts = {})
      system_menuentries_id_image_get_with_http_info(id, opts)
      return nil
    end

    # 
    # Get Menu Entry Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :lastmodified 
    # @option opts [BOOLEAN] :large_flag 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_menuentries_id_image_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_image_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_image_get"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}/image".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'lastmodified'] = opts[:'lastmodified'] if !opts[:'lastmodified'].nil?
      query_params[:'largeFlag'] = opts[:'large_flag'] if !opts[:'large_flag'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_image_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Upload Menu Entry Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @return [nil]
    def system_menuentries_id_image_post(id, opts = {})
      system_menuentries_id_image_post_with_http_info(id, opts)
      return nil
    end

    # 
    # Upload Menu Entry Image
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_menuentries_id_image_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_image_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_image_post"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}/image".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_image_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Menu Entry
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [MenuEntry]
    def system_menuentries_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_menuentries_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Menu Entry
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuEntry, Fixnum, Hash)>] MenuEntry data, response status code and response headers
    def system_menuentries_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling MenuEntriesApi.system_menuentries_id_patch"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'MenuEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Menu Entry
    # @param id 
    # @param menu_entry 
    # @param [Hash] opts the optional parameters
    # @return [MenuEntry]
    def system_menuentries_id_put(id, menu_entry, opts = {})
      data, _status_code, _headers = system_menuentries_id_put_with_http_info(id, menu_entry, opts)
      return data
    end

    # 
    # Replace Menu Entry
    # @param id 
    # @param menu_entry 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuEntry, Fixnum, Hash)>] MenuEntry data, response status code and response headers
    def system_menuentries_id_put_with_http_info(id, menu_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MenuEntriesApi.system_menuentries_id_put"
      end
      # verify the required parameter 'menu_entry' is set
      if @api_client.config.client_side_validation && menu_entry.nil?
        fail ArgumentError, "Missing the required parameter 'menu_entry' when calling MenuEntriesApi.system_menuentries_id_put"
      end
      # resource path
      local_var_path = "/system/menuentries/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(menu_entry)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Menu Entry
    # @param menu_entry 
    # @param [Hash] opts the optional parameters
    # @return [MenuEntry]
    def system_menuentries_post(menu_entry, opts = {})
      data, _status_code, _headers = system_menuentries_post_with_http_info(menu_entry, opts)
      return data
    end

    # 
    # Create Menu Entry
    # @param menu_entry 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuEntry, Fixnum, Hash)>] MenuEntry data, response status code and response headers
    def system_menuentries_post_with_http_info(menu_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MenuEntriesApi.system_menuentries_post ..."
      end
      # verify the required parameter 'menu_entry' is set
      if @api_client.config.client_side_validation && menu_entry.nil?
        fail ArgumentError, "Missing the required parameter 'menu_entry' when calling MenuEntriesApi.system_menuentries_post"
      end
      # resource path
      local_var_path = "/system/menuentries"

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
      post_body = @api_client.object_to_http_body(menu_entry)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MenuEntriesApi#system_menuentries_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

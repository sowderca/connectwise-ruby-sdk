
require "uri"

module ConnectWise
  class CorporateStructuresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Corporate Structures Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_my_company_corporate_structure_count_get(opts = {})
      data, _status_code, _headers = system_my_company_corporate_structure_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Corporate Structures Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_my_company_corporate_structure_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorporateStructuresApi.system_my_company_corporate_structure_count_get ..."
      end
      # resource path
      local_var_path = "/system/myCompany/corporateStructure/count"

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
        @api_client.config.logger.debug "API called: CorporateStructuresApi#system_my_company_corporate_structure_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Corporate Structures
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CorporateStructure>]
    def system_my_company_corporate_structure_get(opts = {})
      data, _status_code, _headers = system_my_company_corporate_structure_get_with_http_info(opts)
      return data
    end

    # 
    # Get Corporate Structures
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CorporateStructure>, Fixnum, Hash)>] Array<CorporateStructure> data, response status code and response headers
    def system_my_company_corporate_structure_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorporateStructuresApi.system_my_company_corporate_structure_get ..."
      end
      # resource path
      local_var_path = "/system/myCompany/corporateStructure"

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
        :return_type => 'Array<CorporateStructure>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorporateStructuresApi#system_my_company_corporate_structure_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Corporate Structure By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [CorporateStructure]
    def system_my_company_corporate_structure_id_get(id, opts = {})
      data, _status_code, _headers = system_my_company_corporate_structure_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Corporate Structure By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CorporateStructure, Fixnum, Hash)>] CorporateStructure data, response status code and response headers
    def system_my_company_corporate_structure_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorporateStructuresApi.system_my_company_corporate_structure_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CorporateStructuresApi.system_my_company_corporate_structure_id_get"
      end
      # resource path
      local_var_path = "/system/myCompany/corporateStructure/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CorporateStructure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorporateStructuresApi#system_my_company_corporate_structure_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Corporate Structure
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CorporateStructure]
    def system_my_company_corporate_structure_id_patch(id, operations, opts = {})
      data, _status_code, _headers = system_my_company_corporate_structure_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Corporate Structure
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CorporateStructure, Fixnum, Hash)>] CorporateStructure data, response status code and response headers
    def system_my_company_corporate_structure_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorporateStructuresApi.system_my_company_corporate_structure_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CorporateStructuresApi.system_my_company_corporate_structure_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CorporateStructuresApi.system_my_company_corporate_structure_id_patch"
      end
      # resource path
      local_var_path = "/system/myCompany/corporateStructure/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'CorporateStructure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorporateStructuresApi#system_my_company_corporate_structure_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Corporate Structure
    # @param id 
    # @param corporate_structure 
    # @param [Hash] opts the optional parameters
    # @return [CorporateStructure]
    def system_my_company_corporate_structure_id_put(id, corporate_structure, opts = {})
      data, _status_code, _headers = system_my_company_corporate_structure_id_put_with_http_info(id, corporate_structure, opts)
      return data
    end

    # 
    # Replace Corporate Structure
    # @param id 
    # @param corporate_structure 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CorporateStructure, Fixnum, Hash)>] CorporateStructure data, response status code and response headers
    def system_my_company_corporate_structure_id_put_with_http_info(id, corporate_structure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CorporateStructuresApi.system_my_company_corporate_structure_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CorporateStructuresApi.system_my_company_corporate_structure_id_put"
      end
      # verify the required parameter 'corporate_structure' is set
      if @api_client.config.client_side_validation && corporate_structure.nil?
        fail ArgumentError, "Missing the required parameter 'corporate_structure' when calling CorporateStructuresApi.system_my_company_corporate_structure_id_put"
      end
      # resource path
      local_var_path = "/system/myCompany/corporateStructure/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(corporate_structure)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CorporateStructure')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CorporateStructuresApi#system_my_company_corporate_structure_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

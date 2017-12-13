
require "uri"

module ConnectWise
  class ManagementItSolutionAgreementInterfaceParametersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Management Product Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_management_it_solutions_id_management_products_count_get(id, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Management Product Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_management_it_solutions_id_management_products_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_count_get"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Management Product
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ManagementItSolutionAgreementInterfaceParameter>]
    def company_management_it_solutions_id_management_products_get(id, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Management Product
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ManagementItSolutionAgreementInterfaceParameter>, Fixnum, Hash)>] Array<ManagementItSolutionAgreementInterfaceParameter> data, response status code and response headers
    def company_management_it_solutions_id_management_products_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_get"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ManagementItSolutionAgreementInterfaceParameter>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Management Product
    # @param id 
    # @param management_product_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagementItSolutionAgreementInterfaceParameter]
    def company_management_it_solutions_id_management_products_management_product_id_delete(id, management_product_id, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_management_product_id_delete_with_http_info(id, management_product_id, opts)
      return data
    end

    # 
    # Delete Management Product
    # @param id 
    # @param management_product_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagementItSolutionAgreementInterfaceParameter, Fixnum, Hash)>] ManagementItSolutionAgreementInterfaceParameter data, response status code and response headers
    def company_management_it_solutions_id_management_products_management_product_id_delete_with_http_info(id, management_product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_delete"
      end
      # verify the required parameter 'management_product_id' is set
      if @api_client.config.client_side_validation && management_product_id.nil?
        fail ArgumentError, "Missing the required parameter 'management_product_id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_delete"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts/{managementProductID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'managementProductID' + '}', management_product_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagementItSolutionAgreementInterfaceParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_management_product_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Management Product By Id
    # @param id 
    # @param management_product_id 
    # @param [Hash] opts the optional parameters
    # @return [ManagementItSolutionAgreementInterfaceParameter]
    def company_management_it_solutions_id_management_products_management_product_id_get(id, management_product_id, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_management_product_id_get_with_http_info(id, management_product_id, opts)
      return data
    end

    # 
    # Get Management Product By Id
    # @param id 
    # @param management_product_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagementItSolutionAgreementInterfaceParameter, Fixnum, Hash)>] ManagementItSolutionAgreementInterfaceParameter data, response status code and response headers
    def company_management_it_solutions_id_management_products_management_product_id_get_with_http_info(id, management_product_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_get"
      end
      # verify the required parameter 'management_product_id' is set
      if @api_client.config.client_side_validation && management_product_id.nil?
        fail ArgumentError, "Missing the required parameter 'management_product_id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_get"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts/{managementProductID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'managementProductID' + '}', management_product_id.to_s)

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
        :return_type => 'ManagementItSolutionAgreementInterfaceParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_management_product_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Management Product
    # @param id 
    # @param management_product_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ManagementItSolutionAgreementInterfaceParameter]
    def company_management_it_solutions_id_management_products_management_product_id_patch(id, management_product_id, operations, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_management_product_id_patch_with_http_info(id, management_product_id, operations, opts)
      return data
    end

    # 
    # Management Product
    # @param id 
    # @param management_product_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagementItSolutionAgreementInterfaceParameter, Fixnum, Hash)>] ManagementItSolutionAgreementInterfaceParameter data, response status code and response headers
    def company_management_it_solutions_id_management_products_management_product_id_patch_with_http_info(id, management_product_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_patch"
      end
      # verify the required parameter 'management_product_id' is set
      if @api_client.config.client_side_validation && management_product_id.nil?
        fail ArgumentError, "Missing the required parameter 'management_product_id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_patch"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts/{managementProductID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'managementProductID' + '}', management_product_id.to_s)

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
        :return_type => 'ManagementItSolutionAgreementInterfaceParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_management_product_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Management Product
    # @param id 
    # @param management_product_id 
    # @param management_product 
    # @param [Hash] opts the optional parameters
    # @return [ManagementItSolutionAgreementInterfaceParameter]
    def company_management_it_solutions_id_management_products_management_product_id_put(id, management_product_id, management_product, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_management_product_id_put_with_http_info(id, management_product_id, management_product, opts)
      return data
    end

    # 
    # Replace Management Product
    # @param id 
    # @param management_product_id 
    # @param management_product 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagementItSolutionAgreementInterfaceParameter, Fixnum, Hash)>] ManagementItSolutionAgreementInterfaceParameter data, response status code and response headers
    def company_management_it_solutions_id_management_products_management_product_id_put_with_http_info(id, management_product_id, management_product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_put"
      end
      # verify the required parameter 'management_product_id' is set
      if @api_client.config.client_side_validation && management_product_id.nil?
        fail ArgumentError, "Missing the required parameter 'management_product_id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_put"
      end
      # verify the required parameter 'management_product' is set
      if @api_client.config.client_side_validation && management_product.nil?
        fail ArgumentError, "Missing the required parameter 'management_product' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_management_product_id_put"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts/{managementProductID}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'managementProductID' + '}', management_product_id.to_s)

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
      post_body = @api_client.object_to_http_body(management_product)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagementItSolutionAgreementInterfaceParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_management_product_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Management Product
    # @param id 
    # @param management_product 
    # @param [Hash] opts the optional parameters
    # @return [ManagementItSolutionAgreementInterfaceParameter]
    def company_management_it_solutions_id_management_products_post(id, management_product, opts = {})
      data, _status_code, _headers = company_management_it_solutions_id_management_products_post_with_http_info(id, management_product, opts)
      return data
    end

    # 
    # Create Management Product
    # @param id 
    # @param management_product 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManagementItSolutionAgreementInterfaceParameter, Fixnum, Hash)>] ManagementItSolutionAgreementInterfaceParameter data, response status code and response headers
    def company_management_it_solutions_id_management_products_post_with_http_info(id, management_product, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_post"
      end
      # verify the required parameter 'management_product' is set
      if @api_client.config.client_side_validation && management_product.nil?
        fail ArgumentError, "Missing the required parameter 'management_product' when calling ManagementItSolutionAgreementInterfaceParametersApi.company_management_it_solutions_id_management_products_post"
      end
      # resource path
      local_var_path = "/company/managementItSolutions/{id}/managementProducts".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(management_product)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ManagementItSolutionAgreementInterfaceParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementItSolutionAgreementInterfaceParametersApi#company_management_it_solutions_id_management_products_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

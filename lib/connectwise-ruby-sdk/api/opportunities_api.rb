
require "uri"

module ConnectWise
  class OpportunitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Opportunities Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Count]
    def sales_opportunities_count_get(opts = {})
      data, _status_code, _headers = sales_opportunities_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Opportunities Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def sales_opportunities_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_count_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'customFieldConditions'] = opts[:'custom_field_conditions'] if !opts[:'custom_field_conditions'].nil?

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Opportunities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Opportunity>]
    def sales_opportunities_get(opts = {})
      data, _status_code, _headers = sales_opportunities_get_with_http_info(opts)
      return data
    end

    # 
    # Get Opportunities
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Opportunity>, Fixnum, Hash)>] Array<Opportunity> data, response status code and response headers
    def sales_opportunities_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities"

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
        :return_type => 'Array<Opportunity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Convert Opportunity To Agreement
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Agreement]
    def sales_opportunities_id_convert_to_agreement_post(id, conversion, opts = {})
      data, _status_code, _headers = sales_opportunities_id_convert_to_agreement_post_with_http_info(id, conversion, opts)
      return data
    end

    # 
    # Convert Opportunity To Agreement
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agreement, Fixnum, Hash)>] Agreement data, response status code and response headers
    def sales_opportunities_id_convert_to_agreement_post_with_http_info(id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_convert_to_agreement_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_convert_to_agreement_post"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling OpportunitiesApi.sales_opportunities_id_convert_to_agreement_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}/convertToAgreement".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Agreement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_convert_to_agreement_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Convert Opportunity To Project
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Project]
    def sales_opportunities_id_convert_to_project_post(id, conversion, opts = {})
      data, _status_code, _headers = sales_opportunities_id_convert_to_project_post_with_http_info(id, conversion, opts)
      return data
    end

    # 
    # Convert Opportunity To Project
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Project, Fixnum, Hash)>] Project data, response status code and response headers
    def sales_opportunities_id_convert_to_project_post_with_http_info(id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_convert_to_project_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_convert_to_project_post"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling OpportunitiesApi.sales_opportunities_id_convert_to_project_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}/convertToProject".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Project')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_convert_to_project_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Convert Opportunity To Sales Order
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def sales_opportunities_id_convert_to_sales_order_post(id, conversion, opts = {})
      data, _status_code, _headers = sales_opportunities_id_convert_to_sales_order_post_with_http_info(id, conversion, opts)
      return data
    end

    # 
    # Convert Opportunity To Sales Order
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Fixnum, Hash)>] Order data, response status code and response headers
    def sales_opportunities_id_convert_to_sales_order_post_with_http_info(id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_convert_to_sales_order_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_convert_to_sales_order_post"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling OpportunitiesApi.sales_opportunities_id_convert_to_sales_order_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}/convertToSalesOrder".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Order')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_convert_to_sales_order_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Convert Opportunity To Service Ticket
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Ticket]
    def sales_opportunities_id_convert_to_service_ticket_post(id, conversion, opts = {})
      data, _status_code, _headers = sales_opportunities_id_convert_to_service_ticket_post_with_http_info(id, conversion, opts)
      return data
    end

    # 
    # Convert Opportunity To Service Ticket
    # @param id 
    # @param conversion 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticket, Fixnum, Hash)>] Ticket data, response status code and response headers
    def sales_opportunities_id_convert_to_service_ticket_post_with_http_info(id, conversion, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_convert_to_service_ticket_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_convert_to_service_ticket_post"
      end
      # verify the required parameter 'conversion' is set
      if @api_client.config.client_side_validation && conversion.nil?
        fail ArgumentError, "Missing the required parameter 'conversion' when calling OpportunitiesApi.sales_opportunities_id_convert_to_service_ticket_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}/convertToServiceTicket".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(conversion)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Ticket')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_convert_to_service_ticket_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Opportunity By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sales_opportunities_id_delete(id, opts = {})
      sales_opportunities_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Opportunity By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sales_opportunities_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_delete"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Opportunity By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Opportunity]
    def sales_opportunities_id_get(id, opts = {})
      data, _status_code, _headers = sales_opportunities_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Opportunity By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Opportunity, Fixnum, Hash)>] Opportunity data, response status code and response headers
    def sales_opportunities_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_get"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Opportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Opportunity
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Opportunity]
    def sales_opportunities_id_patch(id, operations, opts = {})
      data, _status_code, _headers = sales_opportunities_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Opportunity
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Opportunity, Fixnum, Hash)>] Opportunity data, response status code and response headers
    def sales_opportunities_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling OpportunitiesApi.sales_opportunities_id_patch"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Opportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Opportunity
    # @param id 
    # @param opportunity 
    # @param [Hash] opts the optional parameters
    # @return [Opportunity]
    def sales_opportunities_id_put(id, opportunity, opts = {})
      data, _status_code, _headers = sales_opportunities_id_put_with_http_info(id, opportunity, opts)
      return data
    end

    # 
    # Replace Opportunity
    # @param id 
    # @param opportunity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Opportunity, Fixnum, Hash)>] Opportunity data, response status code and response headers
    def sales_opportunities_id_put_with_http_info(id, opportunity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunitiesApi.sales_opportunities_id_put"
      end
      # verify the required parameter 'opportunity' is set
      if @api_client.config.client_side_validation && opportunity.nil?
        fail ArgumentError, "Missing the required parameter 'opportunity' when calling OpportunitiesApi.sales_opportunities_id_put"
      end
      # resource path
      local_var_path = "/sales/opportunities/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opportunity)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Opportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Opportunity
    # @param opportunity 
    # @param [Hash] opts the optional parameters
    # @return [Opportunity]
    def sales_opportunities_post(opportunity, opts = {})
      data, _status_code, _headers = sales_opportunities_post_with_http_info(opportunity, opts)
      return data
    end

    # 
    # Create Opportunity
    # @param opportunity 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Opportunity, Fixnum, Hash)>] Opportunity data, response status code and response headers
    def sales_opportunities_post_with_http_info(opportunity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi.sales_opportunities_post ..."
      end
      # verify the required parameter 'opportunity' is set
      if @api_client.config.client_side_validation && opportunity.nil?
        fail ArgumentError, "Missing the required parameter 'opportunity' when calling OpportunitiesApi.sales_opportunities_post"
      end
      # resource path
      local_var_path = "/sales/opportunities"

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
      post_body = @api_client.object_to_http_body(opportunity)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Opportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#sales_opportunities_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

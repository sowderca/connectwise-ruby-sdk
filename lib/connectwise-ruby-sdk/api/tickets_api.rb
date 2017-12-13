
require "uri"

module ConnectWise
  class TicketsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Tickets Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Count]
    def service_tickets_count_get(opts = {})
      data, _status_code, _headers = service_tickets_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Tickets Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_count_get ..."
      end
      # resource path
      local_var_path = "/service/tickets/count"

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
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tickets
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Ticket>]
    def service_tickets_get(opts = {})
      data, _status_code, _headers = service_tickets_get_with_http_info(opts)
      return data
    end

    # 
    # Get Tickets
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Ticket>, Fixnum, Hash)>] Array<Ticket> data, response status code and response headers
    def service_tickets_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_get ..."
      end
      # resource path
      local_var_path = "/service/tickets"

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
        :return_type => 'Array<Ticket>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets count of activities associated to the ticket          /// Please use the /sales/activities/count?conditions=ticket/id={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_activities_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_activities_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets count of activities associated to the ticket          /// Please use the /sales/activities/count?conditions&#x3D;ticket/id&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_activities_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_activities_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_activities_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/activities/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_activities_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets activities associated to the ticket          /// Please use the /sales/activities?conditions=ticket/id={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ActivityReference>]
    def service_tickets_id_activities_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_activities_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets activities associated to the ticket          /// Please use the /sales/activities?conditions&#x3D;ticket/id&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ActivityReference>, Fixnum, Hash)>] Array<ActivityReference> data, response status code and response headers
    def service_tickets_id_activities_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_activities_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_activities_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/activities".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<ActivityReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_activities_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Configuration Association
    # @param id 
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_tickets_id_configurations_config_id_delete(id, config_id, opts = {})
      service_tickets_id_configurations_config_id_delete_with_http_info(id, config_id, opts)
      return nil
    end

    # 
    # Delete Configuration Association
    # @param id 
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_tickets_id_configurations_config_id_delete_with_http_info(id, config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_configurations_config_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_configurations_config_id_delete"
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling TicketsApi.service_tickets_id_configurations_config_id_delete"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/configurations/{configId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'configId' + '}', config_id.to_s)

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
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_configurations_config_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configuration Association
    # @param id 
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationReference]
    def service_tickets_id_configurations_config_id_get(id, config_id, opts = {})
      data, _status_code, _headers = service_tickets_id_configurations_config_id_get_with_http_info(id, config_id, opts)
      return data
    end

    # 
    # Get Configuration Association
    # @param id 
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationReference, Fixnum, Hash)>] ConfigurationReference data, response status code and response headers
    def service_tickets_id_configurations_config_id_get_with_http_info(id, config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_configurations_config_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_configurations_config_id_get"
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling TicketsApi.service_tickets_id_configurations_config_id_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/configurations/{configId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'configId' + '}', config_id.to_s)

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
        :return_type => 'ConfigurationReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_configurations_config_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Ticket Configurations Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_configurations_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_configurations_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Ticket Configurations Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_configurations_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_configurations_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_configurations_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/configurations/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_configurations_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Ticket Configurations
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ConfigurationReference>]
    def service_tickets_id_configurations_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_configurations_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Ticket Configurations
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ConfigurationReference>, Fixnum, Hash)>] Array<ConfigurationReference> data, response status code and response headers
    def service_tickets_id_configurations_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_configurations_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_configurations_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/configurations".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<ConfigurationReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_configurations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Configuration Association
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @return [ConfigurationReference]
    def service_tickets_id_configurations_post(id, configuration, opts = {})
      data, _status_code, _headers = service_tickets_id_configurations_post_with_http_info(id, configuration, opts)
      return data
    end

    # 
    # Create Configuration Association
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ConfigurationReference, Fixnum, Hash)>] ConfigurationReference data, response status code and response headers
    def service_tickets_id_configurations_post_with_http_info(id, configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_configurations_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_configurations_post"
      end
      # verify the required parameter 'configuration' is set
      if @api_client.config.client_side_validation && configuration.nil?
        fail ArgumentError, "Missing the required parameter 'configuration' when calling TicketsApi.service_tickets_id_configurations_post"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/configurations".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConfigurationReference')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_configurations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Ticket By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_tickets_id_delete(id, opts = {})
      service_tickets_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Ticket By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_tickets_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_delete"
      end
      # resource path
      local_var_path = "/service/tickets/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Ticket Documents Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_documents_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_documents_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Ticket Documents Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_documents_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_documents_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_documents_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/documents/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_documents_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets the documents associated to the ticket          /// Please use the /system/documents?recordType=Ticket&amp;recordId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<DocumentReference>]
    def service_tickets_id_documents_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_documents_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets the documents associated to the ticket          /// Please use the /system/documents?recordType&#x3D;Ticket&amp;amp;recordId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<DocumentReference>, Fixnum, Hash)>] Array<DocumentReference> data, response status code and response headers
    def service_tickets_id_documents_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_documents_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_documents_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/documents".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<DocumentReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Ticket By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Ticket]
    def service_tickets_id_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Ticket By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticket, Fixnum, Hash)>] Ticket data, response status code and response headers
    def service_tickets_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Ticket')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Merge Company
    # @param id 
    # @param merge 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def service_tickets_id_merge_post(id, merge, opts = {})
      data, _status_code, _headers = service_tickets_id_merge_post_with_http_info(id, merge, opts)
      return data
    end

    # 
    # Merge Company
    # @param id 
    # @param merge 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def service_tickets_id_merge_post_with_http_info(id, merge, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_merge_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_merge_post"
      end
      # verify the required parameter 'merge' is set
      if @api_client.config.client_side_validation && merge.nil?
        fail ArgumentError, "Missing the required parameter 'merge' when calling TicketsApi.service_tickets_id_merge_post"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/merge".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(merge)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_merge_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Ticket
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Ticket]
    def service_tickets_id_patch(id, operations, opts = {})
      data, _status_code, _headers = service_tickets_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Ticket
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticket, Fixnum, Hash)>] Ticket data, response status code and response headers
    def service_tickets_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling TicketsApi.service_tickets_id_patch"
      end
      # resource path
      local_var_path = "/service/tickets/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Ticket')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets the products associated to the ticket          /// Please use the /procurement/products/count?conditions=chargeToType='Ticket' AND chargeToId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_products_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_products_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets the products associated to the ticket          /// Please use the /procurement/products/count?conditions&#x3D;chargeToType&#x3D;&#39;Ticket&#39; AND chargeToId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_products_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_products_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_products_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/products/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_products_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets the products associated to the ticket          /// Please use the /procurement/products?conditions=chargeToType='Ticket' AND chargeToId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ProductReference>]
    def service_tickets_id_products_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_products_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets the products associated to the ticket          /// Please use the /procurement/products?conditions&#x3D;chargeToType&#x3D;&#39;Ticket&#39; AND chargeToId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ProductReference>, Fixnum, Hash)>] Array<ProductReference> data, response status code and response headers
    def service_tickets_id_products_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_products_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_products_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/products".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<ProductReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_products_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Ticket
    # @param id 
    # @param ticket 
    # @param [Hash] opts the optional parameters
    # @return [Ticket]
    def service_tickets_id_put(id, ticket, opts = {})
      data, _status_code, _headers = service_tickets_id_put_with_http_info(id, ticket, opts)
      return data
    end

    # 
    # Replace Ticket
    # @param id 
    # @param ticket 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticket, Fixnum, Hash)>] Ticket data, response status code and response headers
    def service_tickets_id_put_with_http_info(id, ticket, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_put"
      end
      # verify the required parameter 'ticket' is set
      if @api_client.config.client_side_validation && ticket.nil?
        fail ArgumentError, "Missing the required parameter 'ticket' when calling TicketsApi.service_tickets_id_put"
      end
      # resource path
      local_var_path = "/service/tickets/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(ticket)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Ticket')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets the schedule entries count associated to the ticket          /// Please use the /schedule/entries/count?conditions=type/id=4 AND objectId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_scheduleentries_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_scheduleentries_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets the schedule entries count associated to the ticket          /// Please use the /schedule/entries/count?conditions&#x3D;type/id&#x3D;4 AND objectId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_scheduleentries_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_scheduleentries_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_scheduleentries_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/scheduleentries/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_scheduleentries_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets the schedule entries associated to the ticket          /// Please use the /schedule/entries?conditions=type/id=4 AND objectId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ScheduleEntryReference>]
    def service_tickets_id_scheduleentries_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_scheduleentries_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets the schedule entries associated to the ticket          /// Please use the /schedule/entries?conditions&#x3D;type/id&#x3D;4 AND objectId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ScheduleEntryReference>, Fixnum, Hash)>] Array<ScheduleEntryReference> data, response status code and response headers
    def service_tickets_id_scheduleentries_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_scheduleentries_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_scheduleentries_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/scheduleentries".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<ScheduleEntryReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_scheduleentries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets time entries count associated to the ticket          /// Please use the /time/entries/count?conditions=(chargeToType=\"ServiceTicket\" OR chargeToType=\"ProjectTicket\") AND chargeToId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Count]
    def service_tickets_id_timeentries_count_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_timeentries_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets time entries count associated to the ticket          /// Please use the /time/entries/count?conditions&#x3D;(chargeToType&#x3D;\&quot;ServiceTicket\&quot; OR chargeToType&#x3D;\&quot;ProjectTicket\&quot;) AND chargeToId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_tickets_id_timeentries_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_timeentries_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_timeentries_count_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/timeentries/count".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_timeentries_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Gets time entries associated to the ticket          /// Please use the /time/entries?conditions=(chargeToType=\"ServiceTicket\" OR chargeToType=\"ProjectTicket\") AND chargeToId={id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<TimeEntryReference>]
    def service_tickets_id_timeentries_get(id, opts = {})
      data, _status_code, _headers = service_tickets_id_timeentries_get_with_http_info(id, opts)
      return data
    end

    # 
    # Gets time entries associated to the ticket          /// Please use the /time/entries?conditions&#x3D;(chargeToType&#x3D;\&quot;ServiceTicket\&quot; OR chargeToType&#x3D;\&quot;ProjectTicket\&quot;) AND chargeToId&#x3D;{id} endpoint
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<TimeEntryReference>, Fixnum, Hash)>] Array<TimeEntryReference> data, response status code and response headers
    def service_tickets_id_timeentries_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_id_timeentries_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.service_tickets_id_timeentries_get"
      end
      # resource path
      local_var_path = "/service/tickets/{id}/timeentries".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<TimeEntryReference>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_id_timeentries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Ticket
    # @param ticket 
    # @param [Hash] opts the optional parameters
    # @return [Ticket]
    def service_tickets_post(ticket, opts = {})
      data, _status_code, _headers = service_tickets_post_with_http_info(ticket, opts)
      return data
    end

    # 
    # Create Ticket
    # @param ticket 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticket, Fixnum, Hash)>] Ticket data, response status code and response headers
    def service_tickets_post_with_http_info(ticket, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_post ..."
      end
      # verify the required parameter 'ticket' is set
      if @api_client.config.client_side_validation && ticket.nil?
        fail ArgumentError, "Missing the required parameter 'ticket' when calling TicketsApi.service_tickets_post"
      end
      # resource path
      local_var_path = "/service/tickets"

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
      post_body = @api_client.object_to_http_body(ticket)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Ticket')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Ticket Search
    # @param filter_values 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Ticket>]
    def service_tickets_search_post(filter_values, opts = {})
      data, _status_code, _headers = service_tickets_search_post_with_http_info(filter_values, opts)
      return data
    end

    # 
    # Ticket Search
    # @param filter_values 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Ticket>, Fixnum, Hash)>] Array<Ticket> data, response status code and response headers
    def service_tickets_search_post_with_http_info(filter_values, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TicketsApi.service_tickets_search_post ..."
      end
      # verify the required parameter 'filter_values' is set
      if @api_client.config.client_side_validation && filter_values.nil?
        fail ArgumentError, "Missing the required parameter 'filter_values' when calling TicketsApi.service_tickets_search_post"
      end
      # resource path
      local_var_path = "/service/tickets/search"

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(filter_values)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Ticket>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#service_tickets_search_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

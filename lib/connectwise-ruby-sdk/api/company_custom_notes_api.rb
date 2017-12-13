
require "uri"

module ConnectWise
  class CompanyCustomNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Custom Note Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_companies_id_custom_status_notes_count_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Custom Note Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_companies_id_custom_status_notes_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_count_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Custom Note By Id
    # @param id 
    # @param custom_note_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_custom_status_notes_custom_note_id_delete(id, custom_note_id, opts = {})
      company_companies_id_custom_status_notes_custom_note_id_delete_with_http_info(id, custom_note_id, opts)
      return nil
    end

    # 
    # Delete Custom Note By Id
    # @param id 
    # @param custom_note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_custom_status_notes_custom_note_id_delete_with_http_info(id, custom_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_delete"
      end
      # verify the required parameter 'custom_note_id' is set
      if @api_client.config.client_side_validation && custom_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note_id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_delete"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes/{customNoteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'customNoteId' + '}', custom_note_id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_custom_note_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Custom Note By Id
    # @param id 
    # @param custom_note_id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyCustomNote]
    def company_companies_id_custom_status_notes_custom_note_id_get(id, custom_note_id, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_custom_note_id_get_with_http_info(id, custom_note_id, opts)
      return data
    end

    # 
    # Get Custom Note By Id
    # @param id 
    # @param custom_note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCustomNote, Fixnum, Hash)>] CompanyCustomNote data, response status code and response headers
    def company_companies_id_custom_status_notes_custom_note_id_get_with_http_info(id, custom_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_get"
      end
      # verify the required parameter 'custom_note_id' is set
      if @api_client.config.client_side_validation && custom_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note_id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes/{customNoteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'customNoteId' + '}', custom_note_id.to_s)

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
        :return_type => 'CompanyCustomNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_custom_note_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Custom Note
    # @param id 
    # @param custom_note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CompanyCustomNote]
    def company_companies_id_custom_status_notes_custom_note_id_patch(id, custom_note_id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_custom_note_id_patch_with_http_info(id, custom_note_id, operations, opts)
      return data
    end

    # 
    # Update Custom Note
    # @param id 
    # @param custom_note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCustomNote, Fixnum, Hash)>] CompanyCustomNote data, response status code and response headers
    def company_companies_id_custom_status_notes_custom_note_id_patch_with_http_info(id, custom_note_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_patch"
      end
      # verify the required parameter 'custom_note_id' is set
      if @api_client.config.client_side_validation && custom_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note_id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_patch"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes/{customNoteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'customNoteId' + '}', custom_note_id.to_s)

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
        :return_type => 'CompanyCustomNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_custom_note_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Custom Note
    # @param id 
    # @param custom_note_id 
    # @param custom_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyCustomNote]
    def company_companies_id_custom_status_notes_custom_note_id_put(id, custom_note_id, custom_note, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_custom_note_id_put_with_http_info(id, custom_note_id, custom_note, opts)
      return data
    end

    # 
    # Replace Custom Note
    # @param id 
    # @param custom_note_id 
    # @param custom_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCustomNote, Fixnum, Hash)>] CompanyCustomNote data, response status code and response headers
    def company_companies_id_custom_status_notes_custom_note_id_put_with_http_info(id, custom_note_id, custom_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_put"
      end
      # verify the required parameter 'custom_note_id' is set
      if @api_client.config.client_side_validation && custom_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note_id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_put"
      end
      # verify the required parameter 'custom_note' is set
      if @api_client.config.client_side_validation && custom_note.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_custom_note_id_put"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes/{customNoteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'customNoteId' + '}', custom_note_id.to_s)

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
      post_body = @api_client.object_to_http_body(custom_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyCustomNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_custom_note_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Custom Note
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyCustomNote>]
    def company_companies_id_custom_status_notes_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Custom Note
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyCustomNote>, Fixnum, Hash)>] Array<CompanyCustomNote> data, response status code and response headers
    def company_companies_id_custom_status_notes_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<CompanyCustomNote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Custom Note
    # @param id 
    # @param custom_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyCustomNote]
    def company_companies_id_custom_status_notes_post(id, custom_note, opts = {})
      data, _status_code, _headers = company_companies_id_custom_status_notes_post_with_http_info(id, custom_note, opts)
      return data
    end

    # 
    # Create Custom Note
    # @param id 
    # @param custom_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyCustomNote, Fixnum, Hash)>] CompanyCustomNote data, response status code and response headers
    def company_companies_id_custom_status_notes_post_with_http_info(id, custom_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyCustomNotesApi.company_companies_id_custom_status_notes_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_post"
      end
      # verify the required parameter 'custom_note' is set
      if @api_client.config.client_side_validation && custom_note.nil?
        fail ArgumentError, "Missing the required parameter 'custom_note' when calling CompanyCustomNotesApi.company_companies_id_custom_status_notes_post"
      end
      # resource path
      local_var_path = "/company/companies/{id}/customStatusNotes".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(custom_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyCustomNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyCustomNotesApi#company_companies_id_custom_status_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

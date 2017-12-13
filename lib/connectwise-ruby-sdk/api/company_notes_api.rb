
require "uri"

module ConnectWise
  class CompanyNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Company Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_companies_id_notes_count_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Notes Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_companies_id_notes_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_count_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyNote>]
    def company_companies_id_notes_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company Notes
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyNote>, Fixnum, Hash)>] Array<CompanyNote> data, response status code and response headers
    def company_companies_id_notes_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<CompanyNote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_notes_note_id_delete(id, note_id, opts = {})
      company_companies_id_notes_note_id_delete_with_http_info(id, note_id, opts)
      return nil
    end

    # 
    # Delete Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_notes_note_id_delete_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_delete"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_delete"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_get(id, note_id, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_get_with_http_info(id, note_id, opts)
      return data
    end

    # 
    # Get Company Note By Id
    # @param id 
    # @param note_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_get_with_http_info(id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_get"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Company Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_patch(id, note_id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts)
      return data
    end

    # 
    # Update Company Note
    # @param id 
    # @param note_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_patch_with_http_info(id, note_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CompanyNotesApi.company_companies_id_notes_note_id_patch"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Company Note
    # @param id 
    # @param note_id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_note_id_put(id, note_id, company_note, opts = {})
      data, _status_code, _headers = company_companies_id_notes_note_id_put_with_http_info(id, note_id, company_note, opts)
      return data
    end

    # 
    # Replace Company Note
    # @param id 
    # @param note_id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_note_id_put_with_http_info(id, note_id, company_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_note_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_note_id_put"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling CompanyNotesApi.company_companies_id_notes_note_id_put"
      end
      # verify the required parameter 'company_note' is set
      if @api_client.config.client_side_validation && company_note.nil?
        fail ArgumentError, "Missing the required parameter 'company_note' when calling CompanyNotesApi.company_companies_id_notes_note_id_put"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes/{noteId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'noteId' + '}', note_id.to_s)

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
      post_body = @api_client.object_to_http_body(company_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_note_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Company Note
    # @param id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [CompanyNote]
    def company_companies_id_notes_post(id, company_note, opts = {})
      data, _status_code, _headers = company_companies_id_notes_post_with_http_info(id, company_note, opts)
      return data
    end

    # 
    # Create Company Note
    # @param id 
    # @param company_note 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyNote, Fixnum, Hash)>] CompanyNote data, response status code and response headers
    def company_companies_id_notes_post_with_http_info(id, company_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyNotesApi.company_companies_id_notes_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyNotesApi.company_companies_id_notes_post"
      end
      # verify the required parameter 'company_note' is set
      if @api_client.config.client_side_validation && company_note.nil?
        fail ArgumentError, "Missing the required parameter 'company_note' when calling CompanyNotesApi.company_companies_id_notes_post"
      end
      # resource path
      local_var_path = "/company/companies/{id}/notes".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(company_note)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyNote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyNotesApi#company_companies_id_notes_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

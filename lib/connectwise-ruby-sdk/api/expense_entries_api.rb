
require "uri"

module ConnectWise
  class ExpenseEntriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Expense Entries Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @option opts [String] :child_conditions 
    # @return [Count]
    def expense_entries_count_get(opts = {})
      data, _status_code, _headers = expense_entries_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Expense Entries Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @option opts [String] :child_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def expense_entries_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_count_get ..."
      end
      # resource path
      local_var_path = "/expense/entries/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'customFieldConditions'] = opts[:'custom_field_conditions'] if !opts[:'custom_field_conditions'].nil?
      query_params[:'childConditions'] = opts[:'child_conditions'] if !opts[:'child_conditions'].nil?

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
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Expense Entries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ExpenseEntry>]
    def expense_entries_get(opts = {})
      data, _status_code, _headers = expense_entries_get_with_http_info(opts)
      return data
    end

    # 
    # Get Expense Entries
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ExpenseEntry>, Fixnum, Hash)>] Array<ExpenseEntry> data, response status code and response headers
    def expense_entries_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_get ..."
      end
      # resource path
      local_var_path = "/expense/entries"

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
        :return_type => 'Array<ExpenseEntry>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Expense Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def expense_entries_id_delete(id, opts = {})
      expense_entries_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Expense Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def expense_entries_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseEntriesApi.expense_entries_id_delete"
      end
      # resource path
      local_var_path = "/expense/entries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Expense Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseEntry]
    def expense_entries_id_get(id, opts = {})
      data, _status_code, _headers = expense_entries_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Expense Entry By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseEntry, Fixnum, Hash)>] ExpenseEntry data, response status code and response headers
    def expense_entries_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseEntriesApi.expense_entries_id_get"
      end
      # resource path
      local_var_path = "/expense/entries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ExpenseEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Expense Entry
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseEntry]
    def expense_entries_id_patch(id, operations, opts = {})
      data, _status_code, _headers = expense_entries_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Expense Entry
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseEntry, Fixnum, Hash)>] ExpenseEntry data, response status code and response headers
    def expense_entries_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseEntriesApi.expense_entries_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ExpenseEntriesApi.expense_entries_id_patch"
      end
      # resource path
      local_var_path = "/expense/entries/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ExpenseEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Expense Entry
    # @param id 
    # @param expense_entry 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseEntry]
    def expense_entries_id_put(id, expense_entry, opts = {})
      data, _status_code, _headers = expense_entries_id_put_with_http_info(id, expense_entry, opts)
      return data
    end

    # 
    # Replace Expense Entry
    # @param id 
    # @param expense_entry 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseEntry, Fixnum, Hash)>] ExpenseEntry data, response status code and response headers
    def expense_entries_id_put_with_http_info(id, expense_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ExpenseEntriesApi.expense_entries_id_put"
      end
      # verify the required parameter 'expense_entry' is set
      if @api_client.config.client_side_validation && expense_entry.nil?
        fail ArgumentError, "Missing the required parameter 'expense_entry' when calling ExpenseEntriesApi.expense_entries_id_put"
      end
      # resource path
      local_var_path = "/expense/entries/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(expense_entry)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExpenseEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Expense Entry
    # @param expense_entry 
    # @param [Hash] opts the optional parameters
    # @return [ExpenseEntry]
    def expense_entries_post(expense_entry, opts = {})
      data, _status_code, _headers = expense_entries_post_with_http_info(expense_entry, opts)
      return data
    end

    # 
    # Create Expense Entry
    # @param expense_entry 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExpenseEntry, Fixnum, Hash)>] ExpenseEntry data, response status code and response headers
    def expense_entries_post_with_http_info(expense_entry, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExpenseEntriesApi.expense_entries_post ..."
      end
      # verify the required parameter 'expense_entry' is set
      if @api_client.config.client_side_validation && expense_entry.nil?
        fail ArgumentError, "Missing the required parameter 'expense_entry' when calling ExpenseEntriesApi.expense_entries_post"
      end
      # resource path
      local_var_path = "/expense/entries"

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
      post_body = @api_client.object_to_http_body(expense_entry)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExpenseEntry')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExpenseEntriesApi#expense_entries_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

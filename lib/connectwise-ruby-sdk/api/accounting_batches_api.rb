
require "uri"

module ConnectWise
  class AccountingBatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Batches Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def finance_accounting_batches_count_get(opts = {})
      data, _status_code, _headers = finance_accounting_batches_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Batches Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def finance_accounting_batches_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_count_get ..."
      end
      # resource path
      local_var_path = "/finance/accounting/batches/count"

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
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Batches
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<AccountingBatch>]
    def finance_accounting_batches_get(opts = {})
      data, _status_code, _headers = finance_accounting_batches_get_with_http_info(opts)
      return data
    end

    # 
    # Get Batches
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<AccountingBatch>, Fixnum, Hash)>] Array<AccountingBatch> data, response status code and response headers
    def finance_accounting_batches_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_get ..."
      end
      # resource path
      local_var_path = "/finance/accounting/batches"

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
        :return_type => 'Array<AccountingBatch>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Batch By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_accounting_batches_id_delete(id, opts = {})
      finance_accounting_batches_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Batch By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_accounting_batches_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountingBatchesApi.finance_accounting_batches_id_delete"
      end
      # resource path
      local_var_path = "/finance/accounting/batches/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Re-export the payload data from an existing batch (RecreateBatch in SOAP)
    # @param id 
    # @param batch_export_parameters 
    # @param [Hash] opts the optional parameters
    # @return [GLExport]
    def finance_accounting_batches_id_export_post(id, batch_export_parameters, opts = {})
      data, _status_code, _headers = finance_accounting_batches_id_export_post_with_http_info(id, batch_export_parameters, opts)
      return data
    end

    # 
    # Re-export the payload data from an existing batch (RecreateBatch in SOAP)
    # @param id 
    # @param batch_export_parameters 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLExport, Fixnum, Hash)>] GLExport data, response status code and response headers
    def finance_accounting_batches_id_export_post_with_http_info(id, batch_export_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_id_export_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountingBatchesApi.finance_accounting_batches_id_export_post"
      end
      # verify the required parameter 'batch_export_parameters' is set
      if @api_client.config.client_side_validation && batch_export_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'batch_export_parameters' when calling AccountingBatchesApi.finance_accounting_batches_id_export_post"
      end
      # resource path
      local_var_path = "/finance/accounting/batches/{id}/export".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(batch_export_parameters)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GLExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_id_export_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Batch By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [AccountingBatch]
    def finance_accounting_batches_id_get(id, opts = {})
      data, _status_code, _headers = finance_accounting_batches_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Batch By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountingBatch, Fixnum, Hash)>] AccountingBatch data, response status code and response headers
    def finance_accounting_batches_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountingBatchesApi.finance_accounting_batches_id_get"
      end
      # resource path
      local_var_path = "/finance/accounting/batches/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AccountingBatch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Creates the Accounting Batch and updates GL Records (UpdateBatch in SOAP)
    # @param accounting_batch_parameters 
    # @param [Hash] opts the optional parameters
    # @return [GLExport]
    def finance_accounting_batches_post(accounting_batch_parameters, opts = {})
      data, _status_code, _headers = finance_accounting_batches_post_with_http_info(accounting_batch_parameters, opts)
      return data
    end

    # 
    # Creates the Accounting Batch and updates GL Records (UpdateBatch in SOAP)
    # @param accounting_batch_parameters 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLExport, Fixnum, Hash)>] GLExport data, response status code and response headers
    def finance_accounting_batches_post_with_http_info(accounting_batch_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_batches_post ..."
      end
      # verify the required parameter 'accounting_batch_parameters' is set
      if @api_client.config.client_side_validation && accounting_batch_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'accounting_batch_parameters' when calling AccountingBatchesApi.finance_accounting_batches_post"
      end
      # resource path
      local_var_path = "/finance/accounting/batches"

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
      post_body = @api_client.object_to_http_body(accounting_batch_parameters)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GLExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_batches_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Exports accouting batch payload based on parameters (CreateBatch in SOAP)
    # @param batch_export_parameters 
    # @param [Hash] opts the optional parameters
    # @return [GLExport]
    def finance_accounting_export_post(batch_export_parameters, opts = {})
      data, _status_code, _headers = finance_accounting_export_post_with_http_info(batch_export_parameters, opts)
      return data
    end

    # 
    # Exports accouting batch payload based on parameters (CreateBatch in SOAP)
    # @param batch_export_parameters 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLExport, Fixnum, Hash)>] GLExport data, response status code and response headers
    def finance_accounting_export_post_with_http_info(batch_export_parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountingBatchesApi.finance_accounting_export_post ..."
      end
      # verify the required parameter 'batch_export_parameters' is set
      if @api_client.config.client_side_validation && batch_export_parameters.nil?
        fail ArgumentError, "Missing the required parameter 'batch_export_parameters' when calling AccountingBatchesApi.finance_accounting_export_post"
      end
      # resource path
      local_var_path = "/finance/accounting/export"

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
      post_body = @api_client.object_to_http_body(batch_export_parameters)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GLExport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountingBatchesApi#finance_accounting_export_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

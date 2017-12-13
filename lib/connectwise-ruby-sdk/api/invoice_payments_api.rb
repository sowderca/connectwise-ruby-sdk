
require "uri"

module ConnectWise
  class InvoicePaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Payments
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Payment>]
    def finance_invoices_id_payments_get(id, opts = {})
      data, _status_code, _headers = finance_invoices_id_payments_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Payments
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Payment>, Fixnum, Hash)>] Array<Payment> data, response status code and response headers
    def finance_invoices_id_payments_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_get"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<Payment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Payment By Id
    # @param id 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finance_invoices_id_payments_payment_id_delete(id, payment_id, opts = {})
      finance_invoices_id_payments_payment_id_delete_with_http_info(id, payment_id, opts)
      return nil
    end

    # 
    # Delete Payment By Id
    # @param id 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_invoices_id_payments_payment_id_delete_with_http_info(id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_payment_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_delete"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_delete"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments/{paymentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_payment_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Payment By Id
    # @param id 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def finance_invoices_id_payments_payment_id_get(id, payment_id, opts = {})
      data, _status_code, _headers = finance_invoices_id_payments_payment_id_get_with_http_info(id, payment_id, opts)
      return data
    end

    # 
    # Get Payment By Id
    # @param id 
    # @param payment_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def finance_invoices_id_payments_payment_id_get_with_http_info(id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_payment_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_get"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_get"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments/{paymentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_payment_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Payment
    # @param id 
    # @param payment_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def finance_invoices_id_payments_payment_id_patch(id, payment_id, operations, opts = {})
      data, _status_code, _headers = finance_invoices_id_payments_payment_id_patch_with_http_info(id, payment_id, operations, opts)
      return data
    end

    # 
    # Update Payment
    # @param id 
    # @param payment_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def finance_invoices_id_payments_payment_id_patch_with_http_info(id, payment_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_payment_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_patch"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_patch"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments/{paymentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'paymentId' + '}', payment_id.to_s)

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
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_payment_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Payment
    # @param id 
    # @param payment_id 
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def finance_invoices_id_payments_payment_id_put(id, payment_id, payment, opts = {})
      data, _status_code, _headers = finance_invoices_id_payments_payment_id_put_with_http_info(id, payment_id, payment, opts)
      return data
    end

    # 
    # Replace Payment
    # @param id 
    # @param payment_id 
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def finance_invoices_id_payments_payment_id_put_with_http_info(id, payment_id, payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_payment_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_put"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_put"
      end
      # verify the required parameter 'payment' is set
      if @api_client.config.client_side_validation && payment.nil?
        fail ArgumentError, "Missing the required parameter 'payment' when calling InvoicePaymentsApi.finance_invoices_id_payments_payment_id_put"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments/{paymentId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'paymentId' + '}', payment_id.to_s)

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
      post_body = @api_client.object_to_http_body(payment)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_payment_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Payment
    # @param id 
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def finance_invoices_id_payments_post(id, payment, opts = {})
      data, _status_code, _headers = finance_invoices_id_payments_post_with_http_info(id, payment, opts)
      return data
    end

    # 
    # Create Payment
    # @param id 
    # @param payment 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def finance_invoices_id_payments_post_with_http_info(id, payment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoicePaymentsApi.finance_invoices_id_payments_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoicePaymentsApi.finance_invoices_id_payments_post"
      end
      # verify the required parameter 'payment' is set
      if @api_client.config.client_side_validation && payment.nil?
        fail ArgumentError, "Missing the required parameter 'payment' when calling InvoicePaymentsApi.finance_invoices_id_payments_post"
      end
      # resource path
      local_var_path = "/finance/invoices/{id}/payments".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(payment)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoicePaymentsApi#finance_invoices_id_payments_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

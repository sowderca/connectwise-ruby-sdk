
require "uri"

module ConnectWise
  class BatchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Process Batch Requests
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [BatchResponse]
    def system_batch_post(request, opts = {})
      data, _status_code, _headers = system_batch_post_with_http_info(request, opts)
      return data
    end

    # 
    # Process Batch Requests
    # @param request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BatchResponse, Fixnum, Hash)>] BatchResponse data, response status code and response headers
    def system_batch_post_with_http_info(request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BatchApi.system_batch_post ..."
      end
      # verify the required parameter 'request' is set
      if @api_client.config.client_side_validation && request.nil?
        fail ArgumentError, "Missing the required parameter 'request' when calling BatchApi.system_batch_post"
      end
      # resource path
      local_var_path = "/system/batch"

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
      post_body = @api_client.object_to_http_body(request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchApi#system_batch_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class InfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Infos
    # @param [Hash] opts the optional parameters
    # @return [Info]
    def system_info_get(opts = {})
      data, _status_code, _headers = system_info_get_with_http_info(opts)
      return data
    end

    # 
    # Get Infos
    # @param [Hash] opts the optional parameters
    # @return [Array<(Info, Fixnum, Hash)>] Info data, response status code and response headers
    def system_info_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InfoApi.system_info_get ..."
      end
      # resource path
      local_var_path = "/system/info"

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
        :return_type => 'Info')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InfoApi#system_info_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

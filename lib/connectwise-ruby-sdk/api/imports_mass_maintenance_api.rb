
require "uri"

module ConnectWise
  class ImportsMassMaintenanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Import Mass Maintenance By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [ImportMassMaintenance]
    def system_import_mass_maintenance_id_post(id, opts = {})
      data, _status_code, _headers = system_import_mass_maintenance_id_post_with_http_info(id, opts)
      return data
    end

    # 
    # Delete Import Mass Maintenance By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImportMassMaintenance, Fixnum, Hash)>] ImportMassMaintenance data, response status code and response headers
    def system_import_mass_maintenance_id_post_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImportsMassMaintenanceApi.system_import_mass_maintenance_id_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImportsMassMaintenanceApi.system_import_mass_maintenance_id_post"
      end
      # resource path
      local_var_path = "/system/importMassMaintenance/{id}".sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImportMassMaintenance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImportsMassMaintenanceApi#system_import_mass_maintenance_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

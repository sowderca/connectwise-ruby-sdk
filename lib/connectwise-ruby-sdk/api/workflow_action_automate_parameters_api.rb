
require "uri"

module ConnectWise
  class WorkflowActionAutomateParametersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Workflow Action Automate Parameters Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_workflow_actions_id_automate_parameters_count_get(id, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Workflow Action Automate Parameters Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_count_get"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Workflow Action Automate Parameters
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<WorkflowActionAutomateParameter>]
    def system_workflow_actions_id_automate_parameters_get(id, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Workflow Action Automate Parameters
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<WorkflowActionAutomateParameter>, Fixnum, Hash)>] Array<WorkflowActionAutomateParameter> data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_get"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<WorkflowActionAutomateParameter>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Workflow Action Automate Parameter By Id
    # @param id 
    # @param parameter_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_workflow_actions_id_automate_parameters_parameter_id_delete(id, parameter_id, opts = {})
      system_workflow_actions_id_automate_parameters_parameter_id_delete_with_http_info(id, parameter_id, opts)
      return nil
    end

    # 
    # Delete Workflow Action Automate Parameter By Id
    # @param id 
    # @param parameter_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_workflow_actions_id_automate_parameters_parameter_id_delete_with_http_info(id, parameter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_delete"
      end
      # verify the required parameter 'parameter_id' is set
      if @api_client.config.client_side_validation && parameter_id.nil?
        fail ArgumentError, "Missing the required parameter 'parameter_id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_delete"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters/{parameterId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'parameterId' + '}', parameter_id.to_s)

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
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_parameter_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Workflow Action Automate Parameter By Id
    # @param id 
    # @param parameter_id 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowActionAutomateParameter]
    def system_workflow_actions_id_automate_parameters_parameter_id_get(id, parameter_id, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_parameter_id_get_with_http_info(id, parameter_id, opts)
      return data
    end

    # 
    # Get Workflow Action Automate Parameter By Id
    # @param id 
    # @param parameter_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowActionAutomateParameter, Fixnum, Hash)>] WorkflowActionAutomateParameter data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_parameter_id_get_with_http_info(id, parameter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_get"
      end
      # verify the required parameter 'parameter_id' is set
      if @api_client.config.client_side_validation && parameter_id.nil?
        fail ArgumentError, "Missing the required parameter 'parameter_id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_get"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters/{parameterId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'parameterId' + '}', parameter_id.to_s)

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
        :return_type => 'WorkflowActionAutomateParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_parameter_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Workflow Action Automate Parameter
    # @param id 
    # @param parameter_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowActionAutomateParameter]
    def system_workflow_actions_id_automate_parameters_parameter_id_patch(id, parameter_id, operations, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_parameter_id_patch_with_http_info(id, parameter_id, operations, opts)
      return data
    end

    # 
    # Update Workflow Action Automate Parameter
    # @param id 
    # @param parameter_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowActionAutomateParameter, Fixnum, Hash)>] WorkflowActionAutomateParameter data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_parameter_id_patch_with_http_info(id, parameter_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_patch"
      end
      # verify the required parameter 'parameter_id' is set
      if @api_client.config.client_side_validation && parameter_id.nil?
        fail ArgumentError, "Missing the required parameter 'parameter_id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_patch"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters/{parameterId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'parameterId' + '}', parameter_id.to_s)

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
        :return_type => 'WorkflowActionAutomateParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_parameter_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Workflow Action Automate Parameter
    # @param id 
    # @param parameter_id 
    # @param workflow_action_automate_parameter 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowActionAutomateParameter]
    def system_workflow_actions_id_automate_parameters_parameter_id_put(id, parameter_id, workflow_action_automate_parameter, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_parameter_id_put_with_http_info(id, parameter_id, workflow_action_automate_parameter, opts)
      return data
    end

    # 
    # Replace Workflow Action Automate Parameter
    # @param id 
    # @param parameter_id 
    # @param workflow_action_automate_parameter 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowActionAutomateParameter, Fixnum, Hash)>] WorkflowActionAutomateParameter data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_parameter_id_put_with_http_info(id, parameter_id, workflow_action_automate_parameter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_put"
      end
      # verify the required parameter 'parameter_id' is set
      if @api_client.config.client_side_validation && parameter_id.nil?
        fail ArgumentError, "Missing the required parameter 'parameter_id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_put"
      end
      # verify the required parameter 'workflow_action_automate_parameter' is set
      if @api_client.config.client_side_validation && workflow_action_automate_parameter.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_action_automate_parameter' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_parameter_id_put"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters/{parameterId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'parameterId' + '}', parameter_id.to_s)

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
      post_body = @api_client.object_to_http_body(workflow_action_automate_parameter)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowActionAutomateParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_parameter_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Workflow Action Automate Parameter
    # @param id 
    # @param workflow_action_automate_parameter 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowActionAutomateParameter]
    def system_workflow_actions_id_automate_parameters_post(id, workflow_action_automate_parameter, opts = {})
      data, _status_code, _headers = system_workflow_actions_id_automate_parameters_post_with_http_info(id, workflow_action_automate_parameter, opts)
      return data
    end

    # 
    # Create Workflow Action Automate Parameter
    # @param id 
    # @param workflow_action_automate_parameter 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowActionAutomateParameter, Fixnum, Hash)>] WorkflowActionAutomateParameter data, response status code and response headers
    def system_workflow_actions_id_automate_parameters_post_with_http_info(id, workflow_action_automate_parameter, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_post"
      end
      # verify the required parameter 'workflow_action_automate_parameter' is set
      if @api_client.config.client_side_validation && workflow_action_automate_parameter.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_action_automate_parameter' when calling WorkflowActionAutomateParametersApi.system_workflow_actions_id_automate_parameters_post"
      end
      # resource path
      local_var_path = "/system/workflowActions/{id}/automateParameters".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(workflow_action_automate_parameter)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowActionAutomateParameter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionAutomateParametersApi#system_workflow_actions_id_automate_parameters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

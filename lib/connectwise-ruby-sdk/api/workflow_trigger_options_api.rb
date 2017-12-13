
require "uri"

module ConnectWise
  class WorkflowTriggerOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Workflow Triggers Count
    # @param workflow_id 
    # @param trigger_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_workflows_workflow_id_triggers_trigger_id_options_count_get(workflow_id, trigger_id, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_triggers_trigger_id_options_count_get_with_http_info(workflow_id, trigger_id, opts)
      return data
    end

    # 
    # Get Workflow Triggers Count
    # @param workflow_id 
    # @param trigger_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_workflows_workflow_id_triggers_trigger_id_options_count_get_with_http_info(workflow_id, trigger_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_count_get ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_count_get"
      end
      # verify the required parameter 'trigger_id' is set
      if @api_client.config.client_side_validation && trigger_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_id' when calling WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_count_get"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/triggers/{triggerId}/options/count".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'triggerId' + '}', trigger_id.to_s)

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
        @api_client.config.logger.debug "API called: WorkflowTriggerOptionsApi#system_workflows_workflow_id_triggers_trigger_id_options_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Trigger Options
    # @param workflow_id 
    # @param trigger_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<WorkflowTriggerOption>]
    def system_workflows_workflow_id_triggers_trigger_id_options_get(workflow_id, trigger_id, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_triggers_trigger_id_options_get_with_http_info(workflow_id, trigger_id, opts)
      return data
    end

    # 
    # Get Trigger Options
    # @param workflow_id 
    # @param trigger_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<WorkflowTriggerOption>, Fixnum, Hash)>] Array<WorkflowTriggerOption> data, response status code and response headers
    def system_workflows_workflow_id_triggers_trigger_id_options_get_with_http_info(workflow_id, trigger_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_get ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_get"
      end
      # verify the required parameter 'trigger_id' is set
      if @api_client.config.client_side_validation && trigger_id.nil?
        fail ArgumentError, "Missing the required parameter 'trigger_id' when calling WorkflowTriggerOptionsApi.system_workflows_workflow_id_triggers_trigger_id_options_get"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/triggers/{triggerId}/options".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'triggerId' + '}', trigger_id.to_s)

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
        :return_type => 'Array<WorkflowTriggerOption>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowTriggerOptionsApi#system_workflows_workflow_id_triggers_trigger_id_options_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

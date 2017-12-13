
require "uri"

module ConnectWise
  class WorkflowActionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Workflow Action By Id
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_workflows_workflow_id_events_event_id_actions_action_id_delete(workflow_id, event_id, action_id, opts = {})
      system_workflows_workflow_id_events_event_id_actions_action_id_delete_with_http_info(workflow_id, event_id, action_id, opts)
      return nil
    end

    # 
    # Delete Workflow Action By Id
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_action_id_delete_with_http_info(workflow_id, event_id, action_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_delete ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_delete"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_delete"
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_delete"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions/{actionId}".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s).sub('{' + 'actionId' + '}', action_id.to_s)

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
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_action_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Workflow Action By Id
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowAction]
    def system_workflows_workflow_id_events_event_id_actions_action_id_get(workflow_id, event_id, action_id, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_action_id_get_with_http_info(workflow_id, event_id, action_id, opts)
      return data
    end

    # 
    # Get Workflow Action By Id
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowAction, Fixnum, Hash)>] WorkflowAction data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_action_id_get_with_http_info(workflow_id, event_id, action_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_get ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_get"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_get"
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_get"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions/{actionId}".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s).sub('{' + 'actionId' + '}', action_id.to_s)

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
        :return_type => 'WorkflowAction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_action_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowAction]
    def system_workflows_workflow_id_events_event_id_actions_action_id_patch(workflow_id, event_id, action_id, operations, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_action_id_patch_with_http_info(workflow_id, event_id, action_id, operations, opts)
      return data
    end

    # 
    # Update Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowAction, Fixnum, Hash)>] WorkflowAction data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_action_id_patch_with_http_info(workflow_id, event_id, action_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_patch ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_patch"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_patch"
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_patch"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions/{actionId}".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s).sub('{' + 'actionId' + '}', action_id.to_s)

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
        :return_type => 'WorkflowAction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_action_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param workflow_action 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowAction]
    def system_workflows_workflow_id_events_event_id_actions_action_id_put(workflow_id, event_id, action_id, workflow_action, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_action_id_put_with_http_info(workflow_id, event_id, action_id, workflow_action, opts)
      return data
    end

    # 
    # Replace Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param action_id 
    # @param workflow_action 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowAction, Fixnum, Hash)>] WorkflowAction data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_action_id_put_with_http_info(workflow_id, event_id, action_id, workflow_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_put ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_put"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_put"
      end
      # verify the required parameter 'action_id' is set
      if @api_client.config.client_side_validation && action_id.nil?
        fail ArgumentError, "Missing the required parameter 'action_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_put"
      end
      # verify the required parameter 'workflow_action' is set
      if @api_client.config.client_side_validation && workflow_action.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_action' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_action_id_put"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions/{actionId}".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s).sub('{' + 'actionId' + '}', action_id.to_s)

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
      post_body = @api_client.object_to_http_body(workflow_action)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowAction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_action_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Workflow Actions Count
    # @param workflow_id 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_workflows_workflow_id_events_event_id_actions_count_get(workflow_id, event_id, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_count_get_with_http_info(workflow_id, event_id, opts)
      return data
    end

    # 
    # Get Workflow Actions Count
    # @param workflow_id 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_count_get_with_http_info(workflow_id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_count_get ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_count_get"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_count_get"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions/count".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s)

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
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Workflow Actions
    # @param workflow_id 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<WorkflowAction>]
    def system_workflows_workflow_id_events_event_id_actions_get(workflow_id, event_id, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_get_with_http_info(workflow_id, event_id, opts)
      return data
    end

    # 
    # Get Workflow Actions
    # @param workflow_id 
    # @param event_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<WorkflowAction>, Fixnum, Hash)>] Array<WorkflowAction> data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_get_with_http_info(workflow_id, event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_get ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_get"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_get"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s)

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
        :return_type => 'Array<WorkflowAction>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param workflow_action 
    # @param [Hash] opts the optional parameters
    # @return [WorkflowAction]
    def system_workflows_workflow_id_events_event_id_actions_post(workflow_id, event_id, workflow_action, opts = {})
      data, _status_code, _headers = system_workflows_workflow_id_events_event_id_actions_post_with_http_info(workflow_id, event_id, workflow_action, opts)
      return data
    end

    # 
    # Create Workflow Action
    # @param workflow_id 
    # @param event_id 
    # @param workflow_action 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkflowAction, Fixnum, Hash)>] WorkflowAction data, response status code and response headers
    def system_workflows_workflow_id_events_event_id_actions_post_with_http_info(workflow_id, event_id, workflow_action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_post ..."
      end
      # verify the required parameter 'workflow_id' is set
      if @api_client.config.client_side_validation && workflow_id.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_post"
      end
      # verify the required parameter 'event_id' is set
      if @api_client.config.client_side_validation && event_id.nil?
        fail ArgumentError, "Missing the required parameter 'event_id' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_post"
      end
      # verify the required parameter 'workflow_action' is set
      if @api_client.config.client_side_validation && workflow_action.nil?
        fail ArgumentError, "Missing the required parameter 'workflow_action' when calling WorkflowActionsApi.system_workflows_workflow_id_events_event_id_actions_post"
      end
      # resource path
      local_var_path = "/system/workflows/{workflowId}/events/{eventId}/actions".sub('{' + 'workflowId' + '}', workflow_id.to_s).sub('{' + 'eventId' + '}', event_id.to_s)

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
      post_body = @api_client.object_to_http_body(workflow_action)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'WorkflowAction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkflowActionsApi#system_workflows_workflow_id_events_event_id_actions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

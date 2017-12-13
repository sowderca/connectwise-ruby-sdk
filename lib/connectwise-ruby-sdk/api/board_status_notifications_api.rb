
require "uri"

module ConnectWise
  class BoardStatusNotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Board Status Notifications Count
    # @param board_id 
    # @param status_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_boards_board_id_statuses_status_id_notifications_count_get(board_id, status_id, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_count_get_with_http_info(board_id, status_id, opts)
      return data
    end

    # 
    # Get Board Status Notifications Count
    # @param board_id 
    # @param status_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_count_get_with_http_info(board_id, status_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_count_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_count_get"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_count_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications/count".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s)

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
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Board Status Notifications
    # @param board_id 
    # @param status_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<BoardStatusNotification>]
    def service_boards_board_id_statuses_status_id_notifications_get(board_id, status_id, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_get_with_http_info(board_id, status_id, opts)
      return data
    end

    # 
    # Get Board Status Notifications
    # @param board_id 
    # @param status_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<BoardStatusNotification>, Fixnum, Hash)>] Array<BoardStatusNotification> data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_get_with_http_info(board_id, status_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_get"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s)

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
        :return_type => 'Array<BoardStatusNotification>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Board Status Notification By Id
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_boards_board_id_statuses_status_id_notifications_id_delete(board_id, status_id, id, opts = {})
      service_boards_board_id_statuses_status_id_notifications_id_delete_with_http_info(board_id, status_id, id, opts)
      return nil
    end

    # 
    # Delete Board Status Notification By Id
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_id_delete_with_http_info(board_id, status_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_delete ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_delete"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_delete"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_delete"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications/{id}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Board Status Notification By Id
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [BoardStatusNotification]
    def service_boards_board_id_statuses_status_id_notifications_id_get(board_id, status_id, id, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_id_get_with_http_info(board_id, status_id, id, opts)
      return data
    end

    # 
    # Get Board Status Notification By Id
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardStatusNotification, Fixnum, Hash)>] BoardStatusNotification data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_id_get_with_http_info(board_id, status_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_get"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_get"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications/{id}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BoardStatusNotification')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [BoardStatusNotification]
    def service_boards_board_id_statuses_status_id_notifications_id_patch(board_id, status_id, id, operations, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_id_patch_with_http_info(board_id, status_id, id, operations, opts)
      return data
    end

    # 
    # Update Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardStatusNotification, Fixnum, Hash)>] BoardStatusNotification data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_id_patch_with_http_info(board_id, status_id, id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_patch ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_patch"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_patch"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_patch"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications/{id}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BoardStatusNotification')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param board_status_notification 
    # @param [Hash] opts the optional parameters
    # @return [BoardStatusNotification]
    def service_boards_board_id_statuses_status_id_notifications_id_put(board_id, status_id, id, board_status_notification, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_id_put_with_http_info(board_id, status_id, id, board_status_notification, opts)
      return data
    end

    # 
    # Replace Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param id 
    # @param board_status_notification 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardStatusNotification, Fixnum, Hash)>] BoardStatusNotification data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_id_put_with_http_info(board_id, status_id, id, board_status_notification, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_put ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_put"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_put"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_put"
      end
      # verify the required parameter 'board_status_notification' is set
      if @api_client.config.client_side_validation && board_status_notification.nil?
        fail ArgumentError, "Missing the required parameter 'board_status_notification' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_id_put"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications/{id}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(board_status_notification)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardStatusNotification')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param board_status_notification 
    # @param [Hash] opts the optional parameters
    # @return [BoardStatusNotification]
    def service_boards_board_id_statuses_status_id_notifications_post(board_id, status_id, board_status_notification, opts = {})
      data, _status_code, _headers = service_boards_board_id_statuses_status_id_notifications_post_with_http_info(board_id, status_id, board_status_notification, opts)
      return data
    end

    # 
    # Create Board Status Notification
    # @param board_id 
    # @param status_id 
    # @param board_status_notification 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardStatusNotification, Fixnum, Hash)>] BoardStatusNotification data, response status code and response headers
    def service_boards_board_id_statuses_status_id_notifications_post_with_http_info(board_id, status_id, board_status_notification, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_post ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_post"
      end
      # verify the required parameter 'status_id' is set
      if @api_client.config.client_side_validation && status_id.nil?
        fail ArgumentError, "Missing the required parameter 'status_id' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_post"
      end
      # verify the required parameter 'board_status_notification' is set
      if @api_client.config.client_side_validation && board_status_notification.nil?
        fail ArgumentError, "Missing the required parameter 'board_status_notification' when calling BoardStatusNotificationsApi.service_boards_board_id_statuses_status_id_notifications_post"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/statuses/{statusId}/notifications".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'statusId' + '}', status_id.to_s)

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
      post_body = @api_client.object_to_http_body(board_status_notification)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardStatusNotification')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardStatusNotificationsApi#service_boards_board_id_statuses_status_id_notifications_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class BoardItemAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Board Item Association By Id
    # @param board_id 
    # @param item_id 
    # @param association_id 
    # @param [Hash] opts the optional parameters
    # @return [BoardItemAssociation]
    def service_boards_board_id_items_item_id_associations_association_id_get(board_id, item_id, association_id, opts = {})
      data, _status_code, _headers = service_boards_board_id_items_item_id_associations_association_id_get_with_http_info(board_id, item_id, association_id, opts)
      return data
    end

    # 
    # Get Board Item Association By Id
    # @param board_id 
    # @param item_id 
    # @param association_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardItemAssociation, Fixnum, Hash)>] BoardItemAssociation data, response status code and response headers
    def service_boards_board_id_items_item_id_associations_association_id_get_with_http_info(board_id, item_id, association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_association_id_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_association_id_get"
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_association_id_get"
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_association_id_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/items/{itemId}/associations/{associationId}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'itemId' + '}', item_id.to_s).sub('{' + 'associationId' + '}', association_id.to_s)

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
        :return_type => 'BoardItemAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardItemAssociationsApi#service_boards_board_id_items_item_id_associations_association_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Board Item Association Count
    # @param board_id 
    # @param item_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_boards_board_id_items_item_id_associations_count_get(board_id, item_id, opts = {})
      data, _status_code, _headers = service_boards_board_id_items_item_id_associations_count_get_with_http_info(board_id, item_id, opts)
      return data
    end

    # 
    # Get Board Item Association Count
    # @param board_id 
    # @param item_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_boards_board_id_items_item_id_associations_count_get_with_http_info(board_id, item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_count_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_count_get"
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_count_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/items/{itemId}/associations/count".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'itemId' + '}', item_id.to_s)

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
        @api_client.config.logger.debug "API called: BoardItemAssociationsApi#service_boards_board_id_items_item_id_associations_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Board Item Association
    # @param board_id 
    # @param item_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<BoardItemAssociation>]
    def service_boards_board_id_items_item_id_associations_get(board_id, item_id, opts = {})
      data, _status_code, _headers = service_boards_board_id_items_item_id_associations_get_with_http_info(board_id, item_id, opts)
      return data
    end

    # 
    # Get Board Item Association
    # @param board_id 
    # @param item_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<BoardItemAssociation>, Fixnum, Hash)>] Array<BoardItemAssociation> data, response status code and response headers
    def service_boards_board_id_items_item_id_associations_get_with_http_info(board_id, item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_get ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_get"
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_get"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/items/{itemId}/associations".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'itemId' + '}', item_id.to_s)

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
        :return_type => 'Array<BoardItemAssociation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardItemAssociationsApi#service_boards_board_id_items_item_id_associations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Board Item Association
    # @param board_id 
    # @param item_id 
    # @param id 
    # @param item_association 
    # @param [Hash] opts the optional parameters
    # @return [BoardItemAssociation]
    def service_boards_board_id_items_item_id_associations_id_put(board_id, item_id, id, item_association, opts = {})
      data, _status_code, _headers = service_boards_board_id_items_item_id_associations_id_put_with_http_info(board_id, item_id, id, item_association, opts)
      return data
    end

    # 
    # Replace Board Item Association
    # @param board_id 
    # @param item_id 
    # @param id 
    # @param item_association 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardItemAssociation, Fixnum, Hash)>] BoardItemAssociation data, response status code and response headers
    def service_boards_board_id_items_item_id_associations_id_put_with_http_info(board_id, item_id, id, item_association, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_id_put ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_id_put"
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_id_put"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_id_put"
      end
      # verify the required parameter 'item_association' is set
      if @api_client.config.client_side_validation && item_association.nil?
        fail ArgumentError, "Missing the required parameter 'item_association' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_id_put"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/items/{itemId}/associations/{id}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'itemId' + '}', item_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(item_association)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BoardItemAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardItemAssociationsApi#service_boards_board_id_items_item_id_associations_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Board Item Association
    # @param board_id The recid of the Service/Project Board
    # @param item_id 
    # @param type_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [BoardItemAssociation]
    def service_boards_board_id_items_item_id_associations_type_id_patch(board_id, item_id, type_id, operations, opts = {})
      data, _status_code, _headers = service_boards_board_id_items_item_id_associations_type_id_patch_with_http_info(board_id, item_id, type_id, operations, opts)
      return data
    end

    # 
    # Update Board Item Association
    # @param board_id The recid of the Service/Project Board
    # @param item_id 
    # @param type_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoardItemAssociation, Fixnum, Hash)>] BoardItemAssociation data, response status code and response headers
    def service_boards_board_id_items_item_id_associations_type_id_patch_with_http_info(board_id, item_id, type_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_type_id_patch ..."
      end
      # verify the required parameter 'board_id' is set
      if @api_client.config.client_side_validation && board_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_type_id_patch"
      end
      # verify the required parameter 'item_id' is set
      if @api_client.config.client_side_validation && item_id.nil?
        fail ArgumentError, "Missing the required parameter 'item_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_type_id_patch"
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_type_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling BoardItemAssociationsApi.service_boards_board_id_items_item_id_associations_type_id_patch"
      end
      # resource path
      local_var_path = "/service/boards/{boardId}/items/{itemId}/associations/{typeId}".sub('{' + 'boardId' + '}', board_id.to_s).sub('{' + 'itemId' + '}', item_id.to_s).sub('{' + 'typeId' + '}', type_id.to_s)

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
        :return_type => 'BoardItemAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardItemAssociationsApi#service_boards_board_id_items_item_id_associations_type_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

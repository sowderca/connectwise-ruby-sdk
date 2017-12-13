
require "uri"

module ConnectWise
  class DocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Documents Info Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :record_type 
    # @option opts [Integer] :record_id 
    # @return [Count]
    def system_documents_count_get(opts = {})
      data, _status_code, _headers = system_documents_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Documents Info Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :record_type 
    # @option opts [Integer] :record_id 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_documents_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_count_get ..."
      end
      if @api_client.config.client_side_validation && opts[:'record_type'] && !['Agreement', 'Company', 'Configuration', 'Contact', 'Expense', 'HTMLTemplate', 'Opportunity', 'Project', 'PurchaseOrder', 'Rma', 'SalesOrder', 'Ticket', 'ServiceTemplate', 'KnowledgeBase', 'ToolbarIcon', 'Meeting', 'MeetingNote', 'ProductSetup', 'ProjectTemplateTicket', 'WordTemplate', 'Member'].include?(opts[:'record_type'])
        fail ArgumentError, 'invalid value for "record_type", must be one of Agreement, Company, Configuration, Contact, Expense, HTMLTemplate, Opportunity, Project, PurchaseOrder, Rma, SalesOrder, Ticket, ServiceTemplate, KnowledgeBase, ToolbarIcon, Meeting, MeetingNote, ProductSetup, ProjectTemplateTicket, WordTemplate, Member'
      end
      # resource path
      local_var_path = "/system/documents/count"

      # query parameters
      query_params = {}
      query_params[:'recordType'] = opts[:'record_type'] if !opts[:'record_type'].nil?
      query_params[:'recordId'] = opts[:'record_id'] if !opts[:'record_id'].nil?

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
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Documents Info
    # @param [Hash] opts the optional parameters
    # @option opts [String] :record_type 
    # @option opts [Integer] :record_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<DocumentInfo>]
    def system_documents_get(opts = {})
      data, _status_code, _headers = system_documents_get_with_http_info(opts)
      return data
    end

    # 
    # Get Documents Info
    # @param [Hash] opts the optional parameters
    # @option opts [String] :record_type 
    # @option opts [Integer] :record_id 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<DocumentInfo>, Fixnum, Hash)>] Array<DocumentInfo> data, response status code and response headers
    def system_documents_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_get ..."
      end
      if @api_client.config.client_side_validation && opts[:'record_type'] && !['Agreement', 'Company', 'Configuration', 'Contact', 'Expense', 'HTMLTemplate', 'Opportunity', 'Project', 'PurchaseOrder', 'Rma', 'SalesOrder', 'Ticket', 'ServiceTemplate', 'KnowledgeBase', 'ToolbarIcon', 'Meeting', 'MeetingNote', 'ProductSetup', 'ProjectTemplateTicket', 'WordTemplate', 'Member'].include?(opts[:'record_type'])
        fail ArgumentError, 'invalid value for "record_type", must be one of Agreement, Company, Configuration, Contact, Expense, HTMLTemplate, Opportunity, Project, PurchaseOrder, Rma, SalesOrder, Ticket, ServiceTemplate, KnowledgeBase, ToolbarIcon, Meeting, MeetingNote, ProductSetup, ProjectTemplateTicket, WordTemplate, Member'
      end
      # resource path
      local_var_path = "/system/documents"

      # query parameters
      query_params = {}
      query_params[:'recordType'] = opts[:'record_type'] if !opts[:'record_type'].nil?
      query_params[:'recordId'] = opts[:'record_id'] if !opts[:'record_id'].nil?
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
        :return_type => 'Array<DocumentInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Document Info By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_documents_id_delete(id, opts = {})
      system_documents_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Document Info By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_documents_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentsApi.system_documents_id_delete"
      end
      # resource path
      local_var_path = "/system/documents/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Download Document
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_modified 
    # @return [nil]
    def system_documents_id_download_get(id, opts = {})
      system_documents_id_download_get_with_http_info(id, opts)
      return nil
    end

    # 
    # Download Document
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_modified 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_documents_id_download_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_id_download_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentsApi.system_documents_id_download_get"
      end
      # resource path
      local_var_path = "/system/documents/{id}/download".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'lastModified'] = opts[:'last_modified'] if !opts[:'last_modified'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_id_download_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Document Info By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [DocumentInfo]
    def system_documents_id_get(id, opts = {})
      data, _status_code, _headers = system_documents_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Document Info By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DocumentInfo, Fixnum, Hash)>] DocumentInfo data, response status code and response headers
    def system_documents_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentsApi.system_documents_id_get"
      end
      # resource path
      local_var_path = "/system/documents/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Document By Id
    # @param id 
    # @param record_id Entity id
    # @param record_type Entity type
    # @param title Document title
    # @param url Document url
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @option opts [BOOLEAN] :private_flag Indicates if document is private
    # @option opts [BOOLEAN] :read_only_flag Indicates if document is readonly
    # @option opts [BOOLEAN] :is_avatar Indicates if document contains an avatar
    # @return [DocumentInfo]
    def system_documents_id_post(id, record_id, record_type, title, url, opts = {})
      data, _status_code, _headers = system_documents_id_post_with_http_info(id, record_id, record_type, title, url, opts)
      return data
    end

    # 
    # Update Document By Id
    # @param id 
    # @param record_id Entity id
    # @param record_type Entity type
    # @param title Document title
    # @param url Document url
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @option opts [BOOLEAN] :private_flag Indicates if document is private
    # @option opts [BOOLEAN] :read_only_flag Indicates if document is readonly
    # @option opts [BOOLEAN] :is_avatar Indicates if document contains an avatar
    # @return [Array<(DocumentInfo, Fixnum, Hash)>] DocumentInfo data, response status code and response headers
    def system_documents_id_post_with_http_info(id, record_id, record_type, title, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_id_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentsApi.system_documents_id_post"
      end
      # verify the required parameter 'record_id' is set
      if @api_client.config.client_side_validation && record_id.nil?
        fail ArgumentError, "Missing the required parameter 'record_id' when calling DocumentsApi.system_documents_id_post"
      end
      # verify the required parameter 'record_type' is set
      if @api_client.config.client_side_validation && record_type.nil?
        fail ArgumentError, "Missing the required parameter 'record_type' when calling DocumentsApi.system_documents_id_post"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Ticket', 'Company', 'Configuration', 'Contact', 'Expense', 'Opportunity', 'PurchaseOrder', 'Project', 'SalesOrder', 'ServiceTemplate', 'Rma', 'Agreement', 'ToolbarIcon', 'WordTemplate', 'BillingSetup', 'ServiceBoard', 'TopNavigationLogo'].include?(record_type)
        fail ArgumentError, "invalid value for 'record_type', must be one of Ticket, Company, Configuration, Contact, Expense, Opportunity, PurchaseOrder, Project, SalesOrder, ServiceTemplate, Rma, Agreement, ToolbarIcon, WordTemplate, BillingSetup, ServiceBoard, TopNavigationLogo"
      end
      # verify the required parameter 'title' is set
      if @api_client.config.client_side_validation && title.nil?
        fail ArgumentError, "Missing the required parameter 'title' when calling DocumentsApi.system_documents_id_post"
      end
      if @api_client.config.client_side_validation && title.to_s.length > 100
        fail ArgumentError, 'invalid value for "title" when calling DocumentsApi.system_documents_id_post, the character length must be smaller than or equal to 100.'
      end

      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling DocumentsApi.system_documents_id_post"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 500
        fail ArgumentError, 'invalid value for "url" when calling DocumentsApi.system_documents_id_post, the character length must be smaller than or equal to 500.'
      end

      # resource path
      local_var_path = "/system/documents/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["recordId"] = record_id
      form_params["recordType"] = record_type
      form_params["title"] = title
      form_params["url"] = url
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["privateFlag"] = opts[:'private_flag'] if !opts[:'private_flag'].nil?
      form_params["readOnlyFlag"] = opts[:'read_only_flag'] if !opts[:'read_only_flag'].nil?
      form_params["isAvatar"] = opts[:'is_avatar'] if !opts[:'is_avatar'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_id_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Insert Document
    # @param record_type Entity type
    # @param title Document title
    # @param url Document url
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @option opts [Integer] :record_id Entity id
    # @option opts [BOOLEAN] :private_flag Indicates if document is private
    # @option opts [BOOLEAN] :read_only_flag Indicates if document is readonly
    # @option opts [BOOLEAN] :is_avatar Indicates if document contains an avatar
    # @return [DocumentInfo]
    def system_documents_post(record_type, title, url, opts = {})
      data, _status_code, _headers = system_documents_post_with_http_info(record_type, title, url, opts)
      return data
    end

    # 
    # Insert Document
    # @param record_type Entity type
    # @param title Document title
    # @param url Document url
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file File to upload
    # @option opts [Integer] :record_id Entity id
    # @option opts [BOOLEAN] :private_flag Indicates if document is private
    # @option opts [BOOLEAN] :read_only_flag Indicates if document is readonly
    # @option opts [BOOLEAN] :is_avatar Indicates if document contains an avatar
    # @return [Array<(DocumentInfo, Fixnum, Hash)>] DocumentInfo data, response status code and response headers
    def system_documents_post_with_http_info(record_type, title, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_post ..."
      end
      # verify the required parameter 'record_type' is set
      if @api_client.config.client_side_validation && record_type.nil?
        fail ArgumentError, "Missing the required parameter 'record_type' when calling DocumentsApi.system_documents_post"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Ticket', 'Company', 'Configuration', 'Contact', 'Expense', 'Member', 'Opportunity', 'PurchaseOrder', 'Project', 'SalesOrder', 'ServiceTemplate', 'Rma', 'Agreement', 'ToolbarIcon', 'WordTemplate', 'BillingSetup', 'PortalImagePortalLogo', 'PortalImageReportLogo', 'ServiceBoard', 'TopNavigationLogo'].include?(record_type)
        fail ArgumentError, "invalid value for 'record_type', must be one of Ticket, Company, Configuration, Contact, Expense, Member, Opportunity, PurchaseOrder, Project, SalesOrder, ServiceTemplate, Rma, Agreement, ToolbarIcon, WordTemplate, BillingSetup, PortalImagePortalLogo, PortalImageReportLogo, ServiceBoard, TopNavigationLogo"
      end
      # verify the required parameter 'title' is set
      if @api_client.config.client_side_validation && title.nil?
        fail ArgumentError, "Missing the required parameter 'title' when calling DocumentsApi.system_documents_post"
      end
      if @api_client.config.client_side_validation && title.to_s.length > 100
        fail ArgumentError, 'invalid value for "title" when calling DocumentsApi.system_documents_post, the character length must be smaller than or equal to 100.'
      end

      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling DocumentsApi.system_documents_post"
      end
      if @api_client.config.client_side_validation && url.to_s.length > 500
        fail ArgumentError, 'invalid value for "url" when calling DocumentsApi.system_documents_post, the character length must be smaller than or equal to 500.'
      end

      # resource path
      local_var_path = "/system/documents"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["recordType"] = record_type
      form_params["title"] = title
      form_params["url"] = url
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["recordId"] = opts[:'record_id'] if !opts[:'record_id'].nil?
      form_params["privateFlag"] = opts[:'private_flag'] if !opts[:'private_flag'].nil?
      form_params["readOnlyFlag"] = opts[:'read_only_flag'] if !opts[:'read_only_flag'].nil?
      form_params["isAvatar"] = opts[:'is_avatar'] if !opts[:'is_avatar'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Upload Sample Page
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_documents_uploadsample_get(opts = {})
      system_documents_uploadsample_get_with_http_info(opts)
      return nil
    end

    # 
    # Get Upload Sample Page
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_documents_uploadsample_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocumentsApi.system_documents_uploadsample_get ..."
      end
      # resource path
      local_var_path = "/system/documents/uploadsample"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentsApi#system_documents_uploadsample_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

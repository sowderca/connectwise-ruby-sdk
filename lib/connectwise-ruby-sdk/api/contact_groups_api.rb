
require "uri"

module ConnectWise
  class ContactGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Contact Groups Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_contacts_id_groups_count_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Contact Groups Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_contacts_id_groups_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_count_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Groups
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ContactGroup>]
    def company_contacts_id_groups_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Contact Groups
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ContactGroup>, Fixnum, Hash)>] Array<ContactGroup> data, response status code and response headers
    def company_contacts_id_groups_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<ContactGroup>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Contact Group By Id
    # @param id 
    # @param groupid 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_contacts_id_groups_groupid_delete(id, groupid, opts = {})
      company_contacts_id_groups_groupid_delete_with_http_info(id, groupid, opts)
      return nil
    end

    # 
    # Delete Contact Group By Id
    # @param id 
    # @param groupid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_id_groups_groupid_delete_with_http_info(id, groupid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_groupid_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_groupid_delete"
      end
      # verify the required parameter 'groupid' is set
      if @api_client.config.client_side_validation && groupid.nil?
        fail ArgumentError, "Missing the required parameter 'groupid' when calling ContactGroupsApi.company_contacts_id_groups_groupid_delete"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups/{groupid}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'groupid' + '}', groupid.to_s)

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
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_groupid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Group By Id
    # @param id 
    # @param groupid 
    # @param [Hash] opts the optional parameters
    # @return [ContactGroup]
    def company_contacts_id_groups_groupid_get(id, groupid, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_groupid_get_with_http_info(id, groupid, opts)
      return data
    end

    # 
    # Get Contact Group By Id
    # @param id 
    # @param groupid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactGroup, Fixnum, Hash)>] ContactGroup data, response status code and response headers
    def company_contacts_id_groups_groupid_get_with_http_info(id, groupid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_groupid_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_groupid_get"
      end
      # verify the required parameter 'groupid' is set
      if @api_client.config.client_side_validation && groupid.nil?
        fail ArgumentError, "Missing the required parameter 'groupid' when calling ContactGroupsApi.company_contacts_id_groups_groupid_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups/{groupid}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'groupid' + '}', groupid.to_s)

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
        :return_type => 'ContactGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_groupid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Contact Group
    # @param id 
    # @param groupid 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ContactGroup]
    def company_contacts_id_groups_groupid_patch(id, groupid, operations, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_groupid_patch_with_http_info(id, groupid, operations, opts)
      return data
    end

    # 
    # Update Contact Group
    # @param id 
    # @param groupid 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactGroup, Fixnum, Hash)>] ContactGroup data, response status code and response headers
    def company_contacts_id_groups_groupid_patch_with_http_info(id, groupid, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_groupid_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_groupid_patch"
      end
      # verify the required parameter 'groupid' is set
      if @api_client.config.client_side_validation && groupid.nil?
        fail ArgumentError, "Missing the required parameter 'groupid' when calling ContactGroupsApi.company_contacts_id_groups_groupid_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ContactGroupsApi.company_contacts_id_groups_groupid_patch"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups/{groupid}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'groupid' + '}', groupid.to_s)

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
        :return_type => 'ContactGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_groupid_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Contact Group
    # @param id 
    # @param groupid 
    # @param contact_group 
    # @param [Hash] opts the optional parameters
    # @return [ContactGroup]
    def company_contacts_id_groups_groupid_put(id, groupid, contact_group, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_groupid_put_with_http_info(id, groupid, contact_group, opts)
      return data
    end

    # 
    # Replace Contact Group
    # @param id 
    # @param groupid 
    # @param contact_group 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactGroup, Fixnum, Hash)>] ContactGroup data, response status code and response headers
    def company_contacts_id_groups_groupid_put_with_http_info(id, groupid, contact_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_groupid_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_groupid_put"
      end
      # verify the required parameter 'groupid' is set
      if @api_client.config.client_side_validation && groupid.nil?
        fail ArgumentError, "Missing the required parameter 'groupid' when calling ContactGroupsApi.company_contacts_id_groups_groupid_put"
      end
      # verify the required parameter 'contact_group' is set
      if @api_client.config.client_side_validation && contact_group.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group' when calling ContactGroupsApi.company_contacts_id_groups_groupid_put"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups/{groupid}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'groupid' + '}', groupid.to_s)

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
      post_body = @api_client.object_to_http_body(contact_group)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_groupid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Contact Group
    # @param id 
    # @param contact_group 
    # @param [Hash] opts the optional parameters
    # @return [ContactGroup]
    def company_contacts_id_groups_post(id, contact_group, opts = {})
      data, _status_code, _headers = company_contacts_id_groups_post_with_http_info(id, contact_group, opts)
      return data
    end

    # 
    # Create Contact Group
    # @param id 
    # @param contact_group 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactGroup, Fixnum, Hash)>] ContactGroup data, response status code and response headers
    def company_contacts_id_groups_post_with_http_info(id, contact_group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactGroupsApi.company_contacts_id_groups_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactGroupsApi.company_contacts_id_groups_post"
      end
      # verify the required parameter 'contact_group' is set
      if @api_client.config.client_side_validation && contact_group.nil?
        fail ArgumentError, "Missing the required parameter 'contact_group' when calling ContactGroupsApi.company_contacts_id_groups_post"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/groups".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(contact_group)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactGroupsApi#company_contacts_id_groups_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

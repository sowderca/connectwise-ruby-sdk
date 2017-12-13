
require "uri"

module ConnectWise
  class EmailConnectorParsingRulesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Email Connector Parsing Rule Count
    # @param id 
    # @param style_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get(id, style_id, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get_with_http_info(id, style_id, opts)
      return data
    end

    # 
    # Get Email Connector Parsing Rule Count
    # @param id 
    # @param style_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get_with_http_info(id, style_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/count".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s)

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
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Email Connector Parsing Rules
    # @param id 
    # @param style_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<EmailConnectorParsingRule>]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_get(id, style_id, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_get_with_http_info(id, style_id, opts)
      return data
    end

    # 
    # Get Email Connector Parsing Rules
    # @param id 
    # @param style_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<EmailConnectorParsingRule>, Fixnum, Hash)>] Array<EmailConnectorParsingRule> data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_get_with_http_info(id, style_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_get"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_get"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s)

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
        :return_type => 'Array<EmailConnectorParsingRule>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param email_connector_parsing_rule 
    # @param [Hash] opts the optional parameters
    # @return [EmailConnectorParsingRule]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_post(id, style_id, email_connector_parsing_rule, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_post_with_http_info(id, style_id, email_connector_parsing_rule, opts)
      return data
    end

    # 
    # Create Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param email_connector_parsing_rule 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailConnectorParsingRule, Fixnum, Hash)>] EmailConnectorParsingRule data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_post_with_http_info(id, style_id, email_connector_parsing_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_post"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_post"
      end
      # verify the required parameter 'email_connector_parsing_rule' is set
      if @api_client.config.client_side_validation && email_connector_parsing_rule.nil?
        fail ArgumentError, "Missing the required parameter 'email_connector_parsing_rule' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_post"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_connector_parsing_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EmailConnectorParsingRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Email Connector Parsing Rule By Id
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete(id, style_id, rule_id, opts = {})
      system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete_with_http_info(id, style_id, rule_id, opts)
      return nil
    end

    # 
    # Delete Email Connector Parsing Rule By Id
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete_with_http_info(id, style_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s).sub('{' + 'ruleId' + '}', rule_id.to_s)

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
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Email Connector Parsing Rule By Id
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [EmailConnectorParsingRule]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get(id, style_id, rule_id, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get_with_http_info(id, style_id, rule_id, opts)
      return data
    end

    # 
    # Get Email Connector Parsing Rule By Id
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailConnectorParsingRule, Fixnum, Hash)>] EmailConnectorParsingRule data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get_with_http_info(id, style_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s).sub('{' + 'ruleId' + '}', rule_id.to_s)

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
        :return_type => 'EmailConnectorParsingRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [EmailConnectorParsingRule]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch(id, style_id, rule_id, operations, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch_with_http_info(id, style_id, rule_id, operations, opts)
      return data
    end

    # 
    # Update Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailConnectorParsingRule, Fixnum, Hash)>] EmailConnectorParsingRule data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch_with_http_info(id, style_id, rule_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s).sub('{' + 'ruleId' + '}', rule_id.to_s)

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
        :return_type => 'EmailConnectorParsingRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param email_connector_parsing_rule 
    # @param [Hash] opts the optional parameters
    # @return [EmailConnectorParsingRule]
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put(id, style_id, rule_id, email_connector_parsing_rule, opts = {})
      data, _status_code, _headers = system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put_with_http_info(id, style_id, rule_id, email_connector_parsing_rule, opts)
      return data
    end

    # 
    # Replace Email Connector Parsing Rule
    # @param id 
    # @param style_id 
    # @param rule_id 
    # @param email_connector_parsing_rule 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailConnectorParsingRule, Fixnum, Hash)>] EmailConnectorParsingRule data, response status code and response headers
    def system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put_with_http_info(id, style_id, rule_id, email_connector_parsing_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put"
      end
      # verify the required parameter 'style_id' is set
      if @api_client.config.client_side_validation && style_id.nil?
        fail ArgumentError, "Missing the required parameter 'style_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put"
      end
      # verify the required parameter 'email_connector_parsing_rule' is set
      if @api_client.config.client_side_validation && email_connector_parsing_rule.nil?
        fail ArgumentError, "Missing the required parameter 'email_connector_parsing_rule' when calling EmailConnectorParsingRulesApi.system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put"
      end
      # resource path
      local_var_path = "/system/emailConnectors/{id}/parsingStyles/{styleId}/parsingRules/{ruleId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'styleId' + '}', style_id.to_s).sub('{' + 'ruleId' + '}', rule_id.to_s)

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
      post_body = @api_client.object_to_http_body(email_connector_parsing_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EmailConnectorParsingRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailConnectorParsingRulesApi#system_email_connectors_id_parsing_styles_style_id_parsing_rules_rule_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class SurveyOptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Survey Options Count
    # @param survey_id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_surveys_survey_id_questions_question_id_options_count_get(survey_id, question_id, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_count_get_with_http_info(survey_id, question_id, opts)
      return data
    end

    # 
    # Get Survey Options Count
    # @param survey_id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_count_get_with_http_info(survey_id, question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_count_get ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_count_get"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_count_get"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options/count".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Options
    # @param survey_id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SurveyOption>]
    def service_surveys_survey_id_questions_question_id_options_get(survey_id, question_id, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_get_with_http_info(survey_id, question_id, opts)
      return data
    end

    # 
    # Get Survey Options
    # @param survey_id 
    # @param question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SurveyOption>, Fixnum, Hash)>] Array<SurveyOption> data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_get_with_http_info(survey_id, question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_get ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_get"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_get"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s)

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
        :return_type => 'Array<SurveyOption>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Survey Option By Id
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_surveys_survey_id_questions_question_id_options_oid_delete(survey_id, question_id, oid, opts = {})
      service_surveys_survey_id_questions_question_id_options_oid_delete_with_http_info(survey_id, question_id, oid, opts)
      return nil
    end

    # 
    # Delete Survey Option By Id
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_oid_delete_with_http_info(survey_id, question_id, oid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_delete ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_delete"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_delete"
      end
      # verify the required parameter 'oid' is set
      if @api_client.config.client_side_validation && oid.nil?
        fail ArgumentError, "Missing the required parameter 'oid' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_delete"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options/{oid}".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s).sub('{' + 'oid' + '}', oid.to_s)

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
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_oid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Option By Id
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param [Hash] opts the optional parameters
    # @return [SurveyOption]
    def service_surveys_survey_id_questions_question_id_options_oid_get(survey_id, question_id, oid, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_oid_get_with_http_info(survey_id, question_id, oid, opts)
      return data
    end

    # 
    # Get Survey Option By Id
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyOption, Fixnum, Hash)>] SurveyOption data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_oid_get_with_http_info(survey_id, question_id, oid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_get ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_get"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_get"
      end
      # verify the required parameter 'oid' is set
      if @api_client.config.client_side_validation && oid.nil?
        fail ArgumentError, "Missing the required parameter 'oid' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_get"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options/{oid}".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s).sub('{' + 'oid' + '}', oid.to_s)

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
        :return_type => 'SurveyOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_oid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Survey Option
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SurveyOption]
    def service_surveys_survey_id_questions_question_id_options_oid_patch(survey_id, question_id, oid, operations, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_oid_patch_with_http_info(survey_id, question_id, oid, operations, opts)
      return data
    end

    # 
    # Update Survey Option
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyOption, Fixnum, Hash)>] SurveyOption data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_oid_patch_with_http_info(survey_id, question_id, oid, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_patch ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_patch"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_patch"
      end
      # verify the required parameter 'oid' is set
      if @api_client.config.client_side_validation && oid.nil?
        fail ArgumentError, "Missing the required parameter 'oid' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_patch"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options/{oid}".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s).sub('{' + 'oid' + '}', oid.to_s)

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
        :return_type => 'SurveyOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_oid_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Survey Option
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param survey_option 
    # @param [Hash] opts the optional parameters
    # @return [SurveyOption]
    def service_surveys_survey_id_questions_question_id_options_oid_put(survey_id, question_id, oid, survey_option, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_oid_put_with_http_info(survey_id, question_id, oid, survey_option, opts)
      return data
    end

    # 
    # Replace Survey Option
    # @param survey_id 
    # @param question_id 
    # @param oid 
    # @param survey_option 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyOption, Fixnum, Hash)>] SurveyOption data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_oid_put_with_http_info(survey_id, question_id, oid, survey_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_put ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_put"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_put"
      end
      # verify the required parameter 'oid' is set
      if @api_client.config.client_side_validation && oid.nil?
        fail ArgumentError, "Missing the required parameter 'oid' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_put"
      end
      # verify the required parameter 'survey_option' is set
      if @api_client.config.client_side_validation && survey_option.nil?
        fail ArgumentError, "Missing the required parameter 'survey_option' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_oid_put"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options/{oid}".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s).sub('{' + 'oid' + '}', oid.to_s)

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
      post_body = @api_client.object_to_http_body(survey_option)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_oid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Survey Option
    # @param survey_id 
    # @param question_id 
    # @param survey_option 
    # @param [Hash] opts the optional parameters
    # @return [SurveyOption]
    def service_surveys_survey_id_questions_question_id_options_post(survey_id, question_id, survey_option, opts = {})
      data, _status_code, _headers = service_surveys_survey_id_questions_question_id_options_post_with_http_info(survey_id, question_id, survey_option, opts)
      return data
    end

    # 
    # Create Survey Option
    # @param survey_id 
    # @param question_id 
    # @param survey_option 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyOption, Fixnum, Hash)>] SurveyOption data, response status code and response headers
    def service_surveys_survey_id_questions_question_id_options_post_with_http_info(survey_id, question_id, survey_option, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_post ..."
      end
      # verify the required parameter 'survey_id' is set
      if @api_client.config.client_side_validation && survey_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_post"
      end
      # verify the required parameter 'question_id' is set
      if @api_client.config.client_side_validation && question_id.nil?
        fail ArgumentError, "Missing the required parameter 'question_id' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_post"
      end
      # verify the required parameter 'survey_option' is set
      if @api_client.config.client_side_validation && survey_option.nil?
        fail ArgumentError, "Missing the required parameter 'survey_option' when calling SurveyOptionsApi.service_surveys_survey_id_questions_question_id_options_post"
      end
      # resource path
      local_var_path = "/service/surveys/{surveyID}/questions/{questionID}/options".sub('{' + 'surveyID' + '}', survey_id.to_s).sub('{' + 'questionID' + '}', question_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_option)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyOption')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyOptionsApi#service_surveys_survey_id_questions_question_id_options_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

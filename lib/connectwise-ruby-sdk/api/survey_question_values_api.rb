
require "uri"

module ConnectWise
  class SurveyQuestionValuesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Survey Question Values Count
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_surveys_id_questions_survey_question_id_values_count_get(survey_question_id, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_count_get_with_http_info(survey_question_id, opts)
      return data
    end

    # 
    # Get Survey Question Values Count
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_count_get_with_http_info(survey_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_count_get ..."
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_count_get"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values/count".sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Question Values
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SurveyQuestionValue>]
    def system_surveys_id_questions_survey_question_id_values_get(survey_question_id, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_get_with_http_info(survey_question_id, opts)
      return data
    end

    # 
    # Get Survey Question Values
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SurveyQuestionValue>, Fixnum, Hash)>] Array<SurveyQuestionValue> data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_get_with_http_info(survey_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_get ..."
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_get"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values".sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
        :return_type => 'Array<SurveyQuestionValue>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestionValue]
    def system_surveys_id_questions_survey_question_id_values_post(id, survey_question_id, survey_question_value, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_post_with_http_info(id, survey_question_id, survey_question_value, opts)
      return data
    end

    # 
    # Create Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestionValue, Fixnum, Hash)>] SurveyQuestionValue data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_post_with_http_info(id, survey_question_id, survey_question_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_post"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_post"
      end
      # verify the required parameter 'survey_question_value' is set
      if @api_client.config.client_side_validation && survey_question_value.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_post"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_question_value)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyQuestionValue')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Survey Question Value By Id
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete(survey_question_id, survey_question_value_id, opts = {})
      system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete_with_http_info(survey_question_id, survey_question_value_id, opts)
      return nil
    end

    # 
    # Delete Survey Question Value By Id
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete_with_http_info(survey_question_id, survey_question_value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete ..."
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete"
      end
      # verify the required parameter 'survey_question_value_id' is set
      if @api_client.config.client_side_validation && survey_question_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId}".sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s).sub('{' + 'surveyQuestionValueId' + '}', survey_question_value_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Question Value By Id
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestionValue]
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get(survey_question_id, survey_question_value_id, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get_with_http_info(survey_question_id, survey_question_value_id, opts)
      return data
    end

    # 
    # Get Survey Question Value By Id
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestionValue, Fixnum, Hash)>] SurveyQuestionValue data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get_with_http_info(survey_question_id, survey_question_value_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get ..."
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get"
      end
      # verify the required parameter 'survey_question_value_id' is set
      if @api_client.config.client_side_validation && survey_question_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId}".sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s).sub('{' + 'surveyQuestionValueId' + '}', survey_question_value_id.to_s)

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
        :return_type => 'SurveyQuestionValue')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestionValue]
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch(id, survey_question_id, survey_question_value_id, operations, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch_with_http_info(id, survey_question_id, survey_question_value_id, operations, opts)
      return data
    end

    # 
    # Update Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestionValue, Fixnum, Hash)>] SurveyQuestionValue data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch_with_http_info(id, survey_question_id, survey_question_value_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch"
      end
      # verify the required parameter 'survey_question_value_id' is set
      if @api_client.config.client_side_validation && survey_question_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s).sub('{' + 'surveyQuestionValueId' + '}', survey_question_value_id.to_s)

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
        :return_type => 'SurveyQuestionValue')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param survey_question_value 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestionValue]
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put(id, survey_question_id, survey_question_value_id, survey_question_value, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put_with_http_info(id, survey_question_id, survey_question_value_id, survey_question_value, opts)
      return data
    end

    # 
    # Replace Survey Question Value
    # @param id 
    # @param survey_question_id 
    # @param survey_question_value_id 
    # @param survey_question_value 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestionValue, Fixnum, Hash)>] SurveyQuestionValue data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put_with_http_info(id, survey_question_id, survey_question_value_id, survey_question_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put"
      end
      # verify the required parameter 'survey_question_value_id' is set
      if @api_client.config.client_side_validation && survey_question_value_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value_id' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put"
      end
      # verify the required parameter 'survey_question_value' is set
      if @api_client.config.client_side_validation && survey_question_value.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_value' when calling SurveyQuestionValuesApi.system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}/values/{surveyQuestionValueId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s).sub('{' + 'surveyQuestionValueId' + '}', survey_question_value_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_question_value)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyQuestionValue')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionValuesApi#system_surveys_id_questions_survey_question_id_values_survey_question_value_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class SurveyQuestionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Survey Questions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def system_surveys_id_questions_get(id, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Survey Questions Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def system_surveys_id_questions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_get"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Survey Question
    # @param id 
    # @param survey_question 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestion]
    def system_surveys_id_questions_post(id, survey_question, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_post_with_http_info(id, survey_question, opts)
      return data
    end

    # 
    # Create Survey Question
    # @param id 
    # @param survey_question 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestion, Fixnum, Hash)>] SurveyQuestion data, response status code and response headers
    def system_surveys_id_questions_post_with_http_info(id, survey_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_post"
      end
      # verify the required parameter 'survey_question' is set
      if @api_client.config.client_side_validation && survey_question.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question' when calling SurveyQuestionsApi.system_surveys_id_questions_post"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_question)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Survey Question By Id
    # @param id 
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def system_surveys_id_questions_survey_question_id_delete(id, survey_question_id, opts = {})
      system_surveys_id_questions_survey_question_id_delete_with_http_info(id, survey_question_id, opts)
      return nil
    end

    # 
    # Delete Survey Question By Id
    # @param id 
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def system_surveys_id_questions_survey_question_id_delete_with_http_info(id, survey_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_delete"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_delete"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_survey_question_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Question By Id
    # @param id 
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestion]
    def system_surveys_id_questions_survey_question_id_get(id, survey_question_id, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_get_with_http_info(id, survey_question_id, opts)
      return data
    end

    # 
    # Get Survey Question By Id
    # @param id 
    # @param survey_question_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestion, Fixnum, Hash)>] SurveyQuestion data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_get_with_http_info(id, survey_question_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_get"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_get"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
        :return_type => 'SurveyQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_survey_question_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Survey Question
    # @param id 
    # @param survey_question_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestion]
    def system_surveys_id_questions_survey_question_id_patch(id, survey_question_id, operations, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_patch_with_http_info(id, survey_question_id, operations, opts)
      return data
    end

    # 
    # Update Survey Question
    # @param id 
    # @param survey_question_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestion, Fixnum, Hash)>] SurveyQuestion data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_patch_with_http_info(id, survey_question_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_patch"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_patch"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
        :return_type => 'SurveyQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_survey_question_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Survey Question
    # @param id 
    # @param survey_question_id 
    # @param survey_question 
    # @param [Hash] opts the optional parameters
    # @return [SurveyQuestion]
    def system_surveys_id_questions_survey_question_id_put(id, survey_question_id, survey_question, opts = {})
      data, _status_code, _headers = system_surveys_id_questions_survey_question_id_put_with_http_info(id, survey_question_id, survey_question, opts)
      return data
    end

    # 
    # Replace Survey Question
    # @param id 
    # @param survey_question_id 
    # @param survey_question 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyQuestion, Fixnum, Hash)>] SurveyQuestion data, response status code and response headers
    def system_surveys_id_questions_survey_question_id_put_with_http_info(id, survey_question_id, survey_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_put"
      end
      # verify the required parameter 'survey_question_id' is set
      if @api_client.config.client_side_validation && survey_question_id.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question_id' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_put"
      end
      # verify the required parameter 'survey_question' is set
      if @api_client.config.client_side_validation && survey_question.nil?
        fail ArgumentError, "Missing the required parameter 'survey_question' when calling SurveyQuestionsApi.system_surveys_id_questions_survey_question_id_put"
      end
      # resource path
      local_var_path = "/system/surveys/{id}/questions/{surveyQuestionId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'surveyQuestionId' + '}', survey_question_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_question)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyQuestion')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyQuestionsApi#system_surveys_id_questions_survey_question_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

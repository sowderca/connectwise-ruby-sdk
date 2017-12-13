
require "uri"

module ConnectWise
  class SurveyResultsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Survey Results Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_surveys_id_results_count_get(id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Survey Results Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_surveys_id_results_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_count_get"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Results
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SurveyResult>]
    def service_surveys_id_results_get(id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Survey Results
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SurveyResult>, Fixnum, Hash)>] Array<SurveyResult> data, response status code and response headers
    def service_surveys_id_results_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_get"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<SurveyResult>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Survey Result
    # @param id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_post(id, survey_result, opts = {})
      data, _status_code, _headers = service_surveys_id_results_post_with_http_info(id, survey_result, opts)
      return data
    end

    # 
    # Create Survey Result
    # @param id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_post_with_http_info(id, survey_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_post"
      end
      # verify the required parameter 'survey_result' is set
      if @api_client.config.client_side_validation && survey_result.nil?
        fail ArgumentError, "Missing the required parameter 'survey_result' when calling SurveyResultsApi.service_surveys_id_results_post"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_result)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_surveys_id_results_result_id_delete(id, result_id, opts = {})
      service_surveys_id_results_result_id_delete_with_http_info(id, result_id, opts)
      return nil
    end

    # 
    # Delete Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_surveys_id_results_result_id_delete_with_http_info(id, result_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_delete"
      end
      # verify the required parameter 'result_id' is set
      if @api_client.config.client_side_validation && result_id.nil?
        fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_delete"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_get(id, result_id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_get_with_http_info(id, result_id, opts)
      return data
    end

    # 
    # Get Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_get_with_http_info(id, result_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_get"
      end
      # verify the required parameter 'result_id' is set
      if @api_client.config.client_side_validation && result_id.nil?
        fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_get"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Survey Result
    # @param id 
    # @param result_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_patch(id, result_id, operations, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_patch_with_http_info(id, result_id, operations, opts)
      return data
    end

    # 
    # Update Survey Result
    # @param id 
    # @param result_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_patch_with_http_info(id, result_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch"
      end
      # verify the required parameter 'result_id' is set
      if @api_client.config.client_side_validation && result_id.nil?
        fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Survey Result
    # @param id 
    # @param result_id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_put(id, result_id, survey_result, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_put_with_http_info(id, result_id, survey_result, opts)
      return data
    end

    # 
    # Replace Survey Result
    # @param id 
    # @param result_id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_put_with_http_info(id, result_id, survey_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_put"
      end
      # verify the required parameter 'result_id' is set
      if @api_client.config.client_side_validation && result_id.nil?
        fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_put"
      end
      # verify the required parameter 'survey_result' is set
      if @api_client.config.client_side_validation && survey_result.nil?
        fail ArgumentError, "Missing the required parameter 'survey_result' when calling SurveyResultsApi.service_surveys_id_results_result_id_put"
      end
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_result)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end


require "uri"

module ConnectWise
  class OpportunityRatingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Opportunity Ratings Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def sales_opportunities_ratings_count_get(opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Opportunity Ratings Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def sales_opportunities_ratings_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_count_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings/count"

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
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Opportunity Ratings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<OpportunityRating>]
    def sales_opportunities_ratings_get(opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_get_with_http_info(opts)
      return data
    end

    # 
    # Get Opportunity Ratings
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<OpportunityRating>, Fixnum, Hash)>] Array<OpportunityRating> data, response status code and response headers
    def sales_opportunities_ratings_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_get ..."
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings"

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
        :return_type => 'Array<OpportunityRating>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Opportunity Rating By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def sales_opportunities_ratings_id_delete(id, opts = {})
      sales_opportunities_ratings_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Opportunity Rating By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def sales_opportunities_ratings_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_delete"
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Opportunity Rating By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityRating]
    def sales_opportunities_ratings_id_get(id, opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Opportunity Rating By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityRating, Fixnum, Hash)>] OpportunityRating data, response status code and response headers
    def sales_opportunities_ratings_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_get"
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'OpportunityRating')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Opportunity Rating
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityRating]
    def sales_opportunities_ratings_id_patch(id, operations, opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Opportunity Rating
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityRating, Fixnum, Hash)>] OpportunityRating data, response status code and response headers
    def sales_opportunities_ratings_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_patch"
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'OpportunityRating')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Opportunity Rating
    # @param id 
    # @param opportunity_rating 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityRating]
    def sales_opportunities_ratings_id_put(id, opportunity_rating, opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_id_put_with_http_info(id, opportunity_rating, opts)
      return data
    end

    # 
    # Replace Opportunity Rating
    # @param id 
    # @param opportunity_rating 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityRating, Fixnum, Hash)>] OpportunityRating data, response status code and response headers
    def sales_opportunities_ratings_id_put_with_http_info(id, opportunity_rating, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_put"
      end
      # verify the required parameter 'opportunity_rating' is set
      if @api_client.config.client_side_validation && opportunity_rating.nil?
        fail ArgumentError, "Missing the required parameter 'opportunity_rating' when calling OpportunityRatingsApi.sales_opportunities_ratings_id_put"
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(opportunity_rating)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OpportunityRating')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Opportunity Rating
    # @param opportunity_rating 
    # @param [Hash] opts the optional parameters
    # @return [OpportunityRating]
    def sales_opportunities_ratings_post(opportunity_rating, opts = {})
      data, _status_code, _headers = sales_opportunities_ratings_post_with_http_info(opportunity_rating, opts)
      return data
    end

    # 
    # Create Opportunity Rating
    # @param opportunity_rating 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OpportunityRating, Fixnum, Hash)>] OpportunityRating data, response status code and response headers
    def sales_opportunities_ratings_post_with_http_info(opportunity_rating, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityRatingsApi.sales_opportunities_ratings_post ..."
      end
      # verify the required parameter 'opportunity_rating' is set
      if @api_client.config.client_side_validation && opportunity_rating.nil?
        fail ArgumentError, "Missing the required parameter 'opportunity_rating' when calling OpportunityRatingsApi.sales_opportunities_ratings_post"
      end
      # resource path
      local_var_path = "/sales/opportunities/ratings"

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
      post_body = @api_client.object_to_http_body(opportunity_rating)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OpportunityRating')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityRatingsApi#sales_opportunities_ratings_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

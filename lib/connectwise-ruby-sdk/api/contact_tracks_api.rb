
require "uri"

module ConnectWise
  class ContactTracksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Tracks Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_contacts_id_tracks_count_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_tracks_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tracks Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_contacts_id_tracks_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactTracksApi.company_contacts_id_tracks_count_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactTracksApi.company_contacts_id_tracks_count_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/tracks/count".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ContactTracksApi#company_contacts_id_tracks_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Tracks
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Track>]
    def company_contacts_id_tracks_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_tracks_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Tracks
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Track>, Fixnum, Hash)>] Array<Track> data, response status code and response headers
    def company_contacts_id_tracks_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactTracksApi.company_contacts_id_tracks_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactTracksApi.company_contacts_id_tracks_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/tracks".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<Track>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactTracksApi#company_contacts_id_tracks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Track
    # @param id 
    # @param track 
    # @param [Hash] opts the optional parameters
    # @return [Track]
    def company_contacts_id_tracks_post(id, track, opts = {})
      data, _status_code, _headers = company_contacts_id_tracks_post_with_http_info(id, track, opts)
      return data
    end

    # 
    # Create Track
    # @param id 
    # @param track 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Track, Fixnum, Hash)>] Track data, response status code and response headers
    def company_contacts_id_tracks_post_with_http_info(id, track, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactTracksApi.company_contacts_id_tracks_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactTracksApi.company_contacts_id_tracks_post"
      end
      # verify the required parameter 'track' is set
      if @api_client.config.client_side_validation && track.nil?
        fail ArgumentError, "Missing the required parameter 'track' when calling ContactTracksApi.company_contacts_id_tracks_post"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/tracks".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(track)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Track')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactTracksApi#company_contacts_id_tracks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Track By Id
    # @param id 
    # @param track_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_contacts_id_tracks_track_id_delete(id, track_id, opts = {})
      company_contacts_id_tracks_track_id_delete_with_http_info(id, track_id, opts)
      return nil
    end

    # 
    # Delete Track By Id
    # @param id 
    # @param track_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_id_tracks_track_id_delete_with_http_info(id, track_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactTracksApi.company_contacts_id_tracks_track_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactTracksApi.company_contacts_id_tracks_track_id_delete"
      end
      # verify the required parameter 'track_id' is set
      if @api_client.config.client_side_validation && track_id.nil?
        fail ArgumentError, "Missing the required parameter 'track_id' when calling ContactTracksApi.company_contacts_id_tracks_track_id_delete"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/tracks/{trackId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'trackId' + '}', track_id.to_s)

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
        @api_client.config.logger.debug "API called: ContactTracksApi#company_contacts_id_tracks_track_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Track By Id
    # @param id 
    # @param track_id 
    # @param [Hash] opts the optional parameters
    # @return [Track]
    def company_contacts_id_tracks_track_id_get(id, track_id, opts = {})
      data, _status_code, _headers = company_contacts_id_tracks_track_id_get_with_http_info(id, track_id, opts)
      return data
    end

    # 
    # Get Track By Id
    # @param id 
    # @param track_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Track, Fixnum, Hash)>] Track data, response status code and response headers
    def company_contacts_id_tracks_track_id_get_with_http_info(id, track_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactTracksApi.company_contacts_id_tracks_track_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactTracksApi.company_contacts_id_tracks_track_id_get"
      end
      # verify the required parameter 'track_id' is set
      if @api_client.config.client_side_validation && track_id.nil?
        fail ArgumentError, "Missing the required parameter 'track_id' when calling ContactTracksApi.company_contacts_id_tracks_track_id_get"
      end
      # resource path
      local_var_path = "/company/contacts/{id}/tracks/{trackId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'trackId' + '}', track_id.to_s)

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
        :return_type => 'Track')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactTracksApi#company_contacts_id_tracks_track_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

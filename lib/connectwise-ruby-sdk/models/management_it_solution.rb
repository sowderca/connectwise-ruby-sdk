
require 'date'

module ConnectWise

  class ManagementItSolution
    attr_accessor :id

    attr_accessor :name

    attr_accessor :management_it_solution_type

    # This is only required when managementItSolutionType is Custom
    attr_accessor :management_solution_name

    # This is only required for Level Platforms and Kaseya
    attr_accessor :management_server_url

    # This is only required for Level Platforms and Kaseya when overrideWebServiceLocationFlag is true
    attr_accessor :webservice_override_url

    # This is only required for Level Platforms and Kaseya when overrideLoginLocationFlag is true
    attr_accessor :portal_override_login_url

    attr_accessor :global_login_flag

    # This is only required when globalLoginFlag = true
    attr_accessor :global_login_username

    # This is only required when globalLoginFlag = true
    attr_accessor :global_login_password

    attr_accessor :using_ssl_flag

    # This is only required for N-Able solution
    attr_accessor :n_able_username

    # This is only required for N-Able solution
    attr_accessor :n_able_password

    attr_accessor :override_web_service_location_flag

    attr_accessor :override_login_location_flag

    # This is only required for Continuum solution
    attr_accessor :continuum_api_username

    # This is only required for Continuum solution
    attr_accessor :continuum_api_password

    # This is only required for Level Platforms solution
    attr_accessor :level_api_username

    # This is only required for Level Platforms solution
    attr_accessor :level_api_password

    # This is only required for Level Platforms solution
    attr_accessor :level_var_domain

    attr_accessor :no_display_flag

    # Metadata of the entity
    attr_accessor :_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'management_it_solution_type' => :'managementItSolutionType',
        :'management_solution_name' => :'managementSolutionName',
        :'management_server_url' => :'managementServerUrl',
        :'webservice_override_url' => :'webserviceOverrideUrl',
        :'portal_override_login_url' => :'portalOverrideLoginUrl',
        :'global_login_flag' => :'globalLoginFlag',
        :'global_login_username' => :'globalLoginUsername',
        :'global_login_password' => :'globalLoginPassword',
        :'using_ssl_flag' => :'usingSslFlag',
        :'n_able_username' => :'nAbleUsername',
        :'n_able_password' => :'nAblePassword',
        :'override_web_service_location_flag' => :'overrideWebServiceLocationFlag',
        :'override_login_location_flag' => :'overrideLoginLocationFlag',
        :'continuum_api_username' => :'continuumApiUsername',
        :'continuum_api_password' => :'continuumApiPassword',
        :'level_api_username' => :'levelApiUsername',
        :'level_api_password' => :'levelApiPassword',
        :'level_var_domain' => :'levelVarDomain',
        :'no_display_flag' => :'noDisplayFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'management_it_solution_type' => :'String',
        :'management_solution_name' => :'String',
        :'management_server_url' => :'String',
        :'webservice_override_url' => :'String',
        :'portal_override_login_url' => :'String',
        :'global_login_flag' => :'BOOLEAN',
        :'global_login_username' => :'String',
        :'global_login_password' => :'String',
        :'using_ssl_flag' => :'BOOLEAN',
        :'n_able_username' => :'String',
        :'n_able_password' => :'String',
        :'override_web_service_location_flag' => :'BOOLEAN',
        :'override_login_location_flag' => :'BOOLEAN',
        :'continuum_api_username' => :'String',
        :'continuum_api_password' => :'String',
        :'level_api_username' => :'String',
        :'level_api_password' => :'String',
        :'level_var_domain' => :'String',
        :'no_display_flag' => :'BOOLEAN',
        :'_info' => :'Metadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'managementItSolutionType')
        self.management_it_solution_type = attributes[:'managementItSolutionType']
      end

      if attributes.has_key?(:'managementSolutionName')
        self.management_solution_name = attributes[:'managementSolutionName']
      end

      if attributes.has_key?(:'managementServerUrl')
        self.management_server_url = attributes[:'managementServerUrl']
      end

      if attributes.has_key?(:'webserviceOverrideUrl')
        self.webservice_override_url = attributes[:'webserviceOverrideUrl']
      end

      if attributes.has_key?(:'portalOverrideLoginUrl')
        self.portal_override_login_url = attributes[:'portalOverrideLoginUrl']
      end

      if attributes.has_key?(:'globalLoginFlag')
        self.global_login_flag = attributes[:'globalLoginFlag']
      end

      if attributes.has_key?(:'globalLoginUsername')
        self.global_login_username = attributes[:'globalLoginUsername']
      end

      if attributes.has_key?(:'globalLoginPassword')
        self.global_login_password = attributes[:'globalLoginPassword']
      end

      if attributes.has_key?(:'usingSslFlag')
        self.using_ssl_flag = attributes[:'usingSslFlag']
      end

      if attributes.has_key?(:'nAbleUsername')
        self.n_able_username = attributes[:'nAbleUsername']
      end

      if attributes.has_key?(:'nAblePassword')
        self.n_able_password = attributes[:'nAblePassword']
      end

      if attributes.has_key?(:'overrideWebServiceLocationFlag')
        self.override_web_service_location_flag = attributes[:'overrideWebServiceLocationFlag']
      end

      if attributes.has_key?(:'overrideLoginLocationFlag')
        self.override_login_location_flag = attributes[:'overrideLoginLocationFlag']
      end

      if attributes.has_key?(:'continuumApiUsername')
        self.continuum_api_username = attributes[:'continuumApiUsername']
      end

      if attributes.has_key?(:'continuumApiPassword')
        self.continuum_api_password = attributes[:'continuumApiPassword']
      end

      if attributes.has_key?(:'levelApiUsername')
        self.level_api_username = attributes[:'levelApiUsername']
      end

      if attributes.has_key?(:'levelApiPassword')
        self.level_api_password = attributes[:'levelApiPassword']
      end

      if attributes.has_key?(:'levelVarDomain')
        self.level_var_domain = attributes[:'levelVarDomain']
      end

      if attributes.has_key?(:'noDisplayFlag')
        self.no_display_flag = attributes[:'noDisplayFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 30
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 30.")
      end

      if @management_it_solution_type.nil?
        invalid_properties.push("invalid value for 'management_it_solution_type', management_it_solution_type cannot be nil.")
      end

      if !@management_solution_name.nil? && @management_solution_name.to_s.length > 30
        invalid_properties.push("invalid value for 'management_solution_name', the character length must be smaller than or equal to 30.")
      end

      if !@management_server_url.nil? && @management_server_url.to_s.length > 200
        invalid_properties.push("invalid value for 'management_server_url', the character length must be smaller than or equal to 200.")
      end

      if !@webservice_override_url.nil? && @webservice_override_url.to_s.length > 200
        invalid_properties.push("invalid value for 'webservice_override_url', the character length must be smaller than or equal to 200.")
      end

      if !@portal_override_login_url.nil? && @portal_override_login_url.to_s.length > 200
        invalid_properties.push("invalid value for 'portal_override_login_url', the character length must be smaller than or equal to 200.")
      end

      if !@global_login_username.nil? && @global_login_username.to_s.length > 50
        invalid_properties.push("invalid value for 'global_login_username', the character length must be smaller than or equal to 50.")
      end

      if !@global_login_password.nil? && @global_login_password.to_s.length > 50
        invalid_properties.push("invalid value for 'global_login_password', the character length must be smaller than or equal to 50.")
      end

      if !@n_able_username.nil? && @n_able_username.to_s.length > 50
        invalid_properties.push("invalid value for 'n_able_username', the character length must be smaller than or equal to 50.")
      end

      if !@n_able_password.nil? && @n_able_password.to_s.length > 50
        invalid_properties.push("invalid value for 'n_able_password', the character length must be smaller than or equal to 50.")
      end

      if !@continuum_api_username.nil? && @continuum_api_username.to_s.length > 100
        invalid_properties.push("invalid value for 'continuum_api_username', the character length must be smaller than or equal to 100.")
      end

      if !@continuum_api_password.nil? && @continuum_api_password.to_s.length > 100
        invalid_properties.push("invalid value for 'continuum_api_password', the character length must be smaller than or equal to 100.")
      end

      if !@level_api_username.nil? && @level_api_username.to_s.length > 100
        invalid_properties.push("invalid value for 'level_api_username', the character length must be smaller than or equal to 100.")
      end

      if !@level_api_password.nil? && @level_api_password.to_s.length > 100
        invalid_properties.push("invalid value for 'level_api_password', the character length must be smaller than or equal to 100.")
      end

      if !@level_var_domain.nil? && @level_var_domain.to_s.length > 100
        invalid_properties.push("invalid value for 'level_var_domain', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 30
      return false if @management_it_solution_type.nil?
      management_it_solution_type_validator = EnumAttributeValidator.new('String', ["LevelPlatforms", "Kaseya", "NAble", "Continuum", "Custom"])
      return false unless management_it_solution_type_validator.valid?(@management_it_solution_type)
      return false if !@management_solution_name.nil? && @management_solution_name.to_s.length > 30
      return false if !@management_server_url.nil? && @management_server_url.to_s.length > 200
      return false if !@webservice_override_url.nil? && @webservice_override_url.to_s.length > 200
      return false if !@portal_override_login_url.nil? && @portal_override_login_url.to_s.length > 200
      return false if !@global_login_username.nil? && @global_login_username.to_s.length > 50
      return false if !@global_login_password.nil? && @global_login_password.to_s.length > 50
      return false if !@n_able_username.nil? && @n_able_username.to_s.length > 50
      return false if !@n_able_password.nil? && @n_able_password.to_s.length > 50
      return false if !@continuum_api_username.nil? && @continuum_api_username.to_s.length > 100
      return false if !@continuum_api_password.nil? && @continuum_api_password.to_s.length > 100
      return false if !@level_api_username.nil? && @level_api_username.to_s.length > 100
      return false if !@level_api_password.nil? && @level_api_password.to_s.length > 100
      return false if !@level_var_domain.nil? && @level_var_domain.to_s.length > 100
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 30
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 30."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] management_it_solution_type Object to be assigned
    def management_it_solution_type=(management_it_solution_type)
      validator = EnumAttributeValidator.new('String', ["LevelPlatforms", "Kaseya", "NAble", "Continuum", "Custom"])
      unless validator.valid?(management_it_solution_type)
        fail ArgumentError, "invalid value for 'management_it_solution_type', must be one of #{validator.allowable_values}."
      end
      @management_it_solution_type = management_it_solution_type
    end

    # Custom attribute writer method with validation
    # @param [Object] management_solution_name Value to be assigned
    def management_solution_name=(management_solution_name)

      if !management_solution_name.nil? && management_solution_name.to_s.length > 30
        fail ArgumentError, "invalid value for 'management_solution_name', the character length must be smaller than or equal to 30."
      end

      @management_solution_name = management_solution_name
    end

    # Custom attribute writer method with validation
    # @param [Object] management_server_url Value to be assigned
    def management_server_url=(management_server_url)

      if !management_server_url.nil? && management_server_url.to_s.length > 200
        fail ArgumentError, "invalid value for 'management_server_url', the character length must be smaller than or equal to 200."
      end

      @management_server_url = management_server_url
    end

    # Custom attribute writer method with validation
    # @param [Object] webservice_override_url Value to be assigned
    def webservice_override_url=(webservice_override_url)

      if !webservice_override_url.nil? && webservice_override_url.to_s.length > 200
        fail ArgumentError, "invalid value for 'webservice_override_url', the character length must be smaller than or equal to 200."
      end

      @webservice_override_url = webservice_override_url
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_override_login_url Value to be assigned
    def portal_override_login_url=(portal_override_login_url)

      if !portal_override_login_url.nil? && portal_override_login_url.to_s.length > 200
        fail ArgumentError, "invalid value for 'portal_override_login_url', the character length must be smaller than or equal to 200."
      end

      @portal_override_login_url = portal_override_login_url
    end

    # Custom attribute writer method with validation
    # @param [Object] global_login_username Value to be assigned
    def global_login_username=(global_login_username)

      if !global_login_username.nil? && global_login_username.to_s.length > 50
        fail ArgumentError, "invalid value for 'global_login_username', the character length must be smaller than or equal to 50."
      end

      @global_login_username = global_login_username
    end

    # Custom attribute writer method with validation
    # @param [Object] global_login_password Value to be assigned
    def global_login_password=(global_login_password)

      if !global_login_password.nil? && global_login_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'global_login_password', the character length must be smaller than or equal to 50."
      end

      @global_login_password = global_login_password
    end

    # Custom attribute writer method with validation
    # @param [Object] n_able_username Value to be assigned
    def n_able_username=(n_able_username)

      if !n_able_username.nil? && n_able_username.to_s.length > 50
        fail ArgumentError, "invalid value for 'n_able_username', the character length must be smaller than or equal to 50."
      end

      @n_able_username = n_able_username
    end

    # Custom attribute writer method with validation
    # @param [Object] n_able_password Value to be assigned
    def n_able_password=(n_able_password)

      if !n_able_password.nil? && n_able_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'n_able_password', the character length must be smaller than or equal to 50."
      end

      @n_able_password = n_able_password
    end

    # Custom attribute writer method with validation
    # @param [Object] continuum_api_username Value to be assigned
    def continuum_api_username=(continuum_api_username)

      if !continuum_api_username.nil? && continuum_api_username.to_s.length > 100
        fail ArgumentError, "invalid value for 'continuum_api_username', the character length must be smaller than or equal to 100."
      end

      @continuum_api_username = continuum_api_username
    end

    # Custom attribute writer method with validation
    # @param [Object] continuum_api_password Value to be assigned
    def continuum_api_password=(continuum_api_password)

      if !continuum_api_password.nil? && continuum_api_password.to_s.length > 100
        fail ArgumentError, "invalid value for 'continuum_api_password', the character length must be smaller than or equal to 100."
      end

      @continuum_api_password = continuum_api_password
    end

    # Custom attribute writer method with validation
    # @param [Object] level_api_username Value to be assigned
    def level_api_username=(level_api_username)

      if !level_api_username.nil? && level_api_username.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_api_username', the character length must be smaller than or equal to 100."
      end

      @level_api_username = level_api_username
    end

    # Custom attribute writer method with validation
    # @param [Object] level_api_password Value to be assigned
    def level_api_password=(level_api_password)

      if !level_api_password.nil? && level_api_password.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_api_password', the character length must be smaller than or equal to 100."
      end

      @level_api_password = level_api_password
    end

    # Custom attribute writer method with validation
    # @param [Object] level_var_domain Value to be assigned
    def level_var_domain=(level_var_domain)

      if !level_var_domain.nil? && level_var_domain.to_s.length > 100
        fail ArgumentError, "invalid value for 'level_var_domain', the character length must be smaller than or equal to 100."
      end

      @level_var_domain = level_var_domain
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          management_it_solution_type == o.management_it_solution_type &&
          management_solution_name == o.management_solution_name &&
          management_server_url == o.management_server_url &&
          webservice_override_url == o.webservice_override_url &&
          portal_override_login_url == o.portal_override_login_url &&
          global_login_flag == o.global_login_flag &&
          global_login_username == o.global_login_username &&
          global_login_password == o.global_login_password &&
          using_ssl_flag == o.using_ssl_flag &&
          n_able_username == o.n_able_username &&
          n_able_password == o.n_able_password &&
          override_web_service_location_flag == o.override_web_service_location_flag &&
          override_login_location_flag == o.override_login_location_flag &&
          continuum_api_username == o.continuum_api_username &&
          continuum_api_password == o.continuum_api_password &&
          level_api_username == o.level_api_username &&
          level_api_password == o.level_api_password &&
          level_var_domain == o.level_var_domain &&
          no_display_flag == o.no_display_flag &&
          _info == o._info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, management_it_solution_type, management_solution_name, management_server_url, webservice_override_url, portal_override_login_url, global_login_flag, global_login_username, global_login_password, using_ssl_flag, n_able_username, n_able_password, override_web_service_location_flag, override_login_location_flag, continuum_api_username, continuum_api_password, level_api_username, level_api_password, level_var_domain, no_display_flag, _info].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = ConnectWise.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

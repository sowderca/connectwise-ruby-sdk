
require 'date'

module ConnectWise

  class ManagementEmail
    attr_accessor :id

    attr_accessor :name

    attr_accessor :management_solution

    attr_accessor :identifier

    # emailUsername is required when managementSolution set to Postini.
    attr_accessor :email_username

    # emailPassword is required when managementSolution set to Postini. The password field can only be set on initial POST.
    attr_accessor :email_password

    # serverPrefix is required when managementSolution set to Postini.
    attr_accessor :server_prefix

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
        :'management_solution' => :'managementSolution',
        :'identifier' => :'identifier',
        :'email_username' => :'emailUsername',
        :'email_password' => :'emailPassword',
        :'server_prefix' => :'serverPrefix',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'management_solution' => :'String',
        :'identifier' => :'String',
        :'email_username' => :'String',
        :'email_password' => :'String',
        :'server_prefix' => :'String',
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

      if attributes.has_key?(:'managementSolution')
        self.management_solution = attributes[:'managementSolution']
      end

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'emailUsername')
        self.email_username = attributes[:'emailUsername']
      end

      if attributes.has_key?(:'emailPassword')
        self.email_password = attributes[:'emailPassword']
      end

      if attributes.has_key?(:'serverPrefix')
        self.server_prefix = attributes[:'serverPrefix']
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

      if @management_solution.nil?
        invalid_properties.push("invalid value for 'management_solution', management_solution cannot be nil.")
      end

      if @identifier.nil?
        invalid_properties.push("invalid value for 'identifier', identifier cannot be nil.")
      end

      if @identifier.to_s.length > 50
        invalid_properties.push("invalid value for 'identifier', the character length must be smaller than or equal to 50.")
      end

      if !@email_username.nil? && @email_username.to_s.length > 50
        invalid_properties.push("invalid value for 'email_username', the character length must be smaller than or equal to 50.")
      end

      if !@email_password.nil? && @email_password.to_s.length > 50
        invalid_properties.push("invalid value for 'email_password', the character length must be smaller than or equal to 50.")
      end

      if !@server_prefix.nil? && @server_prefix.to_s.length > 30
        invalid_properties.push("invalid value for 'server_prefix', the character length must be smaller than or equal to 30.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 30
      return false if @management_solution.nil?
      management_solution_validator = EnumAttributeValidator.new('String', ["DoubleCheck", "Postini"])
      return false unless management_solution_validator.valid?(@management_solution)
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 50
      return false if !@email_username.nil? && @email_username.to_s.length > 50
      return false if !@email_password.nil? && @email_password.to_s.length > 50
      return false if !@server_prefix.nil? && @server_prefix.to_s.length > 30
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
    # @param [Object] management_solution Object to be assigned
    def management_solution=(management_solution)
      validator = EnumAttributeValidator.new('String', ["DoubleCheck", "Postini"])
      unless validator.valid?(management_solution)
        fail ArgumentError, "invalid value for 'management_solution', must be one of #{validator.allowable_values}."
      end
      @management_solution = management_solution
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, "identifier cannot be nil"
      end

      if identifier.to_s.length > 50
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 50."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] email_username Value to be assigned
    def email_username=(email_username)

      if !email_username.nil? && email_username.to_s.length > 50
        fail ArgumentError, "invalid value for 'email_username', the character length must be smaller than or equal to 50."
      end

      @email_username = email_username
    end

    # Custom attribute writer method with validation
    # @param [Object] email_password Value to be assigned
    def email_password=(email_password)

      if !email_password.nil? && email_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'email_password', the character length must be smaller than or equal to 50."
      end

      @email_password = email_password
    end

    # Custom attribute writer method with validation
    # @param [Object] server_prefix Value to be assigned
    def server_prefix=(server_prefix)

      if !server_prefix.nil? && server_prefix.to_s.length > 30
        fail ArgumentError, "invalid value for 'server_prefix', the character length must be smaller than or equal to 30."
      end

      @server_prefix = server_prefix
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          management_solution == o.management_solution &&
          identifier == o.identifier &&
          email_username == o.email_username &&
          email_password == o.email_password &&
          server_prefix == o.server_prefix &&
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
      [id, name, management_solution, identifier, email_username, email_password, server_prefix, _info].hash
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

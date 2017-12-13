
require 'date'

module ConnectWise

  class PortalSecurity
    attr_accessor :identifier

    attr_accessor :enabled

    attr_accessor :id

    attr_accessor :function_identifier

    attr_accessor :function_description

    attr_accessor :level_one

    attr_accessor :level_two

    attr_accessor :level_three

    attr_accessor :level_four

    attr_accessor :level_five

    attr_accessor :level_six

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'identifier' => :'identifier',
        :'enabled' => :'enabled',
        :'id' => :'id',
        :'function_identifier' => :'functionIdentifier',
        :'function_description' => :'functionDescription',
        :'level_one' => :'levelOne',
        :'level_two' => :'levelTwo',
        :'level_three' => :'levelThree',
        :'level_four' => :'levelFour',
        :'level_five' => :'levelFive',
        :'level_six' => :'levelSix',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'identifier' => :'String',
        :'enabled' => :'BOOLEAN',
        :'id' => :'Integer',
        :'function_identifier' => :'String',
        :'function_description' => :'String',
        :'level_one' => :'BOOLEAN',
        :'level_two' => :'BOOLEAN',
        :'level_three' => :'BOOLEAN',
        :'level_four' => :'BOOLEAN',
        :'level_five' => :'BOOLEAN',
        :'level_six' => :'BOOLEAN',
        :'_info' => :'Metadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'functionIdentifier')
        self.function_identifier = attributes[:'functionIdentifier']
      end

      if attributes.has_key?(:'functionDescription')
        self.function_description = attributes[:'functionDescription']
      end

      if attributes.has_key?(:'levelOne')
        self.level_one = attributes[:'levelOne']
      end

      if attributes.has_key?(:'levelTwo')
        self.level_two = attributes[:'levelTwo']
      end

      if attributes.has_key?(:'levelThree')
        self.level_three = attributes[:'levelThree']
      end

      if attributes.has_key?(:'levelFour')
        self.level_four = attributes[:'levelFour']
      end

      if attributes.has_key?(:'levelFive')
        self.level_five = attributes[:'levelFive']
      end

      if attributes.has_key?(:'levelSix')
        self.level_six = attributes[:'levelSix']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          identifier == o.identifier &&
          enabled == o.enabled &&
          id == o.id &&
          function_identifier == o.function_identifier &&
          function_description == o.function_description &&
          level_one == o.level_one &&
          level_two == o.level_two &&
          level_three == o.level_three &&
          level_four == o.level_four &&
          level_five == o.level_five &&
          level_six == o.level_six &&
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
      [identifier, enabled, id, function_identifier, function_description, level_one, level_two, level_three, level_four, level_five, level_six, _info].hash
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

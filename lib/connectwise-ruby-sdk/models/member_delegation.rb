
require 'date'

module ConnectWise

  class MemberDelegation
    attr_accessor :id

    attr_accessor :delegation_type

    attr_accessor :delegated_to

    attr_accessor :date_start

    attr_accessor :date_end

    attr_accessor :member

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
        :'delegation_type' => :'delegationType',
        :'delegated_to' => :'delegatedTo',
        :'date_start' => :'dateStart',
        :'date_end' => :'dateEnd',
        :'member' => :'member',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'delegation_type' => :'String',
        :'delegated_to' => :'MemberReference',
        :'date_start' => :'DateTime',
        :'date_end' => :'DateTime',
        :'member' => :'MemberReference',
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

      if attributes.has_key?(:'delegationType')
        self.delegation_type = attributes[:'delegationType']
      end

      if attributes.has_key?(:'delegatedTo')
        self.delegated_to = attributes[:'delegatedTo']
      end

      if attributes.has_key?(:'dateStart')
        self.date_start = attributes[:'dateStart']
      end

      if attributes.has_key?(:'dateEnd')
        self.date_end = attributes[:'dateEnd']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @delegation_type.nil?
        invalid_properties.push("invalid value for 'delegation_type', delegation_type cannot be nil.")
      end

      if @delegated_to.nil?
        invalid_properties.push("invalid value for 'delegated_to', delegated_to cannot be nil.")
      end

      if @date_start.nil?
        invalid_properties.push("invalid value for 'date_start', date_start cannot be nil.")
      end

      if @date_end.nil?
        invalid_properties.push("invalid value for 'date_end', date_end cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @delegation_type.nil?
      delegation_type_validator = EnumAttributeValidator.new('String', ["Approval", "Project"])
      return false unless delegation_type_validator.valid?(@delegation_type)
      return false if @delegated_to.nil?
      return false if @date_start.nil?
      return false if @date_end.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delegation_type Object to be assigned
    def delegation_type=(delegation_type)
      validator = EnumAttributeValidator.new('String', ["Approval", "Project"])
      unless validator.valid?(delegation_type)
        fail ArgumentError, "invalid value for 'delegation_type', must be one of #{validator.allowable_values}."
      end
      @delegation_type = delegation_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          delegation_type == o.delegation_type &&
          delegated_to == o.delegated_to &&
          date_start == o.date_start &&
          date_end == o.date_end &&
          member == o.member &&
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
      [id, delegation_type, delegated_to, date_start, date_end, member, _info].hash
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

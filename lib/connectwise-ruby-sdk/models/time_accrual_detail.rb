
require 'date'

module ConnectWise

  class TimeAccrualDetail
    attr_accessor :id

    # Available types are: Holiday, PTO, Sick and Vacation.
    attr_accessor :accrual_type

    attr_accessor :start_year

    attr_accessor :end_year

    attr_accessor :hours

    attr_accessor :time_accrual

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
        :'accrual_type' => :'accrualType',
        :'start_year' => :'startYear',
        :'end_year' => :'endYear',
        :'hours' => :'hours',
        :'time_accrual' => :'timeAccrual',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'accrual_type' => :'String',
        :'start_year' => :'Integer',
        :'end_year' => :'Integer',
        :'hours' => :'Float',
        :'time_accrual' => :'TimeAccrualReference',
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

      if attributes.has_key?(:'accrualType')
        self.accrual_type = attributes[:'accrualType']
      end

      if attributes.has_key?(:'startYear')
        self.start_year = attributes[:'startYear']
      end

      if attributes.has_key?(:'endYear')
        self.end_year = attributes[:'endYear']
      end

      if attributes.has_key?(:'hours')
        self.hours = attributes[:'hours']
      end

      if attributes.has_key?(:'timeAccrual')
        self.time_accrual = attributes[:'timeAccrual']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @accrual_type.nil?
        invalid_properties.push("invalid value for 'accrual_type', accrual_type cannot be nil.")
      end

      if @start_year.nil?
        invalid_properties.push("invalid value for 'start_year', start_year cannot be nil.")
      end

      if @start_year > 50
        invalid_properties.push("invalid value for 'start_year', must be smaller than or equal to 50.")
      end

      if @start_year < 1
        invalid_properties.push("invalid value for 'start_year', must be greater than or equal to 1.")
      end

      if @end_year.nil?
        invalid_properties.push("invalid value for 'end_year', end_year cannot be nil.")
      end

      if @end_year > 50
        invalid_properties.push("invalid value for 'end_year', must be smaller than or equal to 50.")
      end

      if @end_year < 1
        invalid_properties.push("invalid value for 'end_year', must be greater than or equal to 1.")
      end

      if @hours.nil?
        invalid_properties.push("invalid value for 'hours', hours cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @accrual_type.nil?
      accrual_type_validator = EnumAttributeValidator.new('String', ["Holiday", "PTO", "Sick", "Vacation"])
      return false unless accrual_type_validator.valid?(@accrual_type)
      return false if @start_year.nil?
      return false if @start_year > 50
      return false if @start_year < 1
      return false if @end_year.nil?
      return false if @end_year > 50
      return false if @end_year < 1
      return false if @hours.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accrual_type Object to be assigned
    def accrual_type=(accrual_type)
      validator = EnumAttributeValidator.new('String', ["Holiday", "PTO", "Sick", "Vacation"])
      unless validator.valid?(accrual_type)
        fail ArgumentError, "invalid value for 'accrual_type', must be one of #{validator.allowable_values}."
      end
      @accrual_type = accrual_type
    end

    # Custom attribute writer method with validation
    # @param [Object] start_year Value to be assigned
    def start_year=(start_year)
      if start_year.nil?
        fail ArgumentError, "start_year cannot be nil"
      end

      if start_year > 50
        fail ArgumentError, "invalid value for 'start_year', must be smaller than or equal to 50."
      end

      if start_year < 1
        fail ArgumentError, "invalid value for 'start_year', must be greater than or equal to 1."
      end

      @start_year = start_year
    end

    # Custom attribute writer method with validation
    # @param [Object] end_year Value to be assigned
    def end_year=(end_year)
      if end_year.nil?
        fail ArgumentError, "end_year cannot be nil"
      end

      if end_year > 50
        fail ArgumentError, "invalid value for 'end_year', must be smaller than or equal to 50."
      end

      if end_year < 1
        fail ArgumentError, "invalid value for 'end_year', must be greater than or equal to 1."
      end

      @end_year = end_year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          accrual_type == o.accrual_type &&
          start_year == o.start_year &&
          end_year == o.end_year &&
          hours == o.hours &&
          time_accrual == o.time_accrual &&
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
      [id, accrual_type, start_year, end_year, hours, time_accrual, _info].hash
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

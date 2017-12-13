
require 'date'

module ConnectWise

  class WorkflowEvent
    attr_accessor :id

    attr_accessor :name

    attr_accessor :event_condition

    # Required when exectionTimes is set to MultipleTimes or Continuously
    attr_accessor :frequency_unit

    # Required when exectionTimes is set to MultipleTimes or Continuously
    attr_accessor :frequency_of_execution

    # Required when exectionTimes is set to MultipleTimes
    attr_accessor :max_number_of_execution

    # Defaults to Once when not specified
    attr_accessor :execution_time

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
        :'event_condition' => :'eventCondition',
        :'frequency_unit' => :'frequencyUnit',
        :'frequency_of_execution' => :'frequencyOfExecution',
        :'max_number_of_execution' => :'maxNumberOfExecution',
        :'execution_time' => :'executionTime',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'event_condition' => :'String',
        :'frequency_unit' => :'String',
        :'frequency_of_execution' => :'Integer',
        :'max_number_of_execution' => :'Integer',
        :'execution_time' => :'String',
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

      if attributes.has_key?(:'eventCondition')
        self.event_condition = attributes[:'eventCondition']
      end

      if attributes.has_key?(:'frequencyUnit')
        self.frequency_unit = attributes[:'frequencyUnit']
      end

      if attributes.has_key?(:'frequencyOfExecution')
        self.frequency_of_execution = attributes[:'frequencyOfExecution']
      end

      if attributes.has_key?(:'maxNumberOfExecution')
        self.max_number_of_execution = attributes[:'maxNumberOfExecution']
      end

      if attributes.has_key?(:'executionTime')
        self.execution_time = attributes[:'executionTime']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @event_condition.nil?
        invalid_properties.push("invalid value for 'event_condition', event_condition cannot be nil.")
      end

      if !@frequency_of_execution.nil? && @frequency_of_execution > 2147483647
        invalid_properties.push("invalid value for 'frequency_of_execution', must be smaller than or equal to 2147483647.")
      end

      if !@frequency_of_execution.nil? && @frequency_of_execution < 1
        invalid_properties.push("invalid value for 'frequency_of_execution', must be greater than or equal to 1.")
      end

      if !@max_number_of_execution.nil? && @max_number_of_execution > 2147483647
        invalid_properties.push("invalid value for 'max_number_of_execution', must be smaller than or equal to 2147483647.")
      end

      if !@max_number_of_execution.nil? && @max_number_of_execution < 1
        invalid_properties.push("invalid value for 'max_number_of_execution', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @event_condition.nil?
      frequency_unit_validator = EnumAttributeValidator.new('String', ["Minutes", "Hours", "Days", "Months"])
      return false unless frequency_unit_validator.valid?(@frequency_unit)
      return false if !@frequency_of_execution.nil? && @frequency_of_execution > 2147483647
      return false if !@frequency_of_execution.nil? && @frequency_of_execution < 1
      return false if !@max_number_of_execution.nil? && @max_number_of_execution > 2147483647
      return false if !@max_number_of_execution.nil? && @max_number_of_execution < 1
      execution_time_validator = EnumAttributeValidator.new('String', ["Once", "MultipleTimes", "Continuously"])
      return false unless execution_time_validator.valid?(@execution_time)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency_unit Object to be assigned
    def frequency_unit=(frequency_unit)
      validator = EnumAttributeValidator.new('String', ["Minutes", "Hours", "Days", "Months"])
      unless validator.valid?(frequency_unit)
        fail ArgumentError, "invalid value for 'frequency_unit', must be one of #{validator.allowable_values}."
      end
      @frequency_unit = frequency_unit
    end

    # Custom attribute writer method with validation
    # @param [Object] frequency_of_execution Value to be assigned
    def frequency_of_execution=(frequency_of_execution)

      if !frequency_of_execution.nil? && frequency_of_execution > 2147483647
        fail ArgumentError, "invalid value for 'frequency_of_execution', must be smaller than or equal to 2147483647."
      end

      if !frequency_of_execution.nil? && frequency_of_execution < 1
        fail ArgumentError, "invalid value for 'frequency_of_execution', must be greater than or equal to 1."
      end

      @frequency_of_execution = frequency_of_execution
    end

    # Custom attribute writer method with validation
    # @param [Object] max_number_of_execution Value to be assigned
    def max_number_of_execution=(max_number_of_execution)

      if !max_number_of_execution.nil? && max_number_of_execution > 2147483647
        fail ArgumentError, "invalid value for 'max_number_of_execution', must be smaller than or equal to 2147483647."
      end

      if !max_number_of_execution.nil? && max_number_of_execution < 1
        fail ArgumentError, "invalid value for 'max_number_of_execution', must be greater than or equal to 1."
      end

      @max_number_of_execution = max_number_of_execution
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] execution_time Object to be assigned
    def execution_time=(execution_time)
      validator = EnumAttributeValidator.new('String', ["Once", "MultipleTimes", "Continuously"])
      unless validator.valid?(execution_time)
        fail ArgumentError, "invalid value for 'execution_time', must be one of #{validator.allowable_values}."
      end
      @execution_time = execution_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          event_condition == o.event_condition &&
          frequency_unit == o.frequency_unit &&
          frequency_of_execution == o.frequency_of_execution &&
          max_number_of_execution == o.max_number_of_execution &&
          execution_time == o.execution_time &&
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
      [id, name, event_condition, frequency_unit, frequency_of_execution, max_number_of_execution, execution_time, _info].hash
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

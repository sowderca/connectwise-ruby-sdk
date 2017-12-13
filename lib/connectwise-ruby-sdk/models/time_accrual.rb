
require 'date'

module ConnectWise

  class TimeAccrual
    attr_accessor :id

    attr_accessor :location

    # if vacationFlag is set to false, system will clear out or ingore the values of vacationAvailableType, vacationCarryoverAllowedFlag, vacationCarryoverLimit
    attr_accessor :vacation_flag

    attr_accessor :vacation_available_type

    attr_accessor :vacation_carryover_allowed_flag

    attr_accessor :vacation_carryover_limit

    # if sickFlag is set to false, system will clear out or ignore the values of sickAvailableType, sickCarryoverAllowedFlag, sickCarryoverLimit
    attr_accessor :sick_flag

    attr_accessor :sick_available_type

    attr_accessor :sick_carryover_allowed_flag

    attr_accessor :sick_carryover_limit

    # if ptoFlag is set to false, system will clear out or ignore the values of ptoAvailableType, ptoCarryoverAllowedFlag, ptoCarryoverLimit
    attr_accessor :pto_flag

    attr_accessor :pto_available_type

    attr_accessor :pto_carryover_allowed_flag

    attr_accessor :pto_carryover_limit

    # if holidayFlag is set to false, system will clear out or ignore the values of holidayAvailableType, holidayCarryoverAllowedFlag, holidayCarryoverLimit
    attr_accessor :holiday_flag

    attr_accessor :holiday_available_type

    attr_accessor :holiday_carryover_allowed_flag

    attr_accessor :holiday_carryover_limit

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
        :'location' => :'location',
        :'vacation_flag' => :'vacationFlag',
        :'vacation_available_type' => :'vacationAvailableType',
        :'vacation_carryover_allowed_flag' => :'vacationCarryoverAllowedFlag',
        :'vacation_carryover_limit' => :'vacationCarryoverLimit',
        :'sick_flag' => :'sickFlag',
        :'sick_available_type' => :'sickAvailableType',
        :'sick_carryover_allowed_flag' => :'sickCarryoverAllowedFlag',
        :'sick_carryover_limit' => :'sickCarryoverLimit',
        :'pto_flag' => :'ptoFlag',
        :'pto_available_type' => :'ptoAvailableType',
        :'pto_carryover_allowed_flag' => :'ptoCarryoverAllowedFlag',
        :'pto_carryover_limit' => :'ptoCarryoverLimit',
        :'holiday_flag' => :'holidayFlag',
        :'holiday_available_type' => :'holidayAvailableType',
        :'holiday_carryover_allowed_flag' => :'holidayCarryoverAllowedFlag',
        :'holiday_carryover_limit' => :'holidayCarryoverLimit',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'location' => :'SystemLocationReference',
        :'vacation_flag' => :'BOOLEAN',
        :'vacation_available_type' => :'String',
        :'vacation_carryover_allowed_flag' => :'BOOLEAN',
        :'vacation_carryover_limit' => :'Float',
        :'sick_flag' => :'BOOLEAN',
        :'sick_available_type' => :'String',
        :'sick_carryover_allowed_flag' => :'BOOLEAN',
        :'sick_carryover_limit' => :'Float',
        :'pto_flag' => :'BOOLEAN',
        :'pto_available_type' => :'String',
        :'pto_carryover_allowed_flag' => :'BOOLEAN',
        :'pto_carryover_limit' => :'Float',
        :'holiday_flag' => :'BOOLEAN',
        :'holiday_available_type' => :'String',
        :'holiday_carryover_allowed_flag' => :'BOOLEAN',
        :'holiday_carryover_limit' => :'Float',
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

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'vacationFlag')
        self.vacation_flag = attributes[:'vacationFlag']
      end

      if attributes.has_key?(:'vacationAvailableType')
        self.vacation_available_type = attributes[:'vacationAvailableType']
      end

      if attributes.has_key?(:'vacationCarryoverAllowedFlag')
        self.vacation_carryover_allowed_flag = attributes[:'vacationCarryoverAllowedFlag']
      end

      if attributes.has_key?(:'vacationCarryoverLimit')
        self.vacation_carryover_limit = attributes[:'vacationCarryoverLimit']
      end

      if attributes.has_key?(:'sickFlag')
        self.sick_flag = attributes[:'sickFlag']
      end

      if attributes.has_key?(:'sickAvailableType')
        self.sick_available_type = attributes[:'sickAvailableType']
      end

      if attributes.has_key?(:'sickCarryoverAllowedFlag')
        self.sick_carryover_allowed_flag = attributes[:'sickCarryoverAllowedFlag']
      end

      if attributes.has_key?(:'sickCarryoverLimit')
        self.sick_carryover_limit = attributes[:'sickCarryoverLimit']
      end

      if attributes.has_key?(:'ptoFlag')
        self.pto_flag = attributes[:'ptoFlag']
      end

      if attributes.has_key?(:'ptoAvailableType')
        self.pto_available_type = attributes[:'ptoAvailableType']
      end

      if attributes.has_key?(:'ptoCarryoverAllowedFlag')
        self.pto_carryover_allowed_flag = attributes[:'ptoCarryoverAllowedFlag']
      end

      if attributes.has_key?(:'ptoCarryoverLimit')
        self.pto_carryover_limit = attributes[:'ptoCarryoverLimit']
      end

      if attributes.has_key?(:'holidayFlag')
        self.holiday_flag = attributes[:'holidayFlag']
      end

      if attributes.has_key?(:'holidayAvailableType')
        self.holiday_available_type = attributes[:'holidayAvailableType']
      end

      if attributes.has_key?(:'holidayCarryoverAllowedFlag')
        self.holiday_carryover_allowed_flag = attributes[:'holidayCarryoverAllowedFlag']
      end

      if attributes.has_key?(:'holidayCarryoverLimit')
        self.holiday_carryover_limit = attributes[:'holidayCarryoverLimit']
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
      vacation_available_type_validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      return false unless vacation_available_type_validator.valid?(@vacation_available_type)
      sick_available_type_validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      return false unless sick_available_type_validator.valid?(@sick_available_type)
      pto_available_type_validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      return false unless pto_available_type_validator.valid?(@pto_available_type)
      holiday_available_type_validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      return false unless holiday_available_type_validator.valid?(@holiday_available_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vacation_available_type Object to be assigned
    def vacation_available_type=(vacation_available_type)
      validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      unless validator.valid?(vacation_available_type)
        fail ArgumentError, "invalid value for 'vacation_available_type', must be one of #{validator.allowable_values}."
      end
      @vacation_available_type = vacation_available_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sick_available_type Object to be assigned
    def sick_available_type=(sick_available_type)
      validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      unless validator.valid?(sick_available_type)
        fail ArgumentError, "invalid value for 'sick_available_type', must be one of #{validator.allowable_values}."
      end
      @sick_available_type = sick_available_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pto_available_type Object to be assigned
    def pto_available_type=(pto_available_type)
      validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      unless validator.valid?(pto_available_type)
        fail ArgumentError, "invalid value for 'pto_available_type', must be one of #{validator.allowable_values}."
      end
      @pto_available_type = pto_available_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] holiday_available_type Object to be assigned
    def holiday_available_type=(holiday_available_type)
      validator = EnumAttributeValidator.new('String', ["AnniversaryYear", "CalendarYear"])
      unless validator.valid?(holiday_available_type)
        fail ArgumentError, "invalid value for 'holiday_available_type', must be one of #{validator.allowable_values}."
      end
      @holiday_available_type = holiday_available_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          location == o.location &&
          vacation_flag == o.vacation_flag &&
          vacation_available_type == o.vacation_available_type &&
          vacation_carryover_allowed_flag == o.vacation_carryover_allowed_flag &&
          vacation_carryover_limit == o.vacation_carryover_limit &&
          sick_flag == o.sick_flag &&
          sick_available_type == o.sick_available_type &&
          sick_carryover_allowed_flag == o.sick_carryover_allowed_flag &&
          sick_carryover_limit == o.sick_carryover_limit &&
          pto_flag == o.pto_flag &&
          pto_available_type == o.pto_available_type &&
          pto_carryover_allowed_flag == o.pto_carryover_allowed_flag &&
          pto_carryover_limit == o.pto_carryover_limit &&
          holiday_flag == o.holiday_flag &&
          holiday_available_type == o.holiday_available_type &&
          holiday_carryover_allowed_flag == o.holiday_carryover_allowed_flag &&
          holiday_carryover_limit == o.holiday_carryover_limit &&
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
      [id, location, vacation_flag, vacation_available_type, vacation_carryover_allowed_flag, vacation_carryover_limit, sick_flag, sick_available_type, sick_carryover_allowed_flag, sick_carryover_limit, pto_flag, pto_available_type, pto_carryover_allowed_flag, pto_carryover_limit, holiday_flag, holiday_available_type, holiday_carryover_allowed_flag, holiday_carryover_limit, _info].hash
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

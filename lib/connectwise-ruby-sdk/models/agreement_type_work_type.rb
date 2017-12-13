
require 'date'

module ConnectWise

  class AgreementTypeWorkType
    attr_accessor :id

    attr_accessor :type

    attr_accessor :work_type

    attr_accessor :effective_date

    attr_accessor :ending_date

    attr_accessor :rate

    attr_accessor :rate_type

    attr_accessor :bill_time

    attr_accessor :hours_min

    attr_accessor :hours_max

    attr_accessor :round_bill_hours

    attr_accessor :overage_rate

    attr_accessor :overage_rate_type

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
        :'type' => :'type',
        :'work_type' => :'workType',
        :'effective_date' => :'effectiveDate',
        :'ending_date' => :'endingDate',
        :'rate' => :'rate',
        :'rate_type' => :'rateType',
        :'bill_time' => :'billTime',
        :'hours_min' => :'hoursMin',
        :'hours_max' => :'hoursMax',
        :'round_bill_hours' => :'roundBillHours',
        :'overage_rate' => :'overageRate',
        :'overage_rate_type' => :'overageRateType',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'AgreementTypeReference',
        :'work_type' => :'WorkTypeReference',
        :'effective_date' => :'DateTime',
        :'ending_date' => :'DateTime',
        :'rate' => :'Float',
        :'rate_type' => :'String',
        :'bill_time' => :'String',
        :'hours_min' => :'Float',
        :'hours_max' => :'Float',
        :'round_bill_hours' => :'Float',
        :'overage_rate' => :'Float',
        :'overage_rate_type' => :'String',
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

      if attributes.has_key?(:'effectiveDate')
        self.effective_date = attributes[:'effectiveDate']
      end

      if attributes.has_key?(:'endingDate')
        self.ending_date = attributes[:'endingDate']
      end

      if attributes.has_key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.has_key?(:'rateType')
        self.rate_type = attributes[:'rateType']
      end

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'hoursMin')
        self.hours_min = attributes[:'hoursMin']
      end

      if attributes.has_key?(:'hoursMax')
        self.hours_max = attributes[:'hoursMax']
      end

      if attributes.has_key?(:'roundBillHours')
        self.round_bill_hours = attributes[:'roundBillHours']
      end

      if attributes.has_key?(:'overageRate')
        self.overage_rate = attributes[:'overageRate']
      end

      if attributes.has_key?(:'overageRateType')
        self.overage_rate_type = attributes[:'overageRateType']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rate_type.nil?
        invalid_properties.push("invalid value for 'rate_type', rate_type cannot be nil.")
      end

      if @bill_time.nil?
        invalid_properties.push("invalid value for 'bill_time', bill_time cannot be nil.")
      end

      if @overage_rate_type.nil?
        invalid_properties.push("invalid value for 'overage_rate_type', overage_rate_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rate_type.nil?
      rate_type_validator = EnumAttributeValidator.new('String', ["AdjAmount", "Custom", "Multiplier"])
      return false unless rate_type_validator.valid?(@rate_type)
      return false if @bill_time.nil?
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless bill_time_validator.valid?(@bill_time)
      return false if @overage_rate_type.nil?
      overage_rate_type_validator = EnumAttributeValidator.new('String', ["AdjAmount", "Custom", "Multiplier"])
      return false unless overage_rate_type_validator.valid?(@overage_rate_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rate_type Object to be assigned
    def rate_type=(rate_type)
      validator = EnumAttributeValidator.new('String', ["AdjAmount", "Custom", "Multiplier"])
      unless validator.valid?(rate_type)
        fail ArgumentError, "invalid value for 'rate_type', must be one of #{validator.allowable_values}."
      end
      @rate_type = rate_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] overage_rate_type Object to be assigned
    def overage_rate_type=(overage_rate_type)
      validator = EnumAttributeValidator.new('String', ["AdjAmount", "Custom", "Multiplier"])
      unless validator.valid?(overage_rate_type)
        fail ArgumentError, "invalid value for 'overage_rate_type', must be one of #{validator.allowable_values}."
      end
      @overage_rate_type = overage_rate_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          work_type == o.work_type &&
          effective_date == o.effective_date &&
          ending_date == o.ending_date &&
          rate == o.rate &&
          rate_type == o.rate_type &&
          bill_time == o.bill_time &&
          hours_min == o.hours_min &&
          hours_max == o.hours_max &&
          round_bill_hours == o.round_bill_hours &&
          overage_rate == o.overage_rate &&
          overage_rate_type == o.overage_rate_type &&
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
      [id, type, work_type, effective_date, ending_date, rate, rate_type, bill_time, hours_min, hours_max, round_bill_hours, overage_rate, overage_rate_type, _info].hash
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

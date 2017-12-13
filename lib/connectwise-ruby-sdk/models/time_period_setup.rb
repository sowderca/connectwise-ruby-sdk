
require 'date'

module ConnectWise

  class TimePeriodSetup
    attr_accessor :id

    attr_accessor :period_apply_to

    attr_accessor :year

    attr_accessor :number_future_periods

    attr_accessor :type

    attr_accessor :description

    attr_accessor :first_period_end_date

    # Only needed when type is monthly
    attr_accessor :monthly_period_ends

    # Only needed when type is semi-monthly
    attr_accessor :semi_monthly_first_period

    # Only needed when type is semi-monthly
    attr_accessor :semi_monthly_second_period

    attr_accessor :semi_monthly_last_day_flag

    # Only needed when type is monthly
    attr_accessor :last_day_flag

    attr_accessor :days_past_end_date

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
        :'period_apply_to' => :'periodApplyTo',
        :'year' => :'year',
        :'number_future_periods' => :'numberFuturePeriods',
        :'type' => :'type',
        :'description' => :'description',
        :'first_period_end_date' => :'firstPeriodEndDate',
        :'monthly_period_ends' => :'monthlyPeriodEnds',
        :'semi_monthly_first_period' => :'semiMonthlyFirstPeriod',
        :'semi_monthly_second_period' => :'semiMonthlySecondPeriod',
        :'semi_monthly_last_day_flag' => :'semiMonthlyLastDayFlag',
        :'last_day_flag' => :'lastDayFlag',
        :'days_past_end_date' => :'daysPastEndDate',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'period_apply_to' => :'String',
        :'year' => :'Integer',
        :'number_future_periods' => :'Integer',
        :'type' => :'String',
        :'description' => :'String',
        :'first_period_end_date' => :'String',
        :'monthly_period_ends' => :'Integer',
        :'semi_monthly_first_period' => :'Integer',
        :'semi_monthly_second_period' => :'Integer',
        :'semi_monthly_last_day_flag' => :'BOOLEAN',
        :'last_day_flag' => :'BOOLEAN',
        :'days_past_end_date' => :'Integer',
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

      if attributes.has_key?(:'periodApplyTo')
        self.period_apply_to = attributes[:'periodApplyTo']
      end

      if attributes.has_key?(:'year')
        self.year = attributes[:'year']
      end

      if attributes.has_key?(:'numberFuturePeriods')
        self.number_future_periods = attributes[:'numberFuturePeriods']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'firstPeriodEndDate')
        self.first_period_end_date = attributes[:'firstPeriodEndDate']
      end

      if attributes.has_key?(:'monthlyPeriodEnds')
        self.monthly_period_ends = attributes[:'monthlyPeriodEnds']
      end

      if attributes.has_key?(:'semiMonthlyFirstPeriod')
        self.semi_monthly_first_period = attributes[:'semiMonthlyFirstPeriod']
      end

      if attributes.has_key?(:'semiMonthlySecondPeriod')
        self.semi_monthly_second_period = attributes[:'semiMonthlySecondPeriod']
      end

      if attributes.has_key?(:'semiMonthlyLastDayFlag')
        self.semi_monthly_last_day_flag = attributes[:'semiMonthlyLastDayFlag']
      end

      if attributes.has_key?(:'lastDayFlag')
        self.last_day_flag = attributes[:'lastDayFlag']
      end

      if attributes.has_key?(:'daysPastEndDate')
        self.days_past_end_date = attributes[:'daysPastEndDate']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @period_apply_to.nil?
        invalid_properties.push("invalid value for 'period_apply_to', period_apply_to cannot be nil.")
      end

      if @year.nil?
        invalid_properties.push("invalid value for 'year', year cannot be nil.")
      end

      if @number_future_periods.nil?
        invalid_properties.push("invalid value for 'number_future_periods', number_future_periods cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if !@description.nil? && @description.to_s.length > 100
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 100.")
      end

      if @first_period_end_date.nil?
        invalid_properties.push("invalid value for 'first_period_end_date', first_period_end_date cannot be nil.")
      end

      if @days_past_end_date.nil?
        invalid_properties.push("invalid value for 'days_past_end_date', days_past_end_date cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @period_apply_to.nil?
      period_apply_to_validator = EnumAttributeValidator.new('String', ["Time", "Expense", "Both"])
      return false unless period_apply_to_validator.valid?(@period_apply_to)
      return false if @year.nil?
      return false if @number_future_periods.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Weekly", "BiWeekly", "SemiMonthly", "Monthly"])
      return false unless type_validator.valid?(@type)
      return false if !@description.nil? && @description.to_s.length > 100
      return false if @first_period_end_date.nil?
      return false if @days_past_end_date.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period_apply_to Object to be assigned
    def period_apply_to=(period_apply_to)
      validator = EnumAttributeValidator.new('String', ["Time", "Expense", "Both"])
      unless validator.valid?(period_apply_to)
        fail ArgumentError, "invalid value for 'period_apply_to', must be one of #{validator.allowable_values}."
      end
      @period_apply_to = period_apply_to
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Weekly", "BiWeekly", "SemiMonthly", "Monthly"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 100
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 100."
      end

      @description = description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          period_apply_to == o.period_apply_to &&
          year == o.year &&
          number_future_periods == o.number_future_periods &&
          type == o.type &&
          description == o.description &&
          first_period_end_date == o.first_period_end_date &&
          monthly_period_ends == o.monthly_period_ends &&
          semi_monthly_first_period == o.semi_monthly_first_period &&
          semi_monthly_second_period == o.semi_monthly_second_period &&
          semi_monthly_last_day_flag == o.semi_monthly_last_day_flag &&
          last_day_flag == o.last_day_flag &&
          days_past_end_date == o.days_past_end_date &&
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
      [id, period_apply_to, year, number_future_periods, type, description, first_period_end_date, monthly_period_ends, semi_monthly_first_period, semi_monthly_second_period, semi_monthly_last_day_flag, last_day_flag, days_past_end_date, _info].hash
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

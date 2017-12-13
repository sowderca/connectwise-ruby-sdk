
require 'date'

module ConnectWise

  class WorkType
    attr_accessor :id

    attr_accessor :name

    attr_accessor :bill_time

    attr_accessor :rate_type

    attr_accessor :rate

    attr_accessor :hours_min

    attr_accessor :hours_max

    attr_accessor :round_bill_hours_to

    attr_accessor :external_integration_x_ref

    attr_accessor :accrual_type

    attr_accessor :inactive_flag

    attr_accessor :overall_default_flag

    attr_accessor :activity_default_flag

    attr_accessor :utilization_flag

    attr_accessor :cost_multiplier

    attr_accessor :integration_x_ref

    # Used only on create to add the work type to all agreement and agreement type exclusion lists
    attr_accessor :add_all_agreement_exclusions

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
        :'bill_time' => :'billTime',
        :'rate_type' => :'rateType',
        :'rate' => :'rate',
        :'hours_min' => :'hoursMin',
        :'hours_max' => :'hoursMax',
        :'round_bill_hours_to' => :'roundBillHoursTo',
        :'external_integration_x_ref' => :'externalIntegrationXRef',
        :'accrual_type' => :'accrualType',
        :'inactive_flag' => :'inactiveFlag',
        :'overall_default_flag' => :'overallDefaultFlag',
        :'activity_default_flag' => :'activityDefaultFlag',
        :'utilization_flag' => :'utilizationFlag',
        :'cost_multiplier' => :'costMultiplier',
        :'integration_x_ref' => :'integrationXRef',
        :'add_all_agreement_exclusions' => :'addAllAgreementExclusions',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'bill_time' => :'String',
        :'rate_type' => :'String',
        :'rate' => :'Float',
        :'hours_min' => :'Float',
        :'hours_max' => :'Float',
        :'round_bill_hours_to' => :'Float',
        :'external_integration_x_ref' => :'ExternalWorkTypeIntegrationReference',
        :'accrual_type' => :'String',
        :'inactive_flag' => :'BOOLEAN',
        :'overall_default_flag' => :'BOOLEAN',
        :'activity_default_flag' => :'BOOLEAN',
        :'utilization_flag' => :'BOOLEAN',
        :'cost_multiplier' => :'Float',
        :'integration_x_ref' => :'String',
        :'add_all_agreement_exclusions' => :'BOOLEAN',
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

      if attributes.has_key?(:'billTime')
        self.bill_time = attributes[:'billTime']
      end

      if attributes.has_key?(:'rateType')
        self.rate_type = attributes[:'rateType']
      end

      if attributes.has_key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.has_key?(:'hoursMin')
        self.hours_min = attributes[:'hoursMin']
      end

      if attributes.has_key?(:'hoursMax')
        self.hours_max = attributes[:'hoursMax']
      end

      if attributes.has_key?(:'roundBillHoursTo')
        self.round_bill_hours_to = attributes[:'roundBillHoursTo']
      end

      if attributes.has_key?(:'externalIntegrationXRef')
        self.external_integration_x_ref = attributes[:'externalIntegrationXRef']
      end

      if attributes.has_key?(:'accrualType')
        self.accrual_type = attributes[:'accrualType']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'overallDefaultFlag')
        self.overall_default_flag = attributes[:'overallDefaultFlag']
      end

      if attributes.has_key?(:'activityDefaultFlag')
        self.activity_default_flag = attributes[:'activityDefaultFlag']
      end

      if attributes.has_key?(:'utilizationFlag')
        self.utilization_flag = attributes[:'utilizationFlag']
      end

      if attributes.has_key?(:'costMultiplier')
        self.cost_multiplier = attributes[:'costMultiplier']
      end

      if attributes.has_key?(:'integrationXRef')
        self.integration_x_ref = attributes[:'integrationXRef']
      end

      if attributes.has_key?(:'addAllAgreementExclusions')
        self.add_all_agreement_exclusions = attributes[:'addAllAgreementExclusions']
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

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if @bill_time.nil?
        invalid_properties.push("invalid value for 'bill_time', bill_time cannot be nil.")
      end

      if @rate_type.nil?
        invalid_properties.push("invalid value for 'rate_type', rate_type cannot be nil.")
      end

      if @rate.nil?
        invalid_properties.push("invalid value for 'rate', rate cannot be nil.")
      end

      if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
        invalid_properties.push("invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @bill_time.nil?
      bill_time_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      return false unless bill_time_validator.valid?(@bill_time)
      return false if @rate_type.nil?
      rate_type_validator = EnumAttributeValidator.new('String', ["AdjAmount", "Custom", "Multiplier"])
      return false unless rate_type_validator.valid?(@rate_type)
      return false if @rate.nil?
      accrual_type_validator = EnumAttributeValidator.new('String', ["Holiday", "PTO", "Sick", "Vacation"])
      return false unless accrual_type_validator.valid?(@accrual_type)
      return false if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_time Object to be assigned
    def bill_time=(bill_time)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      unless validator.valid?(bill_time)
        fail ArgumentError, "invalid value for 'bill_time', must be one of #{validator.allowable_values}."
      end
      @bill_time = bill_time
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
    # @param [Object] accrual_type Object to be assigned
    def accrual_type=(accrual_type)
      validator = EnumAttributeValidator.new('String', ["Holiday", "PTO", "Sick", "Vacation"])
      unless validator.valid?(accrual_type)
        fail ArgumentError, "invalid value for 'accrual_type', must be one of #{validator.allowable_values}."
      end
      @accrual_type = accrual_type
    end

    # Custom attribute writer method with validation
    # @param [Object] integration_x_ref Value to be assigned
    def integration_x_ref=(integration_x_ref)

      if !integration_x_ref.nil? && integration_x_ref.to_s.length > 50
        fail ArgumentError, "invalid value for 'integration_x_ref', the character length must be smaller than or equal to 50."
      end

      @integration_x_ref = integration_x_ref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          bill_time == o.bill_time &&
          rate_type == o.rate_type &&
          rate == o.rate &&
          hours_min == o.hours_min &&
          hours_max == o.hours_max &&
          round_bill_hours_to == o.round_bill_hours_to &&
          external_integration_x_ref == o.external_integration_x_ref &&
          accrual_type == o.accrual_type &&
          inactive_flag == o.inactive_flag &&
          overall_default_flag == o.overall_default_flag &&
          activity_default_flag == o.activity_default_flag &&
          utilization_flag == o.utilization_flag &&
          cost_multiplier == o.cost_multiplier &&
          integration_x_ref == o.integration_x_ref &&
          add_all_agreement_exclusions == o.add_all_agreement_exclusions &&
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
      [id, name, bill_time, rate_type, rate, hours_min, hours_max, round_bill_hours_to, external_integration_x_ref, accrual_type, inactive_flag, overall_default_flag, activity_default_flag, utilization_flag, cost_multiplier, integration_x_ref, add_all_agreement_exclusions, _info].hash
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

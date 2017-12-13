
require 'date'

module ConnectWise

  class SLA
    attr_accessor :id

    attr_accessor :name

    attr_accessor :based_on

    # customCalendar is a required reference if basedOn SLA Hours Type is Custom
    attr_accessor :custom_calendar

    attr_accessor :default_flag

    attr_accessor :application_order

    attr_accessor :hi_impact_hi_urgency

    attr_accessor :hi_impact_med_urgency

    attr_accessor :hi_impact_low_urgency

    attr_accessor :med_impact_hi_urgency

    attr_accessor :med_impact_med_urgency

    attr_accessor :med_impact_low_urgency

    attr_accessor :low_impact_hi_urgency

    attr_accessor :low_impact_med_urgency

    attr_accessor :low_impact_low_urgency

    attr_accessor :respond_hours

    attr_accessor :respond_percent

    attr_accessor :plan_within

    attr_accessor :plan_within_percent

    attr_accessor :resolution_hours

    attr_accessor :resolution_percent

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
        :'based_on' => :'basedOn',
        :'custom_calendar' => :'customCalendar',
        :'default_flag' => :'defaultFlag',
        :'application_order' => :'applicationOrder',
        :'hi_impact_hi_urgency' => :'hiImpactHiUrgency',
        :'hi_impact_med_urgency' => :'hiImpactMedUrgency',
        :'hi_impact_low_urgency' => :'hiImpactLowUrgency',
        :'med_impact_hi_urgency' => :'medImpactHiUrgency',
        :'med_impact_med_urgency' => :'medImpactMedUrgency',
        :'med_impact_low_urgency' => :'medImpactLowUrgency',
        :'low_impact_hi_urgency' => :'lowImpactHiUrgency',
        :'low_impact_med_urgency' => :'lowImpactMedUrgency',
        :'low_impact_low_urgency' => :'lowImpactLowUrgency',
        :'respond_hours' => :'respondHours',
        :'respond_percent' => :'respondPercent',
        :'plan_within' => :'planWithin',
        :'plan_within_percent' => :'planWithinPercent',
        :'resolution_hours' => :'resolutionHours',
        :'resolution_percent' => :'resolutionPercent',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'based_on' => :'String',
        :'custom_calendar' => :'CalendarReference',
        :'default_flag' => :'BOOLEAN',
        :'application_order' => :'Integer',
        :'hi_impact_hi_urgency' => :'PriorityReference',
        :'hi_impact_med_urgency' => :'PriorityReference',
        :'hi_impact_low_urgency' => :'PriorityReference',
        :'med_impact_hi_urgency' => :'PriorityReference',
        :'med_impact_med_urgency' => :'PriorityReference',
        :'med_impact_low_urgency' => :'PriorityReference',
        :'low_impact_hi_urgency' => :'PriorityReference',
        :'low_impact_med_urgency' => :'PriorityReference',
        :'low_impact_low_urgency' => :'PriorityReference',
        :'respond_hours' => :'Float',
        :'respond_percent' => :'Integer',
        :'plan_within' => :'Float',
        :'plan_within_percent' => :'Integer',
        :'resolution_hours' => :'Float',
        :'resolution_percent' => :'Integer',
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

      if attributes.has_key?(:'basedOn')
        self.based_on = attributes[:'basedOn']
      end

      if attributes.has_key?(:'customCalendar')
        self.custom_calendar = attributes[:'customCalendar']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'applicationOrder')
        self.application_order = attributes[:'applicationOrder']
      end

      if attributes.has_key?(:'hiImpactHiUrgency')
        self.hi_impact_hi_urgency = attributes[:'hiImpactHiUrgency']
      end

      if attributes.has_key?(:'hiImpactMedUrgency')
        self.hi_impact_med_urgency = attributes[:'hiImpactMedUrgency']
      end

      if attributes.has_key?(:'hiImpactLowUrgency')
        self.hi_impact_low_urgency = attributes[:'hiImpactLowUrgency']
      end

      if attributes.has_key?(:'medImpactHiUrgency')
        self.med_impact_hi_urgency = attributes[:'medImpactHiUrgency']
      end

      if attributes.has_key?(:'medImpactMedUrgency')
        self.med_impact_med_urgency = attributes[:'medImpactMedUrgency']
      end

      if attributes.has_key?(:'medImpactLowUrgency')
        self.med_impact_low_urgency = attributes[:'medImpactLowUrgency']
      end

      if attributes.has_key?(:'lowImpactHiUrgency')
        self.low_impact_hi_urgency = attributes[:'lowImpactHiUrgency']
      end

      if attributes.has_key?(:'lowImpactMedUrgency')
        self.low_impact_med_urgency = attributes[:'lowImpactMedUrgency']
      end

      if attributes.has_key?(:'lowImpactLowUrgency')
        self.low_impact_low_urgency = attributes[:'lowImpactLowUrgency']
      end

      if attributes.has_key?(:'respondHours')
        self.respond_hours = attributes[:'respondHours']
      end

      if attributes.has_key?(:'respondPercent')
        self.respond_percent = attributes[:'respondPercent']
      end

      if attributes.has_key?(:'planWithin')
        self.plan_within = attributes[:'planWithin']
      end

      if attributes.has_key?(:'planWithinPercent')
        self.plan_within_percent = attributes[:'planWithinPercent']
      end

      if attributes.has_key?(:'resolutionHours')
        self.resolution_hours = attributes[:'resolutionHours']
      end

      if attributes.has_key?(:'resolutionPercent')
        self.resolution_percent = attributes[:'resolutionPercent']
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

      if @name.to_s.length > 25
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 25.")
      end

      if @based_on.nil?
        invalid_properties.push("invalid value for 'based_on', based_on cannot be nil.")
      end

      if !@application_order.nil? && @application_order > 32767
        invalid_properties.push("invalid value for 'application_order', must be smaller than or equal to 32767.")
      end

      if !@application_order.nil? && @application_order < 1
        invalid_properties.push("invalid value for 'application_order', must be greater than or equal to 1.")
      end

      if !@respond_hours.nil? && @respond_hours > 999
        invalid_properties.push("invalid value for 'respond_hours', must be smaller than or equal to 999.")
      end

      if !@respond_hours.nil? && @respond_hours < 0
        invalid_properties.push("invalid value for 'respond_hours', must be greater than or equal to 0.")
      end

      if !@respond_percent.nil? && @respond_percent > 99999
        invalid_properties.push("invalid value for 'respond_percent', must be smaller than or equal to 99999.")
      end

      if !@respond_percent.nil? && @respond_percent < 0
        invalid_properties.push("invalid value for 'respond_percent', must be greater than or equal to 0.")
      end

      if !@plan_within.nil? && @plan_within > 999
        invalid_properties.push("invalid value for 'plan_within', must be smaller than or equal to 999.")
      end

      if !@plan_within.nil? && @plan_within < 0
        invalid_properties.push("invalid value for 'plan_within', must be greater than or equal to 0.")
      end

      if !@plan_within_percent.nil? && @plan_within_percent > 99999
        invalid_properties.push("invalid value for 'plan_within_percent', must be smaller than or equal to 99999.")
      end

      if !@plan_within_percent.nil? && @plan_within_percent < 0
        invalid_properties.push("invalid value for 'plan_within_percent', must be greater than or equal to 0.")
      end

      if !@resolution_hours.nil? && @resolution_hours > 999
        invalid_properties.push("invalid value for 'resolution_hours', must be smaller than or equal to 999.")
      end

      if !@resolution_hours.nil? && @resolution_hours < 0
        invalid_properties.push("invalid value for 'resolution_hours', must be greater than or equal to 0.")
      end

      if !@resolution_percent.nil? && @resolution_percent > 99999
        invalid_properties.push("invalid value for 'resolution_percent', must be smaller than or equal to 99999.")
      end

      if !@resolution_percent.nil? && @resolution_percent < 0
        invalid_properties.push("invalid value for 'resolution_percent', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 25
      return false if @based_on.nil?
      based_on_validator = EnumAttributeValidator.new('String', ["MyCalendar", "Customer", "AllHours", "Custom"])
      return false unless based_on_validator.valid?(@based_on)
      return false if !@application_order.nil? && @application_order > 32767
      return false if !@application_order.nil? && @application_order < 1
      return false if !@respond_hours.nil? && @respond_hours > 999
      return false if !@respond_hours.nil? && @respond_hours < 0
      return false if !@respond_percent.nil? && @respond_percent > 99999
      return false if !@respond_percent.nil? && @respond_percent < 0
      return false if !@plan_within.nil? && @plan_within > 999
      return false if !@plan_within.nil? && @plan_within < 0
      return false if !@plan_within_percent.nil? && @plan_within_percent > 99999
      return false if !@plan_within_percent.nil? && @plan_within_percent < 0
      return false if !@resolution_hours.nil? && @resolution_hours > 999
      return false if !@resolution_hours.nil? && @resolution_hours < 0
      return false if !@resolution_percent.nil? && @resolution_percent > 99999
      return false if !@resolution_percent.nil? && @resolution_percent < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 25
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 25."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] based_on Object to be assigned
    def based_on=(based_on)
      validator = EnumAttributeValidator.new('String', ["MyCalendar", "Customer", "AllHours", "Custom"])
      unless validator.valid?(based_on)
        fail ArgumentError, "invalid value for 'based_on', must be one of #{validator.allowable_values}."
      end
      @based_on = based_on
    end

    # Custom attribute writer method with validation
    # @param [Object] application_order Value to be assigned
    def application_order=(application_order)

      if !application_order.nil? && application_order > 32767
        fail ArgumentError, "invalid value for 'application_order', must be smaller than or equal to 32767."
      end

      if !application_order.nil? && application_order < 1
        fail ArgumentError, "invalid value for 'application_order', must be greater than or equal to 1."
      end

      @application_order = application_order
    end

    # Custom attribute writer method with validation
    # @param [Object] respond_hours Value to be assigned
    def respond_hours=(respond_hours)

      if !respond_hours.nil? && respond_hours > 999
        fail ArgumentError, "invalid value for 'respond_hours', must be smaller than or equal to 999."
      end

      if !respond_hours.nil? && respond_hours < 0
        fail ArgumentError, "invalid value for 'respond_hours', must be greater than or equal to 0."
      end

      @respond_hours = respond_hours
    end

    # Custom attribute writer method with validation
    # @param [Object] respond_percent Value to be assigned
    def respond_percent=(respond_percent)

      if !respond_percent.nil? && respond_percent > 99999
        fail ArgumentError, "invalid value for 'respond_percent', must be smaller than or equal to 99999."
      end

      if !respond_percent.nil? && respond_percent < 0
        fail ArgumentError, "invalid value for 'respond_percent', must be greater than or equal to 0."
      end

      @respond_percent = respond_percent
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_within Value to be assigned
    def plan_within=(plan_within)

      if !plan_within.nil? && plan_within > 999
        fail ArgumentError, "invalid value for 'plan_within', must be smaller than or equal to 999."
      end

      if !plan_within.nil? && plan_within < 0
        fail ArgumentError, "invalid value for 'plan_within', must be greater than or equal to 0."
      end

      @plan_within = plan_within
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_within_percent Value to be assigned
    def plan_within_percent=(plan_within_percent)

      if !plan_within_percent.nil? && plan_within_percent > 99999
        fail ArgumentError, "invalid value for 'plan_within_percent', must be smaller than or equal to 99999."
      end

      if !plan_within_percent.nil? && plan_within_percent < 0
        fail ArgumentError, "invalid value for 'plan_within_percent', must be greater than or equal to 0."
      end

      @plan_within_percent = plan_within_percent
    end

    # Custom attribute writer method with validation
    # @param [Object] resolution_hours Value to be assigned
    def resolution_hours=(resolution_hours)

      if !resolution_hours.nil? && resolution_hours > 999
        fail ArgumentError, "invalid value for 'resolution_hours', must be smaller than or equal to 999."
      end

      if !resolution_hours.nil? && resolution_hours < 0
        fail ArgumentError, "invalid value for 'resolution_hours', must be greater than or equal to 0."
      end

      @resolution_hours = resolution_hours
    end

    # Custom attribute writer method with validation
    # @param [Object] resolution_percent Value to be assigned
    def resolution_percent=(resolution_percent)

      if !resolution_percent.nil? && resolution_percent > 99999
        fail ArgumentError, "invalid value for 'resolution_percent', must be smaller than or equal to 99999."
      end

      if !resolution_percent.nil? && resolution_percent < 0
        fail ArgumentError, "invalid value for 'resolution_percent', must be greater than or equal to 0."
      end

      @resolution_percent = resolution_percent
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          based_on == o.based_on &&
          custom_calendar == o.custom_calendar &&
          default_flag == o.default_flag &&
          application_order == o.application_order &&
          hi_impact_hi_urgency == o.hi_impact_hi_urgency &&
          hi_impact_med_urgency == o.hi_impact_med_urgency &&
          hi_impact_low_urgency == o.hi_impact_low_urgency &&
          med_impact_hi_urgency == o.med_impact_hi_urgency &&
          med_impact_med_urgency == o.med_impact_med_urgency &&
          med_impact_low_urgency == o.med_impact_low_urgency &&
          low_impact_hi_urgency == o.low_impact_hi_urgency &&
          low_impact_med_urgency == o.low_impact_med_urgency &&
          low_impact_low_urgency == o.low_impact_low_urgency &&
          respond_hours == o.respond_hours &&
          respond_percent == o.respond_percent &&
          plan_within == o.plan_within &&
          plan_within_percent == o.plan_within_percent &&
          resolution_hours == o.resolution_hours &&
          resolution_percent == o.resolution_percent &&
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
      [id, name, based_on, custom_calendar, default_flag, application_order, hi_impact_hi_urgency, hi_impact_med_urgency, hi_impact_low_urgency, med_impact_hi_urgency, med_impact_med_urgency, med_impact_low_urgency, low_impact_hi_urgency, low_impact_med_urgency, low_impact_low_urgency, respond_hours, respond_percent, plan_within, plan_within_percent, resolution_hours, resolution_percent, _info].hash
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

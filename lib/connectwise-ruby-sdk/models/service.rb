
require 'date'

module ConnectWise

  class Service
    attr_accessor :id

    attr_accessor :sr_notify

    attr_accessor :schedule_span

    attr_accessor :hide_delimiter_flag

    attr_accessor :allow_cc_flag

    attr_accessor :header_color

    attr_accessor :member_color

    attr_accessor :contact_color

    attr_accessor :unknown_color

    attr_accessor :calendar_setup

    attr_accessor :header_color_disable_flag

    attr_accessor :member_color_disable_flag

    attr_accessor :contact_color_disable_flag

    attr_accessor :unknown_color_disable_flag

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
        :'sr_notify' => :'srNotify',
        :'schedule_span' => :'scheduleSpan',
        :'hide_delimiter_flag' => :'hideDelimiterFlag',
        :'allow_cc_flag' => :'allowCCFlag',
        :'header_color' => :'headerColor',
        :'member_color' => :'memberColor',
        :'contact_color' => :'contactColor',
        :'unknown_color' => :'unknownColor',
        :'calendar_setup' => :'calendarSetup',
        :'header_color_disable_flag' => :'headerColorDisableFlag',
        :'member_color_disable_flag' => :'memberColorDisableFlag',
        :'contact_color_disable_flag' => :'contactColorDisableFlag',
        :'unknown_color_disable_flag' => :'unknownColorDisableFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'sr_notify' => :'String',
        :'schedule_span' => :'String',
        :'hide_delimiter_flag' => :'BOOLEAN',
        :'allow_cc_flag' => :'BOOLEAN',
        :'header_color' => :'String',
        :'member_color' => :'String',
        :'contact_color' => :'String',
        :'unknown_color' => :'String',
        :'calendar_setup' => :'CalendarSetupReference',
        :'header_color_disable_flag' => :'BOOLEAN',
        :'member_color_disable_flag' => :'BOOLEAN',
        :'contact_color_disable_flag' => :'BOOLEAN',
        :'unknown_color_disable_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'srNotify')
        self.sr_notify = attributes[:'srNotify']
      end

      if attributes.has_key?(:'scheduleSpan')
        self.schedule_span = attributes[:'scheduleSpan']
      end

      if attributes.has_key?(:'hideDelimiterFlag')
        self.hide_delimiter_flag = attributes[:'hideDelimiterFlag']
      end

      if attributes.has_key?(:'allowCCFlag')
        self.allow_cc_flag = attributes[:'allowCCFlag']
      end

      if attributes.has_key?(:'headerColor')
        self.header_color = attributes[:'headerColor']
      end

      if attributes.has_key?(:'memberColor')
        self.member_color = attributes[:'memberColor']
      end

      if attributes.has_key?(:'contactColor')
        self.contact_color = attributes[:'contactColor']
      end

      if attributes.has_key?(:'unknownColor')
        self.unknown_color = attributes[:'unknownColor']
      end

      if attributes.has_key?(:'calendarSetup')
        self.calendar_setup = attributes[:'calendarSetup']
      end

      if attributes.has_key?(:'headerColorDisableFlag')
        self.header_color_disable_flag = attributes[:'headerColorDisableFlag']
      end

      if attributes.has_key?(:'memberColorDisableFlag')
        self.member_color_disable_flag = attributes[:'memberColorDisableFlag']
      end

      if attributes.has_key?(:'contactColorDisableFlag')
        self.contact_color_disable_flag = attributes[:'contactColorDisableFlag']
      end

      if attributes.has_key?(:'unknownColorDisableFlag')
        self.unknown_color_disable_flag = attributes[:'unknownColorDisableFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sr_notify.nil?
        invalid_properties.push("invalid value for 'sr_notify', sr_notify cannot be nil.")
      end

      if @schedule_span.nil?
        invalid_properties.push("invalid value for 'schedule_span', schedule_span cannot be nil.")
      end

      if !@header_color.nil? && @header_color.to_s.length > 50
        invalid_properties.push("invalid value for 'header_color', the character length must be smaller than or equal to 50.")
      end

      if !@member_color.nil? && @member_color.to_s.length > 50
        invalid_properties.push("invalid value for 'member_color', the character length must be smaller than or equal to 50.")
      end

      if !@contact_color.nil? && @contact_color.to_s.length > 50
        invalid_properties.push("invalid value for 'contact_color', the character length must be smaller than or equal to 50.")
      end

      if !@unknown_color.nil? && @unknown_color.to_s.length > 50
        invalid_properties.push("invalid value for 'unknown_color', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sr_notify.nil?
      sr_notify_validator = EnumAttributeValidator.new('String', ["None", "All", "NewRequestsOnly", "ClosedRequestsOnly", "NewAndClosedRequests"])
      return false unless sr_notify_validator.valid?(@sr_notify)
      return false if @schedule_span.nil?
      schedule_span_validator = EnumAttributeValidator.new('String', ["Standard", "OfficeHours", "Overnight"])
      return false unless schedule_span_validator.valid?(@schedule_span)
      return false if !@header_color.nil? && @header_color.to_s.length > 50
      return false if !@member_color.nil? && @member_color.to_s.length > 50
      return false if !@contact_color.nil? && @contact_color.to_s.length > 50
      return false if !@unknown_color.nil? && @unknown_color.to_s.length > 50
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sr_notify Object to be assigned
    def sr_notify=(sr_notify)
      validator = EnumAttributeValidator.new('String', ["None", "All", "NewRequestsOnly", "ClosedRequestsOnly", "NewAndClosedRequests"])
      unless validator.valid?(sr_notify)
        fail ArgumentError, "invalid value for 'sr_notify', must be one of #{validator.allowable_values}."
      end
      @sr_notify = sr_notify
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] schedule_span Object to be assigned
    def schedule_span=(schedule_span)
      validator = EnumAttributeValidator.new('String', ["Standard", "OfficeHours", "Overnight"])
      unless validator.valid?(schedule_span)
        fail ArgumentError, "invalid value for 'schedule_span', must be one of #{validator.allowable_values}."
      end
      @schedule_span = schedule_span
    end

    # Custom attribute writer method with validation
    # @param [Object] header_color Value to be assigned
    def header_color=(header_color)

      if !header_color.nil? && header_color.to_s.length > 50
        fail ArgumentError, "invalid value for 'header_color', the character length must be smaller than or equal to 50."
      end

      @header_color = header_color
    end

    # Custom attribute writer method with validation
    # @param [Object] member_color Value to be assigned
    def member_color=(member_color)

      if !member_color.nil? && member_color.to_s.length > 50
        fail ArgumentError, "invalid value for 'member_color', the character length must be smaller than or equal to 50."
      end

      @member_color = member_color
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_color Value to be assigned
    def contact_color=(contact_color)

      if !contact_color.nil? && contact_color.to_s.length > 50
        fail ArgumentError, "invalid value for 'contact_color', the character length must be smaller than or equal to 50."
      end

      @contact_color = contact_color
    end

    # Custom attribute writer method with validation
    # @param [Object] unknown_color Value to be assigned
    def unknown_color=(unknown_color)

      if !unknown_color.nil? && unknown_color.to_s.length > 50
        fail ArgumentError, "invalid value for 'unknown_color', the character length must be smaller than or equal to 50."
      end

      @unknown_color = unknown_color
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sr_notify == o.sr_notify &&
          schedule_span == o.schedule_span &&
          hide_delimiter_flag == o.hide_delimiter_flag &&
          allow_cc_flag == o.allow_cc_flag &&
          header_color == o.header_color &&
          member_color == o.member_color &&
          contact_color == o.contact_color &&
          unknown_color == o.unknown_color &&
          calendar_setup == o.calendar_setup &&
          header_color_disable_flag == o.header_color_disable_flag &&
          member_color_disable_flag == o.member_color_disable_flag &&
          contact_color_disable_flag == o.contact_color_disable_flag &&
          unknown_color_disable_flag == o.unknown_color_disable_flag &&
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
      [id, sr_notify, schedule_span, hide_delimiter_flag, allow_cc_flag, header_color, member_color, contact_color, unknown_color, calendar_setup, header_color_disable_flag, member_color_disable_flag, contact_color_disable_flag, unknown_color_disable_flag, _info].hash
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

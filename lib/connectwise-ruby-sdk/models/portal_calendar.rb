
require 'date'

module ConnectWise

  class PortalCalendar
    attr_accessor :id

    attr_accessor :week_start

    attr_accessor :adjust1_start

    attr_accessor :adjust1_end

    attr_accessor :adjust1_hours

    attr_accessor :adjust2_start

    attr_accessor :adjust2_end

    attr_accessor :adjust2_hours

    attr_accessor :adjust3_start

    attr_accessor :adjust3_end

    attr_accessor :adjust3_hours

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
        :'week_start' => :'weekStart',
        :'adjust1_start' => :'adjust1Start',
        :'adjust1_end' => :'adjust1End',
        :'adjust1_hours' => :'adjust1Hours',
        :'adjust2_start' => :'adjust2Start',
        :'adjust2_end' => :'adjust2End',
        :'adjust2_hours' => :'adjust2Hours',
        :'adjust3_start' => :'adjust3Start',
        :'adjust3_end' => :'adjust3End',
        :'adjust3_hours' => :'adjust3Hours',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'week_start' => :'String',
        :'adjust1_start' => :'String',
        :'adjust1_end' => :'String',
        :'adjust1_hours' => :'Float',
        :'adjust2_start' => :'String',
        :'adjust2_end' => :'String',
        :'adjust2_hours' => :'Float',
        :'adjust3_start' => :'String',
        :'adjust3_end' => :'String',
        :'adjust3_hours' => :'Float',
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

      if attributes.has_key?(:'weekStart')
        self.week_start = attributes[:'weekStart']
      end

      if attributes.has_key?(:'adjust1Start')
        self.adjust1_start = attributes[:'adjust1Start']
      end

      if attributes.has_key?(:'adjust1End')
        self.adjust1_end = attributes[:'adjust1End']
      end

      if attributes.has_key?(:'adjust1Hours')
        self.adjust1_hours = attributes[:'adjust1Hours']
      end

      if attributes.has_key?(:'adjust2Start')
        self.adjust2_start = attributes[:'adjust2Start']
      end

      if attributes.has_key?(:'adjust2End')
        self.adjust2_end = attributes[:'adjust2End']
      end

      if attributes.has_key?(:'adjust2Hours')
        self.adjust2_hours = attributes[:'adjust2Hours']
      end

      if attributes.has_key?(:'adjust3Start')
        self.adjust3_start = attributes[:'adjust3Start']
      end

      if attributes.has_key?(:'adjust3End')
        self.adjust3_end = attributes[:'adjust3End']
      end

      if attributes.has_key?(:'adjust3Hours')
        self.adjust3_hours = attributes[:'adjust3Hours']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @week_start.nil?
        invalid_properties.push("invalid value for 'week_start', week_start cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @week_start.nil?
      week_start_validator = EnumAttributeValidator.new('String', ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"])
      return false unless week_start_validator.valid?(@week_start)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] week_start Object to be assigned
    def week_start=(week_start)
      validator = EnumAttributeValidator.new('String', ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"])
      unless validator.valid?(week_start)
        fail ArgumentError, "invalid value for 'week_start', must be one of #{validator.allowable_values}."
      end
      @week_start = week_start
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          week_start == o.week_start &&
          adjust1_start == o.adjust1_start &&
          adjust1_end == o.adjust1_end &&
          adjust1_hours == o.adjust1_hours &&
          adjust2_start == o.adjust2_start &&
          adjust2_end == o.adjust2_end &&
          adjust2_hours == o.adjust2_hours &&
          adjust3_start == o.adjust3_start &&
          adjust3_end == o.adjust3_end &&
          adjust3_hours == o.adjust3_hours &&
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
      [id, week_start, adjust1_start, adjust1_end, adjust1_hours, adjust2_start, adjust2_end, adjust2_hours, adjust3_start, adjust3_end, adjust3_hours, _info].hash
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

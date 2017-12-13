
require 'date'

module ConnectWise

  class BillingSetupRouting
    attr_accessor :id

    attr_accessor :sequence_number

    attr_accessor :invoice_rule

    attr_accessor :routing_rule

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
        :'sequence_number' => :'sequenceNumber',
        :'invoice_rule' => :'invoiceRule',
        :'routing_rule' => :'routingRule',
        :'member' => :'member',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'sequence_number' => :'Integer',
        :'invoice_rule' => :'String',
        :'routing_rule' => :'String',
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

      if attributes.has_key?(:'sequenceNumber')
        self.sequence_number = attributes[:'sequenceNumber']
      end

      if attributes.has_key?(:'invoiceRule')
        self.invoice_rule = attributes[:'invoiceRule']
      end

      if attributes.has_key?(:'routingRule')
        self.routing_rule = attributes[:'routingRule']
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
      if @sequence_number.nil?
        invalid_properties.push("invalid value for 'sequence_number', sequence_number cannot be nil.")
      end

      if @sequence_number > 32767
        invalid_properties.push("invalid value for 'sequence_number', must be smaller than or equal to 32767.")
      end

      if @sequence_number < -32768
        invalid_properties.push("invalid value for 'sequence_number', must be greater than or equal to -32768.")
      end

      if @invoice_rule.nil?
        invalid_properties.push("invalid value for 'invoice_rule', invoice_rule cannot be nil.")
      end

      if @routing_rule.nil?
        invalid_properties.push("invalid value for 'routing_rule', routing_rule cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sequence_number.nil?
      return false if @sequence_number > 32767
      return false if @sequence_number < -32768
      return false if @invoice_rule.nil?
      invoice_rule_validator = EnumAttributeValidator.new('String', ["Agreement", "All", "Project", "Standard"])
      return false unless invoice_rule_validator.valid?(@invoice_rule)
      return false if @routing_rule.nil?
      routing_rule_validator = EnumAttributeValidator.new('String', ["Account", "Department", "Creator", "Location", "Project", "Sales", "Member", "Territory"])
      return false unless routing_rule_validator.valid?(@routing_rule)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence_number Value to be assigned
    def sequence_number=(sequence_number)
      if sequence_number.nil?
        fail ArgumentError, "sequence_number cannot be nil"
      end

      if sequence_number > 32767
        fail ArgumentError, "invalid value for 'sequence_number', must be smaller than or equal to 32767."
      end

      if sequence_number < -32768
        fail ArgumentError, "invalid value for 'sequence_number', must be greater than or equal to -32768."
      end

      @sequence_number = sequence_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_rule Object to be assigned
    def invoice_rule=(invoice_rule)
      validator = EnumAttributeValidator.new('String', ["Agreement", "All", "Project", "Standard"])
      unless validator.valid?(invoice_rule)
        fail ArgumentError, "invalid value for 'invoice_rule', must be one of #{validator.allowable_values}."
      end
      @invoice_rule = invoice_rule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_rule Object to be assigned
    def routing_rule=(routing_rule)
      validator = EnumAttributeValidator.new('String', ["Account", "Department", "Creator", "Location", "Project", "Sales", "Member", "Territory"])
      unless validator.valid?(routing_rule)
        fail ArgumentError, "invalid value for 'routing_rule', must be one of #{validator.allowable_values}."
      end
      @routing_rule = routing_rule
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sequence_number == o.sequence_number &&
          invoice_rule == o.invoice_rule &&
          routing_rule == o.routing_rule &&
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
      [id, sequence_number, invoice_rule, routing_rule, member, _info].hash
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

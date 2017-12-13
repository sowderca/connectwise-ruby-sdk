
require 'date'

module ConnectWise

  class TimeExpense
    attr_accessor :id

    attr_accessor :tier1_approval_flag

    attr_accessor :tier2_approval_flag

    attr_accessor :disable_time_entry_flag

    attr_accessor :require_time_note_flag

    attr_accessor :require_expense_note_flag

    attr_accessor :rounding_factor

    attr_accessor :invoice_start

    attr_accessor :internal_company

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'tier1_approval_flag' => :'tier1ApprovalFlag',
        :'tier2_approval_flag' => :'tier2ApprovalFlag',
        :'disable_time_entry_flag' => :'disableTimeEntryFlag',
        :'require_time_note_flag' => :'requireTimeNoteFlag',
        :'require_expense_note_flag' => :'requireExpenseNoteFlag',
        :'rounding_factor' => :'roundingFactor',
        :'invoice_start' => :'invoiceStart',
        :'internal_company' => :'internalCompany',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'tier1_approval_flag' => :'BOOLEAN',
        :'tier2_approval_flag' => :'BOOLEAN',
        :'disable_time_entry_flag' => :'BOOLEAN',
        :'require_time_note_flag' => :'BOOLEAN',
        :'require_expense_note_flag' => :'BOOLEAN',
        :'rounding_factor' => :'Float',
        :'invoice_start' => :'Integer',
        :'internal_company' => :'CompanyReference',
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

      if attributes.has_key?(:'tier1ApprovalFlag')
        self.tier1_approval_flag = attributes[:'tier1ApprovalFlag']
      end

      if attributes.has_key?(:'tier2ApprovalFlag')
        self.tier2_approval_flag = attributes[:'tier2ApprovalFlag']
      end

      if attributes.has_key?(:'disableTimeEntryFlag')
        self.disable_time_entry_flag = attributes[:'disableTimeEntryFlag']
      end

      if attributes.has_key?(:'requireTimeNoteFlag')
        self.require_time_note_flag = attributes[:'requireTimeNoteFlag']
      end

      if attributes.has_key?(:'requireExpenseNoteFlag')
        self.require_expense_note_flag = attributes[:'requireExpenseNoteFlag']
      end

      if attributes.has_key?(:'roundingFactor')
        self.rounding_factor = attributes[:'roundingFactor']
      end

      if attributes.has_key?(:'invoiceStart')
        self.invoice_start = attributes[:'invoiceStart']
      end

      if attributes.has_key?(:'internalCompany')
        self.internal_company = attributes[:'internalCompany']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@rounding_factor.nil? && @rounding_factor > 10
        invalid_properties.push("invalid value for 'rounding_factor', must be smaller than or equal to 10.")
      end

      if !@rounding_factor.nil? && @rounding_factor < 0
        invalid_properties.push("invalid value for 'rounding_factor', must be greater than or equal to 0.")
      end

      if !@invoice_start.nil? && @invoice_start > 2147483647
        invalid_properties.push("invalid value for 'invoice_start', must be smaller than or equal to 2147483647.")
      end

      if !@invoice_start.nil? && @invoice_start < 0
        invalid_properties.push("invalid value for 'invoice_start', must be greater than or equal to 0.")
      end

      if @internal_company.nil?
        invalid_properties.push("invalid value for 'internal_company', internal_company cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@rounding_factor.nil? && @rounding_factor > 10
      return false if !@rounding_factor.nil? && @rounding_factor < 0
      return false if !@invoice_start.nil? && @invoice_start > 2147483647
      return false if !@invoice_start.nil? && @invoice_start < 0
      return false if @internal_company.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] rounding_factor Value to be assigned
    def rounding_factor=(rounding_factor)

      if !rounding_factor.nil? && rounding_factor > 10
        fail ArgumentError, "invalid value for 'rounding_factor', must be smaller than or equal to 10."
      end

      if !rounding_factor.nil? && rounding_factor < 0
        fail ArgumentError, "invalid value for 'rounding_factor', must be greater than or equal to 0."
      end

      @rounding_factor = rounding_factor
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_start Value to be assigned
    def invoice_start=(invoice_start)

      if !invoice_start.nil? && invoice_start > 2147483647
        fail ArgumentError, "invalid value for 'invoice_start', must be smaller than or equal to 2147483647."
      end

      if !invoice_start.nil? && invoice_start < 0
        fail ArgumentError, "invalid value for 'invoice_start', must be greater than or equal to 0."
      end

      @invoice_start = invoice_start
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          tier1_approval_flag == o.tier1_approval_flag &&
          tier2_approval_flag == o.tier2_approval_flag &&
          disable_time_entry_flag == o.disable_time_entry_flag &&
          require_time_note_flag == o.require_time_note_flag &&
          require_expense_note_flag == o.require_expense_note_flag &&
          rounding_factor == o.rounding_factor &&
          invoice_start == o.invoice_start &&
          internal_company == o.internal_company &&
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
      [id, tier1_approval_flag, tier2_approval_flag, disable_time_entry_flag, require_time_note_flag, require_expense_note_flag, rounding_factor, invoice_start, internal_company, _info].hash
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


require 'date'

module ConnectWise

  class ExpenseType
    attr_accessor :id

    attr_accessor :name

    attr_accessor :amount_caption

    attr_accessor :reimbursement_rate

    attr_accessor :bill_expenses

    attr_accessor :invoice_markup_option

    attr_accessor :invoice_markup_amount

    attr_accessor :advanced_amount_flag

    attr_accessor :mileage_flag

    attr_accessor :quantity_flag

    attr_accessor :inactive_flag

    attr_accessor :max_amount

    attr_accessor :external_integration_x_ref

    attr_accessor :integration_x_ref

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
        :'amount_caption' => :'amountCaption',
        :'reimbursement_rate' => :'reimbursementRate',
        :'bill_expenses' => :'billExpenses',
        :'invoice_markup_option' => :'invoiceMarkupOption',
        :'invoice_markup_amount' => :'invoiceMarkupAmount',
        :'advanced_amount_flag' => :'advancedAmountFlag',
        :'mileage_flag' => :'mileageFlag',
        :'quantity_flag' => :'quantityFlag',
        :'inactive_flag' => :'inactiveFlag',
        :'max_amount' => :'maxAmount',
        :'external_integration_x_ref' => :'externalIntegrationXRef',
        :'integration_x_ref' => :'integrationXRef',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'amount_caption' => :'String',
        :'reimbursement_rate' => :'Float',
        :'bill_expenses' => :'String',
        :'invoice_markup_option' => :'String',
        :'invoice_markup_amount' => :'Float',
        :'advanced_amount_flag' => :'BOOLEAN',
        :'mileage_flag' => :'BOOLEAN',
        :'quantity_flag' => :'BOOLEAN',
        :'inactive_flag' => :'BOOLEAN',
        :'max_amount' => :'Float',
        :'external_integration_x_ref' => :'ExternalExpenseTypeIntegrationReference',
        :'integration_x_ref' => :'String',
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

      if attributes.has_key?(:'amountCaption')
        self.amount_caption = attributes[:'amountCaption']
      end

      if attributes.has_key?(:'reimbursementRate')
        self.reimbursement_rate = attributes[:'reimbursementRate']
      end

      if attributes.has_key?(:'billExpenses')
        self.bill_expenses = attributes[:'billExpenses']
      end

      if attributes.has_key?(:'invoiceMarkupOption')
        self.invoice_markup_option = attributes[:'invoiceMarkupOption']
      end

      if attributes.has_key?(:'invoiceMarkupAmount')
        self.invoice_markup_amount = attributes[:'invoiceMarkupAmount']
      end

      if attributes.has_key?(:'advancedAmountFlag')
        self.advanced_amount_flag = attributes[:'advancedAmountFlag']
      end

      if attributes.has_key?(:'mileageFlag')
        self.mileage_flag = attributes[:'mileageFlag']
      end

      if attributes.has_key?(:'quantityFlag')
        self.quantity_flag = attributes[:'quantityFlag']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'maxAmount')
        self.max_amount = attributes[:'maxAmount']
      end

      if attributes.has_key?(:'externalIntegrationXRef')
        self.external_integration_x_ref = attributes[:'externalIntegrationXRef']
      end

      if attributes.has_key?(:'integrationXRef')
        self.integration_x_ref = attributes[:'integrationXRef']
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

      if @name.to_s.length > 30
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 30.")
      end

      if @amount_caption.nil?
        invalid_properties.push("invalid value for 'amount_caption', amount_caption cannot be nil.")
      end

      if @bill_expenses.nil?
        invalid_properties.push("invalid value for 'bill_expenses', bill_expenses cannot be nil.")
      end

      if @invoice_markup_option.nil?
        invalid_properties.push("invalid value for 'invoice_markup_option', invoice_markup_option cannot be nil.")
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
      return false if @name.to_s.length > 30
      return false if @amount_caption.nil?
      return false if @bill_expenses.nil?
      bill_expenses_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      return false unless bill_expenses_validator.valid?(@bill_expenses)
      return false if @invoice_markup_option.nil?
      invoice_markup_option_validator = EnumAttributeValidator.new('String', ["Percent", "Amount", "Mile"])
      return false unless invoice_markup_option_validator.valid?(@invoice_markup_option)
      return false if !@integration_x_ref.nil? && @integration_x_ref.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 30
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 30."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bill_expenses Object to be assigned
    def bill_expenses=(bill_expenses)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge"])
      unless validator.valid?(bill_expenses)
        fail ArgumentError, "invalid value for 'bill_expenses', must be one of #{validator.allowable_values}."
      end
      @bill_expenses = bill_expenses
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_markup_option Object to be assigned
    def invoice_markup_option=(invoice_markup_option)
      validator = EnumAttributeValidator.new('String', ["Percent", "Amount", "Mile"])
      unless validator.valid?(invoice_markup_option)
        fail ArgumentError, "invalid value for 'invoice_markup_option', must be one of #{validator.allowable_values}."
      end
      @invoice_markup_option = invoice_markup_option
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
          amount_caption == o.amount_caption &&
          reimbursement_rate == o.reimbursement_rate &&
          bill_expenses == o.bill_expenses &&
          invoice_markup_option == o.invoice_markup_option &&
          invoice_markup_amount == o.invoice_markup_amount &&
          advanced_amount_flag == o.advanced_amount_flag &&
          mileage_flag == o.mileage_flag &&
          quantity_flag == o.quantity_flag &&
          inactive_flag == o.inactive_flag &&
          max_amount == o.max_amount &&
          external_integration_x_ref == o.external_integration_x_ref &&
          integration_x_ref == o.integration_x_ref &&
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
      [id, name, amount_caption, reimbursement_rate, bill_expenses, invoice_markup_option, invoice_markup_amount, advanced_amount_flag, mileage_flag, quantity_flag, inactive_flag, max_amount, external_integration_x_ref, integration_x_ref, _info].hash
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


require 'date'

module ConnectWise

  class AccountingPackage
    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :name

    attr_accessor :direct_transfer_flag

    attr_accessor :include_invoices_flag

    attr_accessor :invoice_format

    attr_accessor :include_expense_flag

    attr_accessor :transfer_expense_as_bill_flag

    attr_accessor :expense_format

    attr_accessor :supress_memo_flag

    attr_accessor :sync_payment_info_flag

    attr_accessor :include_sales_tax_flag

    attr_accessor :enable_tax_groups_flag

    attr_accessor :zero_dollar_tax_amounts_flag

    attr_accessor :include_items_flag

    attr_accessor :inventory_soh_flag

    attr_accessor :send_component_amount_flag

    attr_accessor :send_uom_flag

    attr_accessor :include_cogs_entries_flag

    attr_accessor :includge_cogs_drop_ship_flag

    attr_accessor :active_flag

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
        :'identifier' => :'identifier',
        :'name' => :'name',
        :'direct_transfer_flag' => :'directTransferFlag',
        :'include_invoices_flag' => :'includeInvoicesFlag',
        :'invoice_format' => :'invoiceFormat',
        :'include_expense_flag' => :'includeExpenseFlag',
        :'transfer_expense_as_bill_flag' => :'transferExpenseAsBillFlag',
        :'expense_format' => :'expenseFormat',
        :'supress_memo_flag' => :'supressMemoFlag',
        :'sync_payment_info_flag' => :'syncPaymentInfoFlag',
        :'include_sales_tax_flag' => :'includeSalesTaxFlag',
        :'enable_tax_groups_flag' => :'enableTaxGroupsFlag',
        :'zero_dollar_tax_amounts_flag' => :'zeroDollarTaxAmountsFlag',
        :'include_items_flag' => :'includeItemsFlag',
        :'inventory_soh_flag' => :'inventorySOHFlag',
        :'send_component_amount_flag' => :'sendComponentAmountFlag',
        :'send_uom_flag' => :'sendUomFlag',
        :'include_cogs_entries_flag' => :'includeCogsEntriesFlag',
        :'includge_cogs_drop_ship_flag' => :'includgeCogsDropShipFlag',
        :'active_flag' => :'activeFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'name' => :'String',
        :'direct_transfer_flag' => :'BOOLEAN',
        :'include_invoices_flag' => :'BOOLEAN',
        :'invoice_format' => :'String',
        :'include_expense_flag' => :'BOOLEAN',
        :'transfer_expense_as_bill_flag' => :'BOOLEAN',
        :'expense_format' => :'String',
        :'supress_memo_flag' => :'BOOLEAN',
        :'sync_payment_info_flag' => :'BOOLEAN',
        :'include_sales_tax_flag' => :'BOOLEAN',
        :'enable_tax_groups_flag' => :'BOOLEAN',
        :'zero_dollar_tax_amounts_flag' => :'BOOLEAN',
        :'include_items_flag' => :'BOOLEAN',
        :'inventory_soh_flag' => :'BOOLEAN',
        :'send_component_amount_flag' => :'BOOLEAN',
        :'send_uom_flag' => :'BOOLEAN',
        :'include_cogs_entries_flag' => :'BOOLEAN',
        :'includge_cogs_drop_ship_flag' => :'BOOLEAN',
        :'active_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'directTransferFlag')
        self.direct_transfer_flag = attributes[:'directTransferFlag']
      end

      if attributes.has_key?(:'includeInvoicesFlag')
        self.include_invoices_flag = attributes[:'includeInvoicesFlag']
      end

      if attributes.has_key?(:'invoiceFormat')
        self.invoice_format = attributes[:'invoiceFormat']
      end

      if attributes.has_key?(:'includeExpenseFlag')
        self.include_expense_flag = attributes[:'includeExpenseFlag']
      end

      if attributes.has_key?(:'transferExpenseAsBillFlag')
        self.transfer_expense_as_bill_flag = attributes[:'transferExpenseAsBillFlag']
      end

      if attributes.has_key?(:'expenseFormat')
        self.expense_format = attributes[:'expenseFormat']
      end

      if attributes.has_key?(:'supressMemoFlag')
        self.supress_memo_flag = attributes[:'supressMemoFlag']
      end

      if attributes.has_key?(:'syncPaymentInfoFlag')
        self.sync_payment_info_flag = attributes[:'syncPaymentInfoFlag']
      end

      if attributes.has_key?(:'includeSalesTaxFlag')
        self.include_sales_tax_flag = attributes[:'includeSalesTaxFlag']
      end

      if attributes.has_key?(:'enableTaxGroupsFlag')
        self.enable_tax_groups_flag = attributes[:'enableTaxGroupsFlag']
      end

      if attributes.has_key?(:'zeroDollarTaxAmountsFlag')
        self.zero_dollar_tax_amounts_flag = attributes[:'zeroDollarTaxAmountsFlag']
      end

      if attributes.has_key?(:'includeItemsFlag')
        self.include_items_flag = attributes[:'includeItemsFlag']
      end

      if attributes.has_key?(:'inventorySOHFlag')
        self.inventory_soh_flag = attributes[:'inventorySOHFlag']
      end

      if attributes.has_key?(:'sendComponentAmountFlag')
        self.send_component_amount_flag = attributes[:'sendComponentAmountFlag']
      end

      if attributes.has_key?(:'sendUomFlag')
        self.send_uom_flag = attributes[:'sendUomFlag']
      end

      if attributes.has_key?(:'includeCogsEntriesFlag')
        self.include_cogs_entries_flag = attributes[:'includeCogsEntriesFlag']
      end

      if attributes.has_key?(:'includgeCogsDropShipFlag')
        self.includge_cogs_drop_ship_flag = attributes[:'includgeCogsDropShipFlag']
      end

      if attributes.has_key?(:'activeFlag')
        self.active_flag = attributes[:'activeFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@identifier.nil? && @identifier.to_s.length > 10
        invalid_properties.push("invalid value for 'identifier', the character length must be smaller than or equal to 10.")
      end

      if !@name.nil? && @name.to_s.length > 30
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 30.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@identifier.nil? && @identifier.to_s.length > 10
      return false if !@name.nil? && @name.to_s.length > 30
      invoice_format_validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      return false unless invoice_format_validator.valid?(@invoice_format)
      expense_format_validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      return false unless expense_format_validator.valid?(@expense_format)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)

      if !identifier.nil? && identifier.to_s.length > 10
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 10."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 30
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 30."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_format Object to be assigned
    def invoice_format=(invoice_format)
      validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      unless validator.valid?(invoice_format)
        fail ArgumentError, "invalid value for 'invoice_format', must be one of #{validator.allowable_values}."
      end
      @invoice_format = invoice_format
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expense_format Object to be assigned
    def expense_format=(expense_format)
      validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      unless validator.valid?(expense_format)
        fail ArgumentError, "invalid value for 'expense_format', must be one of #{validator.allowable_values}."
      end
      @expense_format = expense_format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          identifier == o.identifier &&
          name == o.name &&
          direct_transfer_flag == o.direct_transfer_flag &&
          include_invoices_flag == o.include_invoices_flag &&
          invoice_format == o.invoice_format &&
          include_expense_flag == o.include_expense_flag &&
          transfer_expense_as_bill_flag == o.transfer_expense_as_bill_flag &&
          expense_format == o.expense_format &&
          supress_memo_flag == o.supress_memo_flag &&
          sync_payment_info_flag == o.sync_payment_info_flag &&
          include_sales_tax_flag == o.include_sales_tax_flag &&
          enable_tax_groups_flag == o.enable_tax_groups_flag &&
          zero_dollar_tax_amounts_flag == o.zero_dollar_tax_amounts_flag &&
          include_items_flag == o.include_items_flag &&
          inventory_soh_flag == o.inventory_soh_flag &&
          send_component_amount_flag == o.send_component_amount_flag &&
          send_uom_flag == o.send_uom_flag &&
          include_cogs_entries_flag == o.include_cogs_entries_flag &&
          includge_cogs_drop_ship_flag == o.includge_cogs_drop_ship_flag &&
          active_flag == o.active_flag &&
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
      [id, identifier, name, direct_transfer_flag, include_invoices_flag, invoice_format, include_expense_flag, transfer_expense_as_bill_flag, expense_format, supress_memo_flag, sync_payment_info_flag, include_sales_tax_flag, enable_tax_groups_flag, zero_dollar_tax_amounts_flag, include_items_flag, inventory_soh_flag, send_component_amount_flag, send_uom_flag, include_cogs_entries_flag, includge_cogs_drop_ship_flag, active_flag, _info].hash
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

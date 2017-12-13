
require 'date'

module ConnectWise

  class ExportAccountingBatchRequest
    attr_accessor :batch_identifier

    attr_accessor :gl_interface_identifier

    attr_accessor :thru_date

    attr_accessor :location_id

    attr_accessor :summarize_invoices

    # Batch export must include invoices, expenses, or products (procurement)
    attr_accessor :export_invoices_flag

    attr_accessor :included_invoice_ids

    attr_accessor :excluded_invoice_ids

    # Batch export must include invoices, expenses, or products (procurement)
    attr_accessor :export_expenses_flag

    attr_accessor :included_expense_ids

    attr_accessor :excluded_expense_ids

    # Batch export must include invoices, expenses, or products (procurement)
    attr_accessor :export_products_flag

    attr_accessor :included_product_ids

    attr_accessor :excluded_product_ids

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
        :'batch_identifier' => :'batchIdentifier',
        :'gl_interface_identifier' => :'glInterfaceIdentifier',
        :'thru_date' => :'thruDate',
        :'location_id' => :'locationId',
        :'summarize_invoices' => :'summarizeInvoices',
        :'export_invoices_flag' => :'exportInvoicesFlag',
        :'included_invoice_ids' => :'includedInvoiceIds',
        :'excluded_invoice_ids' => :'excludedInvoiceIds',
        :'export_expenses_flag' => :'exportExpensesFlag',
        :'included_expense_ids' => :'includedExpenseIds',
        :'excluded_expense_ids' => :'excludedExpenseIds',
        :'export_products_flag' => :'exportProductsFlag',
        :'included_product_ids' => :'includedProductIds',
        :'excluded_product_ids' => :'excludedProductIds'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'batch_identifier' => :'String',
        :'gl_interface_identifier' => :'String',
        :'thru_date' => :'DateTime',
        :'location_id' => :'Integer',
        :'summarize_invoices' => :'String',
        :'export_invoices_flag' => :'BOOLEAN',
        :'included_invoice_ids' => :'Array<Integer>',
        :'excluded_invoice_ids' => :'Array<Integer>',
        :'export_expenses_flag' => :'BOOLEAN',
        :'included_expense_ids' => :'Array<Integer>',
        :'excluded_expense_ids' => :'Array<Integer>',
        :'export_products_flag' => :'BOOLEAN',
        :'included_product_ids' => :'Array<String>',
        :'excluded_product_ids' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'batchIdentifier')
        self.batch_identifier = attributes[:'batchIdentifier']
      end

      if attributes.has_key?(:'glInterfaceIdentifier')
        self.gl_interface_identifier = attributes[:'glInterfaceIdentifier']
      end

      if attributes.has_key?(:'thruDate')
        self.thru_date = attributes[:'thruDate']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'summarizeInvoices')
        self.summarize_invoices = attributes[:'summarizeInvoices']
      end

      if attributes.has_key?(:'exportInvoicesFlag')
        self.export_invoices_flag = attributes[:'exportInvoicesFlag']
      end

      if attributes.has_key?(:'includedInvoiceIds')
        if (value = attributes[:'includedInvoiceIds']).is_a?(Array)
          self.included_invoice_ids = value
        end
      end

      if attributes.has_key?(:'excludedInvoiceIds')
        if (value = attributes[:'excludedInvoiceIds']).is_a?(Array)
          self.excluded_invoice_ids = value
        end
      end

      if attributes.has_key?(:'exportExpensesFlag')
        self.export_expenses_flag = attributes[:'exportExpensesFlag']
      end

      if attributes.has_key?(:'includedExpenseIds')
        if (value = attributes[:'includedExpenseIds']).is_a?(Array)
          self.included_expense_ids = value
        end
      end

      if attributes.has_key?(:'excludedExpenseIds')
        if (value = attributes[:'excludedExpenseIds']).is_a?(Array)
          self.excluded_expense_ids = value
        end
      end

      if attributes.has_key?(:'exportProductsFlag')
        self.export_products_flag = attributes[:'exportProductsFlag']
      end

      if attributes.has_key?(:'includedProductIds')
        if (value = attributes[:'includedProductIds']).is_a?(Array)
          self.included_product_ids = value
        end
      end

      if attributes.has_key?(:'excludedProductIds')
        if (value = attributes[:'excludedProductIds']).is_a?(Array)
          self.excluded_product_ids = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @batch_identifier.nil?
        invalid_properties.push("invalid value for 'batch_identifier', batch_identifier cannot be nil.")
      end

      if @batch_identifier.to_s.length > 50
        invalid_properties.push("invalid value for 'batch_identifier', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @batch_identifier.nil?
      return false if @batch_identifier.to_s.length > 50
      summarize_invoices_validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      return false unless summarize_invoices_validator.valid?(@summarize_invoices)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] batch_identifier Value to be assigned
    def batch_identifier=(batch_identifier)
      if batch_identifier.nil?
        fail ArgumentError, "batch_identifier cannot be nil"
      end

      if batch_identifier.to_s.length > 50
        fail ArgumentError, "invalid value for 'batch_identifier', the character length must be smaller than or equal to 50."
      end

      @batch_identifier = batch_identifier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] summarize_invoices Object to be assigned
    def summarize_invoices=(summarize_invoices)
      validator = EnumAttributeValidator.new('String', ["Default", "Condensed", "Detailed"])
      unless validator.valid?(summarize_invoices)
        fail ArgumentError, "invalid value for 'summarize_invoices', must be one of #{validator.allowable_values}."
      end
      @summarize_invoices = summarize_invoices
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          batch_identifier == o.batch_identifier &&
          gl_interface_identifier == o.gl_interface_identifier &&
          thru_date == o.thru_date &&
          location_id == o.location_id &&
          summarize_invoices == o.summarize_invoices &&
          export_invoices_flag == o.export_invoices_flag &&
          included_invoice_ids == o.included_invoice_ids &&
          excluded_invoice_ids == o.excluded_invoice_ids &&
          export_expenses_flag == o.export_expenses_flag &&
          included_expense_ids == o.included_expense_ids &&
          excluded_expense_ids == o.excluded_expense_ids &&
          export_products_flag == o.export_products_flag &&
          included_product_ids == o.included_product_ids &&
          excluded_product_ids == o.excluded_product_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [batch_identifier, gl_interface_identifier, thru_date, location_id, summarize_invoices, export_invoices_flag, included_invoice_ids, excluded_invoice_ids, export_expenses_flag, included_expense_ids, excluded_expense_ids, export_products_flag, included_product_ids, excluded_product_ids].hash
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

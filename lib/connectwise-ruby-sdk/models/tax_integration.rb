
require 'date'

module ConnectWise

  class TaxIntegration
    attr_accessor :tax_integration_type

    attr_accessor :id

    attr_accessor :account_number

    attr_accessor :license_key

    attr_accessor :service_url

    attr_accessor :company_code

    attr_accessor :time_tax_code

    attr_accessor :expense_tax_code

    attr_accessor :product_tax_code

    attr_accessor :invoice_amount_tax_code

    attr_accessor :enabled_flag

    attr_accessor :commit_transactions_flag

    attr_accessor :sales_invoice_flag

    attr_accessor :freight_tax_code

    attr_accessor :accounting_integration_flag

    attr_accessor :tax_line_flag

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
        :'tax_integration_type' => :'taxIntegrationType',
        :'id' => :'id',
        :'account_number' => :'accountNumber',
        :'license_key' => :'licenseKey',
        :'service_url' => :'serviceUrl',
        :'company_code' => :'companyCode',
        :'time_tax_code' => :'timeTaxCode',
        :'expense_tax_code' => :'expenseTaxCode',
        :'product_tax_code' => :'productTaxCode',
        :'invoice_amount_tax_code' => :'invoiceAmountTaxCode',
        :'enabled_flag' => :'enabledFlag',
        :'commit_transactions_flag' => :'commitTransactionsFlag',
        :'sales_invoice_flag' => :'salesInvoiceFlag',
        :'freight_tax_code' => :'freightTaxCode',
        :'accounting_integration_flag' => :'accountingIntegrationFlag',
        :'tax_line_flag' => :'taxLineFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tax_integration_type' => :'String',
        :'id' => :'Integer',
        :'account_number' => :'String',
        :'license_key' => :'String',
        :'service_url' => :'String',
        :'company_code' => :'String',
        :'time_tax_code' => :'String',
        :'expense_tax_code' => :'String',
        :'product_tax_code' => :'String',
        :'invoice_amount_tax_code' => :'String',
        :'enabled_flag' => :'BOOLEAN',
        :'commit_transactions_flag' => :'BOOLEAN',
        :'sales_invoice_flag' => :'BOOLEAN',
        :'freight_tax_code' => :'String',
        :'accounting_integration_flag' => :'BOOLEAN',
        :'tax_line_flag' => :'BOOLEAN',
        :'_info' => :'Metadata'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'taxIntegrationType')
        self.tax_integration_type = attributes[:'taxIntegrationType']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'licenseKey')
        self.license_key = attributes[:'licenseKey']
      end

      if attributes.has_key?(:'serviceUrl')
        self.service_url = attributes[:'serviceUrl']
      end

      if attributes.has_key?(:'companyCode')
        self.company_code = attributes[:'companyCode']
      end

      if attributes.has_key?(:'timeTaxCode')
        self.time_tax_code = attributes[:'timeTaxCode']
      end

      if attributes.has_key?(:'expenseTaxCode')
        self.expense_tax_code = attributes[:'expenseTaxCode']
      end

      if attributes.has_key?(:'productTaxCode')
        self.product_tax_code = attributes[:'productTaxCode']
      end

      if attributes.has_key?(:'invoiceAmountTaxCode')
        self.invoice_amount_tax_code = attributes[:'invoiceAmountTaxCode']
      end

      if attributes.has_key?(:'enabledFlag')
        self.enabled_flag = attributes[:'enabledFlag']
      end

      if attributes.has_key?(:'commitTransactionsFlag')
        self.commit_transactions_flag = attributes[:'commitTransactionsFlag']
      end

      if attributes.has_key?(:'salesInvoiceFlag')
        self.sales_invoice_flag = attributes[:'salesInvoiceFlag']
      end

      if attributes.has_key?(:'freightTaxCode')
        self.freight_tax_code = attributes[:'freightTaxCode']
      end

      if attributes.has_key?(:'accountingIntegrationFlag')
        self.accounting_integration_flag = attributes[:'accountingIntegrationFlag']
      end

      if attributes.has_key?(:'taxLineFlag')
        self.tax_line_flag = attributes[:'taxLineFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@account_number.nil? && @account_number.to_s.length > 50
        invalid_properties.push("invalid value for 'account_number', the character length must be smaller than or equal to 50.")
      end

      if !@license_key.nil? && @license_key.to_s.length > 50
        invalid_properties.push("invalid value for 'license_key', the character length must be smaller than or equal to 50.")
      end

      if !@service_url.nil? && @service_url.to_s.length > 250
        invalid_properties.push("invalid value for 'service_url', the character length must be smaller than or equal to 250.")
      end

      if !@company_code.nil? && @company_code.to_s.length > 50
        invalid_properties.push("invalid value for 'company_code', the character length must be smaller than or equal to 50.")
      end

      if !@time_tax_code.nil? && @time_tax_code.to_s.length > 50
        invalid_properties.push("invalid value for 'time_tax_code', the character length must be smaller than or equal to 50.")
      end

      if !@expense_tax_code.nil? && @expense_tax_code.to_s.length > 50
        invalid_properties.push("invalid value for 'expense_tax_code', the character length must be smaller than or equal to 50.")
      end

      if !@product_tax_code.nil? && @product_tax_code.to_s.length > 50
        invalid_properties.push("invalid value for 'product_tax_code', the character length must be smaller than or equal to 50.")
      end

      if !@invoice_amount_tax_code.nil? && @invoice_amount_tax_code.to_s.length > 50
        invalid_properties.push("invalid value for 'invoice_amount_tax_code', the character length must be smaller than or equal to 50.")
      end

      if !@freight_tax_code.nil? && @freight_tax_code.to_s.length > 50
        invalid_properties.push("invalid value for 'freight_tax_code', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      tax_integration_type_validator = EnumAttributeValidator.new('String', ["Avalara"])
      return false unless tax_integration_type_validator.valid?(@tax_integration_type)
      return false if !@account_number.nil? && @account_number.to_s.length > 50
      return false if !@license_key.nil? && @license_key.to_s.length > 50
      return false if !@service_url.nil? && @service_url.to_s.length > 250
      return false if !@company_code.nil? && @company_code.to_s.length > 50
      return false if !@time_tax_code.nil? && @time_tax_code.to_s.length > 50
      return false if !@expense_tax_code.nil? && @expense_tax_code.to_s.length > 50
      return false if !@product_tax_code.nil? && @product_tax_code.to_s.length > 50
      return false if !@invoice_amount_tax_code.nil? && @invoice_amount_tax_code.to_s.length > 50
      return false if !@freight_tax_code.nil? && @freight_tax_code.to_s.length > 50
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_integration_type Object to be assigned
    def tax_integration_type=(tax_integration_type)
      validator = EnumAttributeValidator.new('String', ["Avalara"])
      unless validator.valid?(tax_integration_type)
        fail ArgumentError, "invalid value for 'tax_integration_type', must be one of #{validator.allowable_values}."
      end
      @tax_integration_type = tax_integration_type
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)

      if !account_number.nil? && account_number.to_s.length > 50
        fail ArgumentError, "invalid value for 'account_number', the character length must be smaller than or equal to 50."
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] license_key Value to be assigned
    def license_key=(license_key)

      if !license_key.nil? && license_key.to_s.length > 50
        fail ArgumentError, "invalid value for 'license_key', the character length must be smaller than or equal to 50."
      end

      @license_key = license_key
    end

    # Custom attribute writer method with validation
    # @param [Object] service_url Value to be assigned
    def service_url=(service_url)

      if !service_url.nil? && service_url.to_s.length > 250
        fail ArgumentError, "invalid value for 'service_url', the character length must be smaller than or equal to 250."
      end

      @service_url = service_url
    end

    # Custom attribute writer method with validation
    # @param [Object] company_code Value to be assigned
    def company_code=(company_code)

      if !company_code.nil? && company_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'company_code', the character length must be smaller than or equal to 50."
      end

      @company_code = company_code
    end

    # Custom attribute writer method with validation
    # @param [Object] time_tax_code Value to be assigned
    def time_tax_code=(time_tax_code)

      if !time_tax_code.nil? && time_tax_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'time_tax_code', the character length must be smaller than or equal to 50."
      end

      @time_tax_code = time_tax_code
    end

    # Custom attribute writer method with validation
    # @param [Object] expense_tax_code Value to be assigned
    def expense_tax_code=(expense_tax_code)

      if !expense_tax_code.nil? && expense_tax_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'expense_tax_code', the character length must be smaller than or equal to 50."
      end

      @expense_tax_code = expense_tax_code
    end

    # Custom attribute writer method with validation
    # @param [Object] product_tax_code Value to be assigned
    def product_tax_code=(product_tax_code)

      if !product_tax_code.nil? && product_tax_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'product_tax_code', the character length must be smaller than or equal to 50."
      end

      @product_tax_code = product_tax_code
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_amount_tax_code Value to be assigned
    def invoice_amount_tax_code=(invoice_amount_tax_code)

      if !invoice_amount_tax_code.nil? && invoice_amount_tax_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'invoice_amount_tax_code', the character length must be smaller than or equal to 50."
      end

      @invoice_amount_tax_code = invoice_amount_tax_code
    end

    # Custom attribute writer method with validation
    # @param [Object] freight_tax_code Value to be assigned
    def freight_tax_code=(freight_tax_code)

      if !freight_tax_code.nil? && freight_tax_code.to_s.length > 50
        fail ArgumentError, "invalid value for 'freight_tax_code', the character length must be smaller than or equal to 50."
      end

      @freight_tax_code = freight_tax_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tax_integration_type == o.tax_integration_type &&
          id == o.id &&
          account_number == o.account_number &&
          license_key == o.license_key &&
          service_url == o.service_url &&
          company_code == o.company_code &&
          time_tax_code == o.time_tax_code &&
          expense_tax_code == o.expense_tax_code &&
          product_tax_code == o.product_tax_code &&
          invoice_amount_tax_code == o.invoice_amount_tax_code &&
          enabled_flag == o.enabled_flag &&
          commit_transactions_flag == o.commit_transactions_flag &&
          sales_invoice_flag == o.sales_invoice_flag &&
          freight_tax_code == o.freight_tax_code &&
          accounting_integration_flag == o.accounting_integration_flag &&
          tax_line_flag == o.tax_line_flag &&
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
      [tax_integration_type, id, account_number, license_key, service_url, company_code, time_tax_code, expense_tax_code, product_tax_code, invoice_amount_tax_code, enabled_flag, commit_transactions_flag, sales_invoice_flag, freight_tax_code, accounting_integration_flag, tax_line_flag, _info].hash
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

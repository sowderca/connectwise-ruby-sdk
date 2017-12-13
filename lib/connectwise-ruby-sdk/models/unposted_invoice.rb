
require 'date'

module ConnectWise

  class UnpostedInvoice
    attr_accessor :id

    attr_accessor :billing_log_id

    attr_accessor :location_id

    attr_accessor :department_id

    attr_accessor :company

    attr_accessor :account_number

    attr_accessor :bill_to_company

    attr_accessor :bill_to_site

    attr_accessor :ship_to_company

    attr_accessor :ship_to_site

    attr_accessor :invoice_number

    attr_accessor :invoice_date

    attr_accessor :invoice_type

    attr_accessor :description

    attr_accessor :billing_terms

    attr_accessor :due_days

    attr_accessor :due_date

    attr_accessor :currency

    attr_accessor :sub_total

    attr_accessor :total

    attr_accessor :invoice_taxable_flag

    attr_accessor :tax_code

    # Used to determine if Avalara tax is enabled.
    attr_accessor :avalara_tax_flag

    attr_accessor :item_taxable_flag

    attr_accessor :sales_tax_amount

    # Set to true if transaction is taxable at the state level.
    attr_accessor :state_tax_flag

    attr_accessor :state_tax_xref

    attr_accessor :state_tax_amount

    # Set to true if transaction is taxable at the county level.
    attr_accessor :county_tax_flag

    attr_accessor :county_tax_xref

    attr_accessor :county_tax_amount

    # Set to true if transaction is taxable at the city level.
    attr_accessor :city_tax_flag

    attr_accessor :city_tax_xref

    attr_accessor :city_tax_amount

    # Set to true if transaction is taxable at the country level.
    attr_accessor :country_tax_flag

    attr_accessor :country_tax_xref

    attr_accessor :country_tax_amount

    # Set to true if transaction is taxable at the composite level.
    attr_accessor :composite_tax_flag

    attr_accessor :composite_tax_xref

    attr_accessor :composite_tax_amount

    attr_accessor :created_by

    attr_accessor :date_closed

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
        :'billing_log_id' => :'billingLogId',
        :'location_id' => :'locationId',
        :'department_id' => :'departmentId',
        :'company' => :'company',
        :'account_number' => :'accountNumber',
        :'bill_to_company' => :'billToCompany',
        :'bill_to_site' => :'billToSite',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_site' => :'shipToSite',
        :'invoice_number' => :'invoiceNumber',
        :'invoice_date' => :'invoiceDate',
        :'invoice_type' => :'invoiceType',
        :'description' => :'description',
        :'billing_terms' => :'billingTerms',
        :'due_days' => :'dueDays',
        :'due_date' => :'dueDate',
        :'currency' => :'currency',
        :'sub_total' => :'subTotal',
        :'total' => :'total',
        :'invoice_taxable_flag' => :'invoiceTaxableFlag',
        :'tax_code' => :'taxCode',
        :'avalara_tax_flag' => :'avalaraTaxFlag',
        :'item_taxable_flag' => :'itemTaxableFlag',
        :'sales_tax_amount' => :'salesTaxAmount',
        :'state_tax_flag' => :'stateTaxFlag',
        :'state_tax_xref' => :'stateTaxXref',
        :'state_tax_amount' => :'stateTaxAmount',
        :'county_tax_flag' => :'countyTaxFlag',
        :'county_tax_xref' => :'countyTaxXref',
        :'county_tax_amount' => :'countyTaxAmount',
        :'city_tax_flag' => :'cityTaxFlag',
        :'city_tax_xref' => :'cityTaxXref',
        :'city_tax_amount' => :'cityTaxAmount',
        :'country_tax_flag' => :'countryTaxFlag',
        :'country_tax_xref' => :'countryTaxXref',
        :'country_tax_amount' => :'countryTaxAmount',
        :'composite_tax_flag' => :'compositeTaxFlag',
        :'composite_tax_xref' => :'compositeTaxXref',
        :'composite_tax_amount' => :'compositeTaxAmount',
        :'created_by' => :'createdBy',
        :'date_closed' => :'dateClosed',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'billing_log_id' => :'Integer',
        :'location_id' => :'Integer',
        :'department_id' => :'Integer',
        :'company' => :'CompanyReference',
        :'account_number' => :'String',
        :'bill_to_company' => :'CompanyReference',
        :'bill_to_site' => :'SiteReference',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_site' => :'SiteReference',
        :'invoice_number' => :'String',
        :'invoice_date' => :'DateTime',
        :'invoice_type' => :'String',
        :'description' => :'String',
        :'billing_terms' => :'BillingTermsReference',
        :'due_days' => :'String',
        :'due_date' => :'DateTime',
        :'currency' => :'CurrencyReference',
        :'sub_total' => :'Float',
        :'total' => :'Float',
        :'invoice_taxable_flag' => :'BOOLEAN',
        :'tax_code' => :'TaxCodeReference',
        :'avalara_tax_flag' => :'BOOLEAN',
        :'item_taxable_flag' => :'BOOLEAN',
        :'sales_tax_amount' => :'Float',
        :'state_tax_flag' => :'BOOLEAN',
        :'state_tax_xref' => :'String',
        :'state_tax_amount' => :'Float',
        :'county_tax_flag' => :'BOOLEAN',
        :'county_tax_xref' => :'String',
        :'county_tax_amount' => :'Float',
        :'city_tax_flag' => :'BOOLEAN',
        :'city_tax_xref' => :'String',
        :'city_tax_amount' => :'Float',
        :'country_tax_flag' => :'BOOLEAN',
        :'country_tax_xref' => :'String',
        :'country_tax_amount' => :'Float',
        :'composite_tax_flag' => :'BOOLEAN',
        :'composite_tax_xref' => :'String',
        :'composite_tax_amount' => :'Float',
        :'created_by' => :'String',
        :'date_closed' => :'DateTime',
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

      if attributes.has_key?(:'billingLogId')
        self.billing_log_id = attributes[:'billingLogId']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'departmentId')
        self.department_id = attributes[:'departmentId']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billToSite')
        self.bill_to_site = attributes[:'billToSite']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipToSite')
        self.ship_to_site = attributes[:'shipToSite']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'invoiceDate')
        self.invoice_date = attributes[:'invoiceDate']
      end

      if attributes.has_key?(:'invoiceType')
        self.invoice_type = attributes[:'invoiceType']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'dueDays')
        self.due_days = attributes[:'dueDays']
      end

      if attributes.has_key?(:'dueDate')
        self.due_date = attributes[:'dueDate']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'subTotal')
        self.sub_total = attributes[:'subTotal']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'invoiceTaxableFlag')
        self.invoice_taxable_flag = attributes[:'invoiceTaxableFlag']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'avalaraTaxFlag')
        self.avalara_tax_flag = attributes[:'avalaraTaxFlag']
      end

      if attributes.has_key?(:'itemTaxableFlag')
        self.item_taxable_flag = attributes[:'itemTaxableFlag']
      end

      if attributes.has_key?(:'salesTaxAmount')
        self.sales_tax_amount = attributes[:'salesTaxAmount']
      end

      if attributes.has_key?(:'stateTaxFlag')
        self.state_tax_flag = attributes[:'stateTaxFlag']
      end

      if attributes.has_key?(:'stateTaxXref')
        self.state_tax_xref = attributes[:'stateTaxXref']
      end

      if attributes.has_key?(:'stateTaxAmount')
        self.state_tax_amount = attributes[:'stateTaxAmount']
      end

      if attributes.has_key?(:'countyTaxFlag')
        self.county_tax_flag = attributes[:'countyTaxFlag']
      end

      if attributes.has_key?(:'countyTaxXref')
        self.county_tax_xref = attributes[:'countyTaxXref']
      end

      if attributes.has_key?(:'countyTaxAmount')
        self.county_tax_amount = attributes[:'countyTaxAmount']
      end

      if attributes.has_key?(:'cityTaxFlag')
        self.city_tax_flag = attributes[:'cityTaxFlag']
      end

      if attributes.has_key?(:'cityTaxXref')
        self.city_tax_xref = attributes[:'cityTaxXref']
      end

      if attributes.has_key?(:'cityTaxAmount')
        self.city_tax_amount = attributes[:'cityTaxAmount']
      end

      if attributes.has_key?(:'countryTaxFlag')
        self.country_tax_flag = attributes[:'countryTaxFlag']
      end

      if attributes.has_key?(:'countryTaxXref')
        self.country_tax_xref = attributes[:'countryTaxXref']
      end

      if attributes.has_key?(:'countryTaxAmount')
        self.country_tax_amount = attributes[:'countryTaxAmount']
      end

      if attributes.has_key?(:'compositeTaxFlag')
        self.composite_tax_flag = attributes[:'compositeTaxFlag']
      end

      if attributes.has_key?(:'compositeTaxXref')
        self.composite_tax_xref = attributes[:'compositeTaxXref']
      end

      if attributes.has_key?(:'compositeTaxAmount')
        self.composite_tax_amount = attributes[:'compositeTaxAmount']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'dateClosed')
        self.date_closed = attributes[:'dateClosed']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      invoice_type_validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      return false unless invoice_type_validator.valid?(@invoice_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_type Object to be assigned
    def invoice_type=(invoice_type)
      validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      unless validator.valid?(invoice_type)
        fail ArgumentError, "invalid value for 'invoice_type', must be one of #{validator.allowable_values}."
      end
      @invoice_type = invoice_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          billing_log_id == o.billing_log_id &&
          location_id == o.location_id &&
          department_id == o.department_id &&
          company == o.company &&
          account_number == o.account_number &&
          bill_to_company == o.bill_to_company &&
          bill_to_site == o.bill_to_site &&
          ship_to_company == o.ship_to_company &&
          ship_to_site == o.ship_to_site &&
          invoice_number == o.invoice_number &&
          invoice_date == o.invoice_date &&
          invoice_type == o.invoice_type &&
          description == o.description &&
          billing_terms == o.billing_terms &&
          due_days == o.due_days &&
          due_date == o.due_date &&
          currency == o.currency &&
          sub_total == o.sub_total &&
          total == o.total &&
          invoice_taxable_flag == o.invoice_taxable_flag &&
          tax_code == o.tax_code &&
          avalara_tax_flag == o.avalara_tax_flag &&
          item_taxable_flag == o.item_taxable_flag &&
          sales_tax_amount == o.sales_tax_amount &&
          state_tax_flag == o.state_tax_flag &&
          state_tax_xref == o.state_tax_xref &&
          state_tax_amount == o.state_tax_amount &&
          county_tax_flag == o.county_tax_flag &&
          county_tax_xref == o.county_tax_xref &&
          county_tax_amount == o.county_tax_amount &&
          city_tax_flag == o.city_tax_flag &&
          city_tax_xref == o.city_tax_xref &&
          city_tax_amount == o.city_tax_amount &&
          country_tax_flag == o.country_tax_flag &&
          country_tax_xref == o.country_tax_xref &&
          country_tax_amount == o.country_tax_amount &&
          composite_tax_flag == o.composite_tax_flag &&
          composite_tax_xref == o.composite_tax_xref &&
          composite_tax_amount == o.composite_tax_amount &&
          created_by == o.created_by &&
          date_closed == o.date_closed &&
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
      [id, billing_log_id, location_id, department_id, company, account_number, bill_to_company, bill_to_site, ship_to_company, ship_to_site, invoice_number, invoice_date, invoice_type, description, billing_terms, due_days, due_date, currency, sub_total, total, invoice_taxable_flag, tax_code, avalara_tax_flag, item_taxable_flag, sales_tax_amount, state_tax_flag, state_tax_xref, state_tax_amount, county_tax_flag, county_tax_xref, county_tax_amount, city_tax_flag, city_tax_xref, city_tax_amount, country_tax_flag, country_tax_xref, country_tax_amount, composite_tax_flag, composite_tax_xref, composite_tax_amount, created_by, date_closed, _info].hash
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

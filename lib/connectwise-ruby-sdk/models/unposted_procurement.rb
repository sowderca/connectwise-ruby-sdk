
require 'date'

module ConnectWise

  class UnpostedProcurement
    attr_accessor :id

    attr_accessor :description

    attr_accessor :location_id

    attr_accessor :department_id

    attr_accessor :procurement_type

    attr_accessor :purchase_order

    attr_accessor :purchase_date

    attr_accessor :tracking_number

    attr_accessor :billing_terms

    attr_accessor :currency

    attr_accessor :total

    attr_accessor :tax_code

    # Used to determine if Avalara tax is enabled.
    attr_accessor :avalara_tax_flag

    attr_accessor :item_taxable_flag

    attr_accessor :purchase_order_taxable_flag

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

    attr_accessor :tax_total

    attr_accessor :customer

    attr_accessor :vendor

    attr_accessor :vendor_account_number

    attr_accessor :vendor_invoice_number

    attr_accessor :vendor_invoice_date

    attr_accessor :tax_freight_flag

    attr_accessor :freight_tax_total

    attr_accessor :freight_cost

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
        :'description' => :'description',
        :'location_id' => :'locationId',
        :'department_id' => :'departmentId',
        :'procurement_type' => :'procurementType',
        :'purchase_order' => :'purchaseOrder',
        :'purchase_date' => :'purchaseDate',
        :'tracking_number' => :'trackingNumber',
        :'billing_terms' => :'billingTerms',
        :'currency' => :'currency',
        :'total' => :'total',
        :'tax_code' => :'taxCode',
        :'avalara_tax_flag' => :'avalaraTaxFlag',
        :'item_taxable_flag' => :'itemTaxableFlag',
        :'purchase_order_taxable_flag' => :'purchaseOrderTaxableFlag',
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
        :'tax_total' => :'taxTotal',
        :'customer' => :'customer',
        :'vendor' => :'vendor',
        :'vendor_account_number' => :'vendorAccountNumber',
        :'vendor_invoice_number' => :'vendorInvoiceNumber',
        :'vendor_invoice_date' => :'vendorInvoiceDate',
        :'tax_freight_flag' => :'taxFreightFlag',
        :'freight_tax_total' => :'freightTaxTotal',
        :'freight_cost' => :'freightCost',
        :'date_closed' => :'dateClosed',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'description' => :'String',
        :'location_id' => :'Integer',
        :'department_id' => :'Integer',
        :'procurement_type' => :'String',
        :'purchase_order' => :'PurchaseOrderReference',
        :'purchase_date' => :'DateTime',
        :'tracking_number' => :'String',
        :'billing_terms' => :'BillingTermsReference',
        :'currency' => :'CurrencyReference',
        :'total' => :'Float',
        :'tax_code' => :'TaxCodeReference',
        :'avalara_tax_flag' => :'BOOLEAN',
        :'item_taxable_flag' => :'BOOLEAN',
        :'purchase_order_taxable_flag' => :'BOOLEAN',
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
        :'tax_total' => :'Float',
        :'customer' => :'CompanyReference',
        :'vendor' => :'CompanyReference',
        :'vendor_account_number' => :'String',
        :'vendor_invoice_number' => :'String',
        :'vendor_invoice_date' => :'DateTime',
        :'tax_freight_flag' => :'BOOLEAN',
        :'freight_tax_total' => :'Float',
        :'freight_cost' => :'Float',
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'departmentId')
        self.department_id = attributes[:'departmentId']
      end

      if attributes.has_key?(:'procurementType')
        self.procurement_type = attributes[:'procurementType']
      end

      if attributes.has_key?(:'purchaseOrder')
        self.purchase_order = attributes[:'purchaseOrder']
      end

      if attributes.has_key?(:'purchaseDate')
        self.purchase_date = attributes[:'purchaseDate']
      end

      if attributes.has_key?(:'trackingNumber')
        self.tracking_number = attributes[:'trackingNumber']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
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

      if attributes.has_key?(:'purchaseOrderTaxableFlag')
        self.purchase_order_taxable_flag = attributes[:'purchaseOrderTaxableFlag']
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

      if attributes.has_key?(:'taxTotal')
        self.tax_total = attributes[:'taxTotal']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'vendorAccountNumber')
        self.vendor_account_number = attributes[:'vendorAccountNumber']
      end

      if attributes.has_key?(:'vendorInvoiceNumber')
        self.vendor_invoice_number = attributes[:'vendorInvoiceNumber']
      end

      if attributes.has_key?(:'vendorInvoiceDate')
        self.vendor_invoice_date = attributes[:'vendorInvoiceDate']
      end

      if attributes.has_key?(:'taxFreightFlag')
        self.tax_freight_flag = attributes[:'taxFreightFlag']
      end

      if attributes.has_key?(:'freightTaxTotal')
        self.freight_tax_total = attributes[:'freightTaxTotal']
      end

      if attributes.has_key?(:'freightCost')
        self.freight_cost = attributes[:'freightCost']
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
      procurement_type_validator = EnumAttributeValidator.new('String', ["Purchase", "Adjustment", "Transfer"])
      return false unless procurement_type_validator.valid?(@procurement_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] procurement_type Object to be assigned
    def procurement_type=(procurement_type)
      validator = EnumAttributeValidator.new('String', ["Purchase", "Adjustment", "Transfer"])
      unless validator.valid?(procurement_type)
        fail ArgumentError, "invalid value for 'procurement_type', must be one of #{validator.allowable_values}."
      end
      @procurement_type = procurement_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          description == o.description &&
          location_id == o.location_id &&
          department_id == o.department_id &&
          procurement_type == o.procurement_type &&
          purchase_order == o.purchase_order &&
          purchase_date == o.purchase_date &&
          tracking_number == o.tracking_number &&
          billing_terms == o.billing_terms &&
          currency == o.currency &&
          total == o.total &&
          tax_code == o.tax_code &&
          avalara_tax_flag == o.avalara_tax_flag &&
          item_taxable_flag == o.item_taxable_flag &&
          purchase_order_taxable_flag == o.purchase_order_taxable_flag &&
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
          tax_total == o.tax_total &&
          customer == o.customer &&
          vendor == o.vendor &&
          vendor_account_number == o.vendor_account_number &&
          vendor_invoice_number == o.vendor_invoice_number &&
          vendor_invoice_date == o.vendor_invoice_date &&
          tax_freight_flag == o.tax_freight_flag &&
          freight_tax_total == o.freight_tax_total &&
          freight_cost == o.freight_cost &&
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
      [id, description, location_id, department_id, procurement_type, purchase_order, purchase_date, tracking_number, billing_terms, currency, total, tax_code, avalara_tax_flag, item_taxable_flag, purchase_order_taxable_flag, state_tax_flag, state_tax_xref, state_tax_amount, county_tax_flag, county_tax_xref, county_tax_amount, city_tax_flag, city_tax_xref, city_tax_amount, country_tax_flag, country_tax_xref, country_tax_amount, composite_tax_flag, composite_tax_xref, composite_tax_amount, tax_total, customer, vendor, vendor_account_number, vendor_invoice_number, vendor_invoice_date, tax_freight_flag, freight_tax_total, freight_cost, date_closed, _info].hash
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


require 'date'

module ConnectWise

  class GLExportPurchaseTransaction
    attr_accessor :id

    attr_accessor :document_date

    attr_accessor :document_number

    attr_accessor :description

    attr_accessor :memo

    attr_accessor :ap_account_number

    attr_accessor :purchase_date

    attr_accessor :company

    attr_accessor :company_type

    attr_accessor :contact

    attr_accessor :site

    attr_accessor :purchase_class

    attr_accessor :freight_amount

    attr_accessor :freight_packing_slip

    attr_accessor :packing_slip

    attr_accessor :dropship_flag

    attr_accessor :currency

    attr_accessor :total

    attr_accessor :billing_terms

    attr_accessor :billing_terms_xref

    attr_accessor :due_days

    attr_accessor :vendor_number

    attr_accessor :vendor_account_number

    attr_accessor :vendor_invoice_date

    attr_accessor :vendor_invoice_number

    attr_accessor :tax_agency_xref

    attr_accessor :state_tax_xref

    attr_accessor :county_tax_xref

    attr_accessor :city_tax_xref

    attr_accessor :ship_to_company

    attr_accessor :ship_to_company_account_number

    attr_accessor :ship_to_company_type

    attr_accessor :ship_to_contact

    attr_accessor :ship_to_site

    attr_accessor :ship_to_tax_group

    attr_accessor :tax_code

    attr_accessor :tax_group_rate

    attr_accessor :use_avalara_tax_flag

    attr_accessor :purchase_header_tax_group

    attr_accessor :purchase_header_taxable_flag

    attr_accessor :purchase_header_freight_taxable_flag

    attr_accessor :purchase_detail

    attr_accessor :purchase_detail_tax


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'document_date' => :'documentDate',
        :'document_number' => :'documentNumber',
        :'description' => :'description',
        :'memo' => :'memo',
        :'ap_account_number' => :'apAccountNumber',
        :'purchase_date' => :'purchaseDate',
        :'company' => :'company',
        :'company_type' => :'companyType',
        :'contact' => :'contact',
        :'site' => :'site',
        :'purchase_class' => :'purchaseClass',
        :'freight_amount' => :'freightAmount',
        :'freight_packing_slip' => :'freightPackingSlip',
        :'packing_slip' => :'packingSlip',
        :'dropship_flag' => :'dropshipFlag',
        :'currency' => :'currency',
        :'total' => :'total',
        :'billing_terms' => :'billingTerms',
        :'billing_terms_xref' => :'billingTermsXref',
        :'due_days' => :'dueDays',
        :'vendor_number' => :'vendorNumber',
        :'vendor_account_number' => :'vendorAccountNumber',
        :'vendor_invoice_date' => :'vendorInvoiceDate',
        :'vendor_invoice_number' => :'vendorInvoiceNumber',
        :'tax_agency_xref' => :'taxAgencyXref',
        :'state_tax_xref' => :'stateTaxXref',
        :'county_tax_xref' => :'countyTaxXref',
        :'city_tax_xref' => :'cityTaxXref',
        :'ship_to_company' => :'shipToCompany',
        :'ship_to_company_account_number' => :'shipToCompanyAccountNumber',
        :'ship_to_company_type' => :'shipToCompanyType',
        :'ship_to_contact' => :'shipToContact',
        :'ship_to_site' => :'shipToSite',
        :'ship_to_tax_group' => :'shipToTaxGroup',
        :'tax_code' => :'taxCode',
        :'tax_group_rate' => :'taxGroupRate',
        :'use_avalara_tax_flag' => :'useAvalaraTaxFlag',
        :'purchase_header_tax_group' => :'purchaseHeaderTaxGroup',
        :'purchase_header_taxable_flag' => :'purchaseHeaderTaxableFlag',
        :'purchase_header_freight_taxable_flag' => :'purchaseHeaderFreightTaxableFlag',
        :'purchase_detail' => :'purchaseDetail',
        :'purchase_detail_tax' => :'purchaseDetailTax'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'document_date' => :'DateTime',
        :'document_number' => :'String',
        :'description' => :'String',
        :'memo' => :'String',
        :'ap_account_number' => :'String',
        :'purchase_date' => :'DateTime',
        :'company' => :'CompanyReference',
        :'company_type' => :'CompanyTypeReference',
        :'contact' => :'ContactReference',
        :'site' => :'SiteReference',
        :'purchase_class' => :'String',
        :'freight_amount' => :'Float',
        :'freight_packing_slip' => :'String',
        :'packing_slip' => :'String',
        :'dropship_flag' => :'BOOLEAN',
        :'currency' => :'CurrencyReference',
        :'total' => :'Float',
        :'billing_terms' => :'BillingTermsReference',
        :'billing_terms_xref' => :'String',
        :'due_days' => :'Integer',
        :'vendor_number' => :'String',
        :'vendor_account_number' => :'String',
        :'vendor_invoice_date' => :'DateTime',
        :'vendor_invoice_number' => :'String',
        :'tax_agency_xref' => :'String',
        :'state_tax_xref' => :'String',
        :'county_tax_xref' => :'String',
        :'city_tax_xref' => :'String',
        :'ship_to_company' => :'CompanyReference',
        :'ship_to_company_account_number' => :'String',
        :'ship_to_company_type' => :'CompanyTypeReference',
        :'ship_to_contact' => :'ContactReference',
        :'ship_to_site' => :'SiteReference',
        :'ship_to_tax_group' => :'String',
        :'tax_code' => :'TaxCodeReference',
        :'tax_group_rate' => :'Float',
        :'use_avalara_tax_flag' => :'BOOLEAN',
        :'purchase_header_tax_group' => :'String',
        :'purchase_header_taxable_flag' => :'BOOLEAN',
        :'purchase_header_freight_taxable_flag' => :'BOOLEAN',
        :'purchase_detail' => :'Array<GLExportPurchaseTransactionDetail>',
        :'purchase_detail_tax' => :'Array<GLExportPurchaseTransactionDetailTax>'
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

      if attributes.has_key?(:'documentDate')
        self.document_date = attributes[:'documentDate']
      end

      if attributes.has_key?(:'documentNumber')
        self.document_number = attributes[:'documentNumber']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'apAccountNumber')
        self.ap_account_number = attributes[:'apAccountNumber']
      end

      if attributes.has_key?(:'purchaseDate')
        self.purchase_date = attributes[:'purchaseDate']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'companyType')
        self.company_type = attributes[:'companyType']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'purchaseClass')
        self.purchase_class = attributes[:'purchaseClass']
      end

      if attributes.has_key?(:'freightAmount')
        self.freight_amount = attributes[:'freightAmount']
      end

      if attributes.has_key?(:'freightPackingSlip')
        self.freight_packing_slip = attributes[:'freightPackingSlip']
      end

      if attributes.has_key?(:'packingSlip')
        self.packing_slip = attributes[:'packingSlip']
      end

      if attributes.has_key?(:'dropshipFlag')
        self.dropship_flag = attributes[:'dropshipFlag']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'billingTermsXref')
        self.billing_terms_xref = attributes[:'billingTermsXref']
      end

      if attributes.has_key?(:'dueDays')
        self.due_days = attributes[:'dueDays']
      end

      if attributes.has_key?(:'vendorNumber')
        self.vendor_number = attributes[:'vendorNumber']
      end

      if attributes.has_key?(:'vendorAccountNumber')
        self.vendor_account_number = attributes[:'vendorAccountNumber']
      end

      if attributes.has_key?(:'vendorInvoiceDate')
        self.vendor_invoice_date = attributes[:'vendorInvoiceDate']
      end

      if attributes.has_key?(:'vendorInvoiceNumber')
        self.vendor_invoice_number = attributes[:'vendorInvoiceNumber']
      end

      if attributes.has_key?(:'taxAgencyXref')
        self.tax_agency_xref = attributes[:'taxAgencyXref']
      end

      if attributes.has_key?(:'stateTaxXref')
        self.state_tax_xref = attributes[:'stateTaxXref']
      end

      if attributes.has_key?(:'countyTaxXref')
        self.county_tax_xref = attributes[:'countyTaxXref']
      end

      if attributes.has_key?(:'cityTaxXref')
        self.city_tax_xref = attributes[:'cityTaxXref']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipToCompanyAccountNumber')
        self.ship_to_company_account_number = attributes[:'shipToCompanyAccountNumber']
      end

      if attributes.has_key?(:'shipToCompanyType')
        self.ship_to_company_type = attributes[:'shipToCompanyType']
      end

      if attributes.has_key?(:'shipToContact')
        self.ship_to_contact = attributes[:'shipToContact']
      end

      if attributes.has_key?(:'shipToSite')
        self.ship_to_site = attributes[:'shipToSite']
      end

      if attributes.has_key?(:'shipToTaxGroup')
        self.ship_to_tax_group = attributes[:'shipToTaxGroup']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'taxGroupRate')
        self.tax_group_rate = attributes[:'taxGroupRate']
      end

      if attributes.has_key?(:'useAvalaraTaxFlag')
        self.use_avalara_tax_flag = attributes[:'useAvalaraTaxFlag']
      end

      if attributes.has_key?(:'purchaseHeaderTaxGroup')
        self.purchase_header_tax_group = attributes[:'purchaseHeaderTaxGroup']
      end

      if attributes.has_key?(:'purchaseHeaderTaxableFlag')
        self.purchase_header_taxable_flag = attributes[:'purchaseHeaderTaxableFlag']
      end

      if attributes.has_key?(:'purchaseHeaderFreightTaxableFlag')
        self.purchase_header_freight_taxable_flag = attributes[:'purchaseHeaderFreightTaxableFlag']
      end

      if attributes.has_key?(:'purchaseDetail')
        if (value = attributes[:'purchaseDetail']).is_a?(Array)
          self.purchase_detail = value
        end
      end

      if attributes.has_key?(:'purchaseDetailTax')
        if (value = attributes[:'purchaseDetailTax']).is_a?(Array)
          self.purchase_detail_tax = value
        end
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
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          document_date == o.document_date &&
          document_number == o.document_number &&
          description == o.description &&
          memo == o.memo &&
          ap_account_number == o.ap_account_number &&
          purchase_date == o.purchase_date &&
          company == o.company &&
          company_type == o.company_type &&
          contact == o.contact &&
          site == o.site &&
          purchase_class == o.purchase_class &&
          freight_amount == o.freight_amount &&
          freight_packing_slip == o.freight_packing_slip &&
          packing_slip == o.packing_slip &&
          dropship_flag == o.dropship_flag &&
          currency == o.currency &&
          total == o.total &&
          billing_terms == o.billing_terms &&
          billing_terms_xref == o.billing_terms_xref &&
          due_days == o.due_days &&
          vendor_number == o.vendor_number &&
          vendor_account_number == o.vendor_account_number &&
          vendor_invoice_date == o.vendor_invoice_date &&
          vendor_invoice_number == o.vendor_invoice_number &&
          tax_agency_xref == o.tax_agency_xref &&
          state_tax_xref == o.state_tax_xref &&
          county_tax_xref == o.county_tax_xref &&
          city_tax_xref == o.city_tax_xref &&
          ship_to_company == o.ship_to_company &&
          ship_to_company_account_number == o.ship_to_company_account_number &&
          ship_to_company_type == o.ship_to_company_type &&
          ship_to_contact == o.ship_to_contact &&
          ship_to_site == o.ship_to_site &&
          ship_to_tax_group == o.ship_to_tax_group &&
          tax_code == o.tax_code &&
          tax_group_rate == o.tax_group_rate &&
          use_avalara_tax_flag == o.use_avalara_tax_flag &&
          purchase_header_tax_group == o.purchase_header_tax_group &&
          purchase_header_taxable_flag == o.purchase_header_taxable_flag &&
          purchase_header_freight_taxable_flag == o.purchase_header_freight_taxable_flag &&
          purchase_detail == o.purchase_detail &&
          purchase_detail_tax == o.purchase_detail_tax
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, document_date, document_number, description, memo, ap_account_number, purchase_date, company, company_type, contact, site, purchase_class, freight_amount, freight_packing_slip, packing_slip, dropship_flag, currency, total, billing_terms, billing_terms_xref, due_days, vendor_number, vendor_account_number, vendor_invoice_date, vendor_invoice_number, tax_agency_xref, state_tax_xref, county_tax_xref, city_tax_xref, ship_to_company, ship_to_company_account_number, ship_to_company_type, ship_to_contact, ship_to_site, ship_to_tax_group, tax_code, tax_group_rate, use_avalara_tax_flag, purchase_header_tax_group, purchase_header_taxable_flag, purchase_header_freight_taxable_flag, purchase_detail, purchase_detail_tax].hash
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

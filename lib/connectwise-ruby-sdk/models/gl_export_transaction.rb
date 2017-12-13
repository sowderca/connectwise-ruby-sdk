
require 'date'

module ConnectWise

  class GLExportTransaction
    attr_accessor :id

    attr_accessor :gl_class

    attr_accessor :gl_type_id

    attr_accessor :document_date

    attr_accessor :document_number

    attr_accessor :document_type

    attr_accessor :memo

    attr_accessor :description

    attr_accessor :attention

    attr_accessor :sales_territory

    attr_accessor :company

    attr_accessor :company_type

    attr_accessor :company_account_number

    attr_accessor :site

    attr_accessor :billing_terms

    attr_accessor :billing_terms_xref

    attr_accessor :due_days

    attr_accessor :due_date

    attr_accessor :email_delivery_flag

    attr_accessor :print_delivery_flag

    attr_accessor :agreement_pre_payment_flag

    attr_accessor :account_number

    attr_accessor :billing_type

    attr_accessor :gl_entry_ids

    attr_accessor :purchase_order

    attr_accessor :project

    attr_accessor :currency

    attr_accessor :total

    attr_accessor :sales_rep_id

    attr_accessor :sales_rep_name

    attr_accessor :taxable

    attr_accessor :taxable_total

    attr_accessor :tax_code

    attr_accessor :tax_group_rate

    attr_accessor :piggy_back_flag

    attr_accessor :tax_account_number

    attr_accessor :sales_tax

    attr_accessor :state_tax

    attr_accessor :county_tax

    attr_accessor :city_tax

    attr_accessor :taxable_amount1

    attr_accessor :taxable_amount2

    attr_accessor :taxable_amount3

    attr_accessor :taxable_amount4

    attr_accessor :taxable_amount5

    attr_accessor :tax_agency_xref

    attr_accessor :state_tax_xref

    attr_accessor :county_tax_xref

    attr_accessor :tax_id

    attr_accessor :tax_dp_applied_flag

    attr_accessor :use_avalara_flag

    attr_accessor :send_avalara_tax_flag

    attr_accessor :ship_to_company

    attr_accessor :ship_company_account_number

    attr_accessor :ship_company_type

    attr_accessor :ship_tax_id

    attr_accessor :ship_site

    attr_accessor :ship_contact

    attr_accessor :detail


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'gl_class' => :'glClass',
        :'gl_type_id' => :'glTypeId',
        :'document_date' => :'documentDate',
        :'document_number' => :'documentNumber',
        :'document_type' => :'documentType',
        :'memo' => :'memo',
        :'description' => :'description',
        :'attention' => :'attention',
        :'sales_territory' => :'salesTerritory',
        :'company' => :'company',
        :'company_type' => :'companyType',
        :'company_account_number' => :'companyAccountNumber',
        :'site' => :'site',
        :'billing_terms' => :'billingTerms',
        :'billing_terms_xref' => :'billingTermsXref',
        :'due_days' => :'dueDays',
        :'due_date' => :'dueDate',
        :'email_delivery_flag' => :'emailDeliveryFlag',
        :'print_delivery_flag' => :'printDeliveryFlag',
        :'agreement_pre_payment_flag' => :'agreementPrePaymentFlag',
        :'account_number' => :'accountNumber',
        :'billing_type' => :'billingType',
        :'gl_entry_ids' => :'glEntryIds',
        :'purchase_order' => :'purchaseOrder',
        :'project' => :'project',
        :'currency' => :'currency',
        :'total' => :'total',
        :'sales_rep_id' => :'salesRepId',
        :'sales_rep_name' => :'salesRepName',
        :'taxable' => :'taxable',
        :'taxable_total' => :'taxableTotal',
        :'tax_code' => :'taxCode',
        :'tax_group_rate' => :'taxGroupRate',
        :'piggy_back_flag' => :'piggyBackFlag',
        :'tax_account_number' => :'taxAccountNumber',
        :'sales_tax' => :'salesTax',
        :'state_tax' => :'stateTax',
        :'county_tax' => :'countyTax',
        :'city_tax' => :'cityTax',
        :'taxable_amount1' => :'taxableAmount1',
        :'taxable_amount2' => :'taxableAmount2',
        :'taxable_amount3' => :'taxableAmount3',
        :'taxable_amount4' => :'taxableAmount4',
        :'taxable_amount5' => :'taxableAmount5',
        :'tax_agency_xref' => :'taxAgencyXref',
        :'state_tax_xref' => :'stateTaxXref',
        :'county_tax_xref' => :'countyTaxXref',
        :'tax_id' => :'taxId',
        :'tax_dp_applied_flag' => :'taxDpAppliedFlag',
        :'use_avalara_flag' => :'useAvalaraFlag',
        :'send_avalara_tax_flag' => :'sendAvalaraTaxFlag',
        :'ship_to_company' => :'shipToCompany',
        :'ship_company_account_number' => :'shipCompanyAccountNumber',
        :'ship_company_type' => :'shipCompanyType',
        :'ship_tax_id' => :'shipTaxId',
        :'ship_site' => :'shipSite',
        :'ship_contact' => :'shipContact',
        :'detail' => :'detail'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'gl_class' => :'String',
        :'gl_type_id' => :'String',
        :'document_date' => :'DateTime',
        :'document_number' => :'String',
        :'document_type' => :'String',
        :'memo' => :'String',
        :'description' => :'String',
        :'attention' => :'String',
        :'sales_territory' => :'String',
        :'company' => :'CompanyReference',
        :'company_type' => :'CompanyTypeReference',
        :'company_account_number' => :'String',
        :'site' => :'SiteReference',
        :'billing_terms' => :'BillingTermsReference',
        :'billing_terms_xref' => :'String',
        :'due_days' => :'Integer',
        :'due_date' => :'DateTime',
        :'email_delivery_flag' => :'BOOLEAN',
        :'print_delivery_flag' => :'BOOLEAN',
        :'agreement_pre_payment_flag' => :'BOOLEAN',
        :'account_number' => :'String',
        :'billing_type' => :'String',
        :'gl_entry_ids' => :'String',
        :'purchase_order' => :'PurchaseOrderReference',
        :'project' => :'ProjectReference',
        :'currency' => :'CurrencyReference',
        :'total' => :'Float',
        :'sales_rep_id' => :'String',
        :'sales_rep_name' => :'String',
        :'taxable' => :'BOOLEAN',
        :'taxable_total' => :'Float',
        :'tax_code' => :'TaxCodeReference',
        :'tax_group_rate' => :'Float',
        :'piggy_back_flag' => :'BOOLEAN',
        :'tax_account_number' => :'String',
        :'sales_tax' => :'Float',
        :'state_tax' => :'Float',
        :'county_tax' => :'Float',
        :'city_tax' => :'Float',
        :'taxable_amount1' => :'Float',
        :'taxable_amount2' => :'Float',
        :'taxable_amount3' => :'Float',
        :'taxable_amount4' => :'Float',
        :'taxable_amount5' => :'Float',
        :'tax_agency_xref' => :'String',
        :'state_tax_xref' => :'String',
        :'county_tax_xref' => :'String',
        :'tax_id' => :'String',
        :'tax_dp_applied_flag' => :'BOOLEAN',
        :'use_avalara_flag' => :'BOOLEAN',
        :'send_avalara_tax_flag' => :'BOOLEAN',
        :'ship_to_company' => :'CompanyReference',
        :'ship_company_account_number' => :'String',
        :'ship_company_type' => :'CompanyTypeReference',
        :'ship_tax_id' => :'String',
        :'ship_site' => :'SiteReference',
        :'ship_contact' => :'ContactReference',
        :'detail' => :'Array<GLExportTransactionDetail>'
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

      if attributes.has_key?(:'glClass')
        self.gl_class = attributes[:'glClass']
      end

      if attributes.has_key?(:'glTypeId')
        self.gl_type_id = attributes[:'glTypeId']
      end

      if attributes.has_key?(:'documentDate')
        self.document_date = attributes[:'documentDate']
      end

      if attributes.has_key?(:'documentNumber')
        self.document_number = attributes[:'documentNumber']
      end

      if attributes.has_key?(:'documentType')
        self.document_type = attributes[:'documentType']
      end

      if attributes.has_key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'attention')
        self.attention = attributes[:'attention']
      end

      if attributes.has_key?(:'salesTerritory')
        self.sales_territory = attributes[:'salesTerritory']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'companyType')
        self.company_type = attributes[:'companyType']
      end

      if attributes.has_key?(:'companyAccountNumber')
        self.company_account_number = attributes[:'companyAccountNumber']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
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

      if attributes.has_key?(:'dueDate')
        self.due_date = attributes[:'dueDate']
      end

      if attributes.has_key?(:'emailDeliveryFlag')
        self.email_delivery_flag = attributes[:'emailDeliveryFlag']
      end

      if attributes.has_key?(:'printDeliveryFlag')
        self.print_delivery_flag = attributes[:'printDeliveryFlag']
      end

      if attributes.has_key?(:'agreementPrePaymentFlag')
        self.agreement_pre_payment_flag = attributes[:'agreementPrePaymentFlag']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'billingType')
        self.billing_type = attributes[:'billingType']
      end

      if attributes.has_key?(:'glEntryIds')
        self.gl_entry_ids = attributes[:'glEntryIds']
      end

      if attributes.has_key?(:'purchaseOrder')
        self.purchase_order = attributes[:'purchaseOrder']
      end

      if attributes.has_key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'salesRepId')
        self.sales_rep_id = attributes[:'salesRepId']
      end

      if attributes.has_key?(:'salesRepName')
        self.sales_rep_name = attributes[:'salesRepName']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'taxableTotal')
        self.taxable_total = attributes[:'taxableTotal']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'taxGroupRate')
        self.tax_group_rate = attributes[:'taxGroupRate']
      end

      if attributes.has_key?(:'piggyBackFlag')
        self.piggy_back_flag = attributes[:'piggyBackFlag']
      end

      if attributes.has_key?(:'taxAccountNumber')
        self.tax_account_number = attributes[:'taxAccountNumber']
      end

      if attributes.has_key?(:'salesTax')
        self.sales_tax = attributes[:'salesTax']
      end

      if attributes.has_key?(:'stateTax')
        self.state_tax = attributes[:'stateTax']
      end

      if attributes.has_key?(:'countyTax')
        self.county_tax = attributes[:'countyTax']
      end

      if attributes.has_key?(:'cityTax')
        self.city_tax = attributes[:'cityTax']
      end

      if attributes.has_key?(:'taxableAmount1')
        self.taxable_amount1 = attributes[:'taxableAmount1']
      end

      if attributes.has_key?(:'taxableAmount2')
        self.taxable_amount2 = attributes[:'taxableAmount2']
      end

      if attributes.has_key?(:'taxableAmount3')
        self.taxable_amount3 = attributes[:'taxableAmount3']
      end

      if attributes.has_key?(:'taxableAmount4')
        self.taxable_amount4 = attributes[:'taxableAmount4']
      end

      if attributes.has_key?(:'taxableAmount5')
        self.taxable_amount5 = attributes[:'taxableAmount5']
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

      if attributes.has_key?(:'taxId')
        self.tax_id = attributes[:'taxId']
      end

      if attributes.has_key?(:'taxDpAppliedFlag')
        self.tax_dp_applied_flag = attributes[:'taxDpAppliedFlag']
      end

      if attributes.has_key?(:'useAvalaraFlag')
        self.use_avalara_flag = attributes[:'useAvalaraFlag']
      end

      if attributes.has_key?(:'sendAvalaraTaxFlag')
        self.send_avalara_tax_flag = attributes[:'sendAvalaraTaxFlag']
      end

      if attributes.has_key?(:'shipToCompany')
        self.ship_to_company = attributes[:'shipToCompany']
      end

      if attributes.has_key?(:'shipCompanyAccountNumber')
        self.ship_company_account_number = attributes[:'shipCompanyAccountNumber']
      end

      if attributes.has_key?(:'shipCompanyType')
        self.ship_company_type = attributes[:'shipCompanyType']
      end

      if attributes.has_key?(:'shipTaxId')
        self.ship_tax_id = attributes[:'shipTaxId']
      end

      if attributes.has_key?(:'shipSite')
        self.ship_site = attributes[:'shipSite']
      end

      if attributes.has_key?(:'shipContact')
        self.ship_contact = attributes[:'shipContact']
      end

      if attributes.has_key?(:'detail')
        if (value = attributes[:'detail']).is_a?(Array)
          self.detail = value
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
          gl_class == o.gl_class &&
          gl_type_id == o.gl_type_id &&
          document_date == o.document_date &&
          document_number == o.document_number &&
          document_type == o.document_type &&
          memo == o.memo &&
          description == o.description &&
          attention == o.attention &&
          sales_territory == o.sales_territory &&
          company == o.company &&
          company_type == o.company_type &&
          company_account_number == o.company_account_number &&
          site == o.site &&
          billing_terms == o.billing_terms &&
          billing_terms_xref == o.billing_terms_xref &&
          due_days == o.due_days &&
          due_date == o.due_date &&
          email_delivery_flag == o.email_delivery_flag &&
          print_delivery_flag == o.print_delivery_flag &&
          agreement_pre_payment_flag == o.agreement_pre_payment_flag &&
          account_number == o.account_number &&
          billing_type == o.billing_type &&
          gl_entry_ids == o.gl_entry_ids &&
          purchase_order == o.purchase_order &&
          project == o.project &&
          currency == o.currency &&
          total == o.total &&
          sales_rep_id == o.sales_rep_id &&
          sales_rep_name == o.sales_rep_name &&
          taxable == o.taxable &&
          taxable_total == o.taxable_total &&
          tax_code == o.tax_code &&
          tax_group_rate == o.tax_group_rate &&
          piggy_back_flag == o.piggy_back_flag &&
          tax_account_number == o.tax_account_number &&
          sales_tax == o.sales_tax &&
          state_tax == o.state_tax &&
          county_tax == o.county_tax &&
          city_tax == o.city_tax &&
          taxable_amount1 == o.taxable_amount1 &&
          taxable_amount2 == o.taxable_amount2 &&
          taxable_amount3 == o.taxable_amount3 &&
          taxable_amount4 == o.taxable_amount4 &&
          taxable_amount5 == o.taxable_amount5 &&
          tax_agency_xref == o.tax_agency_xref &&
          state_tax_xref == o.state_tax_xref &&
          county_tax_xref == o.county_tax_xref &&
          tax_id == o.tax_id &&
          tax_dp_applied_flag == o.tax_dp_applied_flag &&
          use_avalara_flag == o.use_avalara_flag &&
          send_avalara_tax_flag == o.send_avalara_tax_flag &&
          ship_to_company == o.ship_to_company &&
          ship_company_account_number == o.ship_company_account_number &&
          ship_company_type == o.ship_company_type &&
          ship_tax_id == o.ship_tax_id &&
          ship_site == o.ship_site &&
          ship_contact == o.ship_contact &&
          detail == o.detail
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, gl_class, gl_type_id, document_date, document_number, document_type, memo, description, attention, sales_territory, company, company_type, company_account_number, site, billing_terms, billing_terms_xref, due_days, due_date, email_delivery_flag, print_delivery_flag, agreement_pre_payment_flag, account_number, billing_type, gl_entry_ids, purchase_order, project, currency, total, sales_rep_id, sales_rep_name, taxable, taxable_total, tax_code, tax_group_rate, piggy_back_flag, tax_account_number, sales_tax, state_tax, county_tax, city_tax, taxable_amount1, taxable_amount2, taxable_amount3, taxable_amount4, taxable_amount5, tax_agency_xref, state_tax_xref, county_tax_xref, tax_id, tax_dp_applied_flag, use_avalara_flag, send_avalara_tax_flag, ship_to_company, ship_company_account_number, ship_company_type, ship_tax_id, ship_site, ship_contact, detail].hash
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

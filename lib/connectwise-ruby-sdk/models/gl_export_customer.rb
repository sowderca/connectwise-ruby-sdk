
require 'date'

module ConnectWise

  class GLExportCustomer
    attr_accessor :company

    attr_accessor :company_type

    attr_accessor :contact

    attr_accessor :site

    attr_accessor :account_number

    attr_accessor :billing_terms

    attr_accessor :billing_terms_xref

    attr_accessor :due_days

    attr_accessor :taxable

    attr_accessor :tax_code

    attr_accessor :currency

    attr_accessor :state_tax_xref

    attr_accessor :county_tax_xref

    attr_accessor :city_tax_xref

    attr_accessor :country_tax_xref

    attr_accessor :composite_tax_xref

    attr_accessor :state_tax_rate

    attr_accessor :county_tax_rate

    attr_accessor :city_tax_rate

    attr_accessor :country_tax_rate

    attr_accessor :composite_tax_rate

    attr_accessor :tax_group_rate

    attr_accessor :tax_agency_xref

    attr_accessor :state_tax_agency_xref

    attr_accessor :county_tax_agency_xref

    attr_accessor :city_tax_agency_xref

    attr_accessor :country_tax_agency_xref

    attr_accessor :composite_tax_agency_xref


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'company' => :'company',
        :'company_type' => :'companyType',
        :'contact' => :'contact',
        :'site' => :'site',
        :'account_number' => :'accountNumber',
        :'billing_terms' => :'billingTerms',
        :'billing_terms_xref' => :'billingTermsXref',
        :'due_days' => :'dueDays',
        :'taxable' => :'taxable',
        :'tax_code' => :'taxCode',
        :'currency' => :'currency',
        :'state_tax_xref' => :'stateTaxXref',
        :'county_tax_xref' => :'countyTaxXref',
        :'city_tax_xref' => :'cityTaxXref',
        :'country_tax_xref' => :'countryTaxXref',
        :'composite_tax_xref' => :'compositeTaxXref',
        :'state_tax_rate' => :'stateTaxRate',
        :'county_tax_rate' => :'countyTaxRate',
        :'city_tax_rate' => :'cityTaxRate',
        :'country_tax_rate' => :'countryTaxRate',
        :'composite_tax_rate' => :'compositeTaxRate',
        :'tax_group_rate' => :'taxGroupRate',
        :'tax_agency_xref' => :'taxAgencyXref',
        :'state_tax_agency_xref' => :'stateTaxAgencyXref',
        :'county_tax_agency_xref' => :'countyTaxAgencyXref',
        :'city_tax_agency_xref' => :'cityTaxAgencyXref',
        :'country_tax_agency_xref' => :'countryTaxAgencyXref',
        :'composite_tax_agency_xref' => :'compositeTaxAgencyXref'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'company' => :'CompanyReference',
        :'company_type' => :'CompanyTypeReference',
        :'contact' => :'ContactReference',
        :'site' => :'SiteReference',
        :'account_number' => :'String',
        :'billing_terms' => :'BillingTermsReference',
        :'billing_terms_xref' => :'String',
        :'due_days' => :'Integer',
        :'taxable' => :'BOOLEAN',
        :'tax_code' => :'TaxCodeReference',
        :'currency' => :'CurrencyReference',
        :'state_tax_xref' => :'String',
        :'county_tax_xref' => :'String',
        :'city_tax_xref' => :'String',
        :'country_tax_xref' => :'String',
        :'composite_tax_xref' => :'String',
        :'state_tax_rate' => :'Float',
        :'county_tax_rate' => :'Float',
        :'city_tax_rate' => :'Float',
        :'country_tax_rate' => :'Float',
        :'composite_tax_rate' => :'Float',
        :'tax_group_rate' => :'Float',
        :'tax_agency_xref' => :'String',
        :'state_tax_agency_xref' => :'String',
        :'county_tax_agency_xref' => :'String',
        :'city_tax_agency_xref' => :'String',
        :'country_tax_agency_xref' => :'String',
        :'composite_tax_agency_xref' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

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

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
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

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
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

      if attributes.has_key?(:'countryTaxXref')
        self.country_tax_xref = attributes[:'countryTaxXref']
      end

      if attributes.has_key?(:'compositeTaxXref')
        self.composite_tax_xref = attributes[:'compositeTaxXref']
      end

      if attributes.has_key?(:'stateTaxRate')
        self.state_tax_rate = attributes[:'stateTaxRate']
      end

      if attributes.has_key?(:'countyTaxRate')
        self.county_tax_rate = attributes[:'countyTaxRate']
      end

      if attributes.has_key?(:'cityTaxRate')
        self.city_tax_rate = attributes[:'cityTaxRate']
      end

      if attributes.has_key?(:'countryTaxRate')
        self.country_tax_rate = attributes[:'countryTaxRate']
      end

      if attributes.has_key?(:'compositeTaxRate')
        self.composite_tax_rate = attributes[:'compositeTaxRate']
      end

      if attributes.has_key?(:'taxGroupRate')
        self.tax_group_rate = attributes[:'taxGroupRate']
      end

      if attributes.has_key?(:'taxAgencyXref')
        self.tax_agency_xref = attributes[:'taxAgencyXref']
      end

      if attributes.has_key?(:'stateTaxAgencyXref')
        self.state_tax_agency_xref = attributes[:'stateTaxAgencyXref']
      end

      if attributes.has_key?(:'countyTaxAgencyXref')
        self.county_tax_agency_xref = attributes[:'countyTaxAgencyXref']
      end

      if attributes.has_key?(:'cityTaxAgencyXref')
        self.city_tax_agency_xref = attributes[:'cityTaxAgencyXref']
      end

      if attributes.has_key?(:'countryTaxAgencyXref')
        self.country_tax_agency_xref = attributes[:'countryTaxAgencyXref']
      end

      if attributes.has_key?(:'compositeTaxAgencyXref')
        self.composite_tax_agency_xref = attributes[:'compositeTaxAgencyXref']
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
          company == o.company &&
          company_type == o.company_type &&
          contact == o.contact &&
          site == o.site &&
          account_number == o.account_number &&
          billing_terms == o.billing_terms &&
          billing_terms_xref == o.billing_terms_xref &&
          due_days == o.due_days &&
          taxable == o.taxable &&
          tax_code == o.tax_code &&
          currency == o.currency &&
          state_tax_xref == o.state_tax_xref &&
          county_tax_xref == o.county_tax_xref &&
          city_tax_xref == o.city_tax_xref &&
          country_tax_xref == o.country_tax_xref &&
          composite_tax_xref == o.composite_tax_xref &&
          state_tax_rate == o.state_tax_rate &&
          county_tax_rate == o.county_tax_rate &&
          city_tax_rate == o.city_tax_rate &&
          country_tax_rate == o.country_tax_rate &&
          composite_tax_rate == o.composite_tax_rate &&
          tax_group_rate == o.tax_group_rate &&
          tax_agency_xref == o.tax_agency_xref &&
          state_tax_agency_xref == o.state_tax_agency_xref &&
          county_tax_agency_xref == o.county_tax_agency_xref &&
          city_tax_agency_xref == o.city_tax_agency_xref &&
          country_tax_agency_xref == o.country_tax_agency_xref &&
          composite_tax_agency_xref == o.composite_tax_agency_xref
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [company, company_type, contact, site, account_number, billing_terms, billing_terms_xref, due_days, taxable, tax_code, currency, state_tax_xref, county_tax_xref, city_tax_xref, country_tax_xref, composite_tax_xref, state_tax_rate, county_tax_rate, city_tax_rate, country_tax_rate, composite_tax_rate, tax_group_rate, tax_agency_xref, state_tax_agency_xref, county_tax_agency_xref, city_tax_agency_xref, country_tax_agency_xref, composite_tax_agency_xref].hash
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

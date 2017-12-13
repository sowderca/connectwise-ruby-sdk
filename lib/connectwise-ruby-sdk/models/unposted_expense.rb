
require 'date'

module ConnectWise

  class UnpostedExpense
    attr_accessor :id

    attr_accessor :location_id

    attr_accessor :department_id

    attr_accessor :company

    attr_accessor :account_number

    attr_accessor :credit_account

    attr_accessor :expense_detail_id

    attr_accessor :expense_type

    attr_accessor :classification

    attr_accessor :gl_type

    attr_accessor :member

    attr_accessor :date_expense

    attr_accessor :charge_code

    attr_accessor :charge_description

    attr_accessor :in_policy

    attr_accessor :payment_method

    attr_accessor :currency

    attr_accessor :total

    attr_accessor :billable_amount

    attr_accessor :non_billable_amount

    attr_accessor :agreement

    attr_accessor :agreement_amount_covered

    attr_accessor :ticket

    attr_accessor :project

    attr_accessor :project_phase

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
        :'location_id' => :'locationId',
        :'department_id' => :'departmentId',
        :'company' => :'company',
        :'account_number' => :'accountNumber',
        :'credit_account' => :'creditAccount',
        :'expense_detail_id' => :'expenseDetailId',
        :'expense_type' => :'expenseType',
        :'classification' => :'classification',
        :'gl_type' => :'glType',
        :'member' => :'member',
        :'date_expense' => :'dateExpense',
        :'charge_code' => :'chargeCode',
        :'charge_description' => :'chargeDescription',
        :'in_policy' => :'inPolicy',
        :'payment_method' => :'paymentMethod',
        :'currency' => :'currency',
        :'total' => :'total',
        :'billable_amount' => :'billableAmount',
        :'non_billable_amount' => :'nonBillableAmount',
        :'agreement' => :'agreement',
        :'agreement_amount_covered' => :'agreementAmountCovered',
        :'ticket' => :'ticket',
        :'project' => :'project',
        :'project_phase' => :'projectPhase',
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
        :'date_closed' => :'dateClosed',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'location_id' => :'Integer',
        :'department_id' => :'Integer',
        :'company' => :'CompanyReference',
        :'account_number' => :'String',
        :'credit_account' => :'String',
        :'expense_detail_id' => :'Integer',
        :'expense_type' => :'ExpenseTypeReference',
        :'classification' => :'String',
        :'gl_type' => :'String',
        :'member' => :'MemberReference',
        :'date_expense' => :'DateTime',
        :'charge_code' => :'ChargeCodeReference',
        :'charge_description' => :'String',
        :'in_policy' => :'BOOLEAN',
        :'payment_method' => :'PaymentMethodReference',
        :'currency' => :'CurrencyReference',
        :'total' => :'Float',
        :'billable_amount' => :'Float',
        :'non_billable_amount' => :'Float',
        :'agreement' => :'AgreementReference',
        :'agreement_amount_covered' => :'Float',
        :'ticket' => :'TicketReference',
        :'project' => :'ProjectReference',
        :'project_phase' => :'ProjectPhaseReference',
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

      if attributes.has_key?(:'creditAccount')
        self.credit_account = attributes[:'creditAccount']
      end

      if attributes.has_key?(:'expenseDetailId')
        self.expense_detail_id = attributes[:'expenseDetailId']
      end

      if attributes.has_key?(:'expenseType')
        self.expense_type = attributes[:'expenseType']
      end

      if attributes.has_key?(:'classification')
        self.classification = attributes[:'classification']
      end

      if attributes.has_key?(:'glType')
        self.gl_type = attributes[:'glType']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'dateExpense')
        self.date_expense = attributes[:'dateExpense']
      end

      if attributes.has_key?(:'chargeCode')
        self.charge_code = attributes[:'chargeCode']
      end

      if attributes.has_key?(:'chargeDescription')
        self.charge_description = attributes[:'chargeDescription']
      end

      if attributes.has_key?(:'inPolicy')
        self.in_policy = attributes[:'inPolicy']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'billableAmount')
        self.billable_amount = attributes[:'billableAmount']
      end

      if attributes.has_key?(:'nonBillableAmount')
        self.non_billable_amount = attributes[:'nonBillableAmount']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'agreementAmountCovered')
        self.agreement_amount_covered = attributes[:'agreementAmountCovered']
      end

      if attributes.has_key?(:'ticket')
        self.ticket = attributes[:'ticket']
      end

      if attributes.has_key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.has_key?(:'projectPhase')
        self.project_phase = attributes[:'projectPhase']
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
      classification_validator = EnumAttributeValidator.new('String', ["NonReimbursable", "Reimbursable", "Personal"])
      return false unless classification_validator.valid?(@classification)
      gl_type_validator = EnumAttributeValidator.new('String', ["AP", "AR", "EE", "EI", "EO", "IA", "IT", "P", "PF", "R", "RA", "RD", "RE", "RP", "ST", "SD", "ET", "RM", "FT", "PT"])
      return false unless gl_type_validator.valid?(@gl_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] classification Object to be assigned
    def classification=(classification)
      validator = EnumAttributeValidator.new('String', ["NonReimbursable", "Reimbursable", "Personal"])
      unless validator.valid?(classification)
        fail ArgumentError, "invalid value for 'classification', must be one of #{validator.allowable_values}."
      end
      @classification = classification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gl_type Object to be assigned
    def gl_type=(gl_type)
      validator = EnumAttributeValidator.new('String', ["AP", "AR", "EE", "EI", "EO", "IA", "IT", "P", "PF", "R", "RA", "RD", "RE", "RP", "ST", "SD", "ET", "RM", "FT", "PT"])
      unless validator.valid?(gl_type)
        fail ArgumentError, "invalid value for 'gl_type', must be one of #{validator.allowable_values}."
      end
      @gl_type = gl_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          location_id == o.location_id &&
          department_id == o.department_id &&
          company == o.company &&
          account_number == o.account_number &&
          credit_account == o.credit_account &&
          expense_detail_id == o.expense_detail_id &&
          expense_type == o.expense_type &&
          classification == o.classification &&
          gl_type == o.gl_type &&
          member == o.member &&
          date_expense == o.date_expense &&
          charge_code == o.charge_code &&
          charge_description == o.charge_description &&
          in_policy == o.in_policy &&
          payment_method == o.payment_method &&
          currency == o.currency &&
          total == o.total &&
          billable_amount == o.billable_amount &&
          non_billable_amount == o.non_billable_amount &&
          agreement == o.agreement &&
          agreement_amount_covered == o.agreement_amount_covered &&
          ticket == o.ticket &&
          project == o.project &&
          project_phase == o.project_phase &&
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
      [id, location_id, department_id, company, account_number, credit_account, expense_detail_id, expense_type, classification, gl_type, member, date_expense, charge_code, charge_description, in_policy, payment_method, currency, total, billable_amount, non_billable_amount, agreement, agreement_amount_covered, ticket, project, project_phase, tax_code, avalara_tax_flag, item_taxable_flag, sales_tax_amount, state_tax_flag, state_tax_xref, state_tax_amount, county_tax_flag, county_tax_xref, county_tax_amount, city_tax_flag, city_tax_xref, city_tax_amount, country_tax_flag, country_tax_xref, country_tax_amount, composite_tax_flag, composite_tax_xref, composite_tax_amount, date_closed, _info].hash
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

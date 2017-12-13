
require 'date'

module ConnectWise

  class Commission
    attr_accessor :id

    attr_accessor :member

    attr_accessor :commission_percent

    attr_accessor :date_start

    attr_accessor :date_end

    attr_accessor :location

    attr_accessor :department

    attr_accessor :company

    attr_accessor :site

    attr_accessor :agreement

    attr_accessor :project

    attr_accessor :service_board

    attr_accessor :ticket

    attr_accessor :territory

    attr_accessor :billing_method

    attr_accessor :service_type

    attr_accessor :project_board

    attr_accessor :project_type

    attr_accessor :agreement_type

    attr_accessor :number_of_months

    attr_accessor :product_category

    attr_accessor :product_sub_category

    attr_accessor :item

    attr_accessor :commission_basis

    attr_accessor :invoice_option

    attr_accessor :services_flag

    attr_accessor :agreements_flag

    attr_accessor :products_flag

    attr_accessor :my_opportunities_flag

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
        :'member' => :'member',
        :'commission_percent' => :'commissionPercent',
        :'date_start' => :'dateStart',
        :'date_end' => :'dateEnd',
        :'location' => :'location',
        :'department' => :'department',
        :'company' => :'company',
        :'site' => :'site',
        :'agreement' => :'agreement',
        :'project' => :'project',
        :'service_board' => :'serviceBoard',
        :'ticket' => :'ticket',
        :'territory' => :'territory',
        :'billing_method' => :'billingMethod',
        :'service_type' => :'serviceType',
        :'project_board' => :'projectBoard',
        :'project_type' => :'projectType',
        :'agreement_type' => :'agreementType',
        :'number_of_months' => :'numberOfMonths',
        :'product_category' => :'productCategory',
        :'product_sub_category' => :'productSubCategory',
        :'item' => :'item',
        :'commission_basis' => :'commissionBasis',
        :'invoice_option' => :'invoiceOption',
        :'services_flag' => :'servicesFlag',
        :'agreements_flag' => :'agreementsFlag',
        :'products_flag' => :'productsFlag',
        :'my_opportunities_flag' => :'myOpportunitiesFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'member' => :'MemberReference',
        :'commission_percent' => :'Float',
        :'date_start' => :'DateTime',
        :'date_end' => :'DateTime',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'company' => :'CompanyReference',
        :'site' => :'SiteReference',
        :'agreement' => :'AgreementReference',
        :'project' => :'ProjectReference',
        :'service_board' => :'BoardReference',
        :'ticket' => :'TicketReference',
        :'territory' => :'SystemLocationReference',
        :'billing_method' => :'String',
        :'service_type' => :'ServiceTypeReference',
        :'project_board' => :'ProjectBoardReference',
        :'project_type' => :'ProjectTypeReference',
        :'agreement_type' => :'AgreementTypeReference',
        :'number_of_months' => :'Integer',
        :'product_category' => :'ProductCategoryReference',
        :'product_sub_category' => :'ProductSubCategoryReference',
        :'item' => :'IvItemReference',
        :'commission_basis' => :'String',
        :'invoice_option' => :'String',
        :'services_flag' => :'BOOLEAN',
        :'agreements_flag' => :'BOOLEAN',
        :'products_flag' => :'BOOLEAN',
        :'my_opportunities_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'commissionPercent')
        self.commission_percent = attributes[:'commissionPercent']
      end

      if attributes.has_key?(:'dateStart')
        self.date_start = attributes[:'dateStart']
      end

      if attributes.has_key?(:'dateEnd')
        self.date_end = attributes[:'dateEnd']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.has_key?(:'serviceBoard')
        self.service_board = attributes[:'serviceBoard']
      end

      if attributes.has_key?(:'ticket')
        self.ticket = attributes[:'ticket']
      end

      if attributes.has_key?(:'territory')
        self.territory = attributes[:'territory']
      end

      if attributes.has_key?(:'billingMethod')
        self.billing_method = attributes[:'billingMethod']
      end

      if attributes.has_key?(:'serviceType')
        self.service_type = attributes[:'serviceType']
      end

      if attributes.has_key?(:'projectBoard')
        self.project_board = attributes[:'projectBoard']
      end

      if attributes.has_key?(:'projectType')
        self.project_type = attributes[:'projectType']
      end

      if attributes.has_key?(:'agreementType')
        self.agreement_type = attributes[:'agreementType']
      end

      if attributes.has_key?(:'numberOfMonths')
        self.number_of_months = attributes[:'numberOfMonths']
      end

      if attributes.has_key?(:'productCategory')
        self.product_category = attributes[:'productCategory']
      end

      if attributes.has_key?(:'productSubCategory')
        self.product_sub_category = attributes[:'productSubCategory']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'commissionBasis')
        self.commission_basis = attributes[:'commissionBasis']
      end

      if attributes.has_key?(:'invoiceOption')
        self.invoice_option = attributes[:'invoiceOption']
      end

      if attributes.has_key?(:'servicesFlag')
        self.services_flag = attributes[:'servicesFlag']
      end

      if attributes.has_key?(:'agreementsFlag')
        self.agreements_flag = attributes[:'agreementsFlag']
      end

      if attributes.has_key?(:'productsFlag')
        self.products_flag = attributes[:'productsFlag']
      end

      if attributes.has_key?(:'myOpportunitiesFlag')
        self.my_opportunities_flag = attributes[:'myOpportunitiesFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @member.nil?
        invalid_properties.push("invalid value for 'member', member cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @member.nil?
      billing_method_validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      return false unless billing_method_validator.valid?(@billing_method)
      commission_basis_validator = EnumAttributeValidator.new('String', ["SalesAmount", "GrossProfit"])
      return false unless commission_basis_validator.valid?(@commission_basis)
      invoice_option_validator = EnumAttributeValidator.new('String', ["PaidInvoices", "AllInvoices"])
      return false unless invoice_option_validator.valid?(@invoice_option)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_method Object to be assigned
    def billing_method=(billing_method)
      validator = EnumAttributeValidator.new('String', ["Agreement", "CreditMemo", "DownPayment", "Miscellaneous", "Progress", "Standard"])
      unless validator.valid?(billing_method)
        fail ArgumentError, "invalid value for 'billing_method', must be one of #{validator.allowable_values}."
      end
      @billing_method = billing_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] commission_basis Object to be assigned
    def commission_basis=(commission_basis)
      validator = EnumAttributeValidator.new('String', ["SalesAmount", "GrossProfit"])
      unless validator.valid?(commission_basis)
        fail ArgumentError, "invalid value for 'commission_basis', must be one of #{validator.allowable_values}."
      end
      @commission_basis = commission_basis
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_option Object to be assigned
    def invoice_option=(invoice_option)
      validator = EnumAttributeValidator.new('String', ["PaidInvoices", "AllInvoices"])
      unless validator.valid?(invoice_option)
        fail ArgumentError, "invalid value for 'invoice_option', must be one of #{validator.allowable_values}."
      end
      @invoice_option = invoice_option
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          member == o.member &&
          commission_percent == o.commission_percent &&
          date_start == o.date_start &&
          date_end == o.date_end &&
          location == o.location &&
          department == o.department &&
          company == o.company &&
          site == o.site &&
          agreement == o.agreement &&
          project == o.project &&
          service_board == o.service_board &&
          ticket == o.ticket &&
          territory == o.territory &&
          billing_method == o.billing_method &&
          service_type == o.service_type &&
          project_board == o.project_board &&
          project_type == o.project_type &&
          agreement_type == o.agreement_type &&
          number_of_months == o.number_of_months &&
          product_category == o.product_category &&
          product_sub_category == o.product_sub_category &&
          item == o.item &&
          commission_basis == o.commission_basis &&
          invoice_option == o.invoice_option &&
          services_flag == o.services_flag &&
          agreements_flag == o.agreements_flag &&
          products_flag == o.products_flag &&
          my_opportunities_flag == o.my_opportunities_flag &&
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
      [id, member, commission_percent, date_start, date_end, location, department, company, site, agreement, project, service_board, ticket, territory, billing_method, service_type, project_board, project_type, agreement_type, number_of_months, product_category, product_sub_category, item, commission_basis, invoice_option, services_flag, agreements_flag, products_flag, my_opportunities_flag, _info].hash
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

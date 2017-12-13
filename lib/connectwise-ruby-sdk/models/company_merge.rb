
require 'date'

module ConnectWise

  class CompanyMerge
    attr_accessor :to_company_id

    attr_accessor :name

    attr_accessor :identifier

    attr_accessor :status

    attr_accessor :type

    attr_accessor :primary_address

    attr_accessor :primary_contact

    attr_accessor :phone

    attr_accessor :fax

    attr_accessor :website

    attr_accessor :market

    attr_accessor :territory

    attr_accessor :revenue

    attr_accessor :revenue_year

    attr_accessor :number_of_employees

    attr_accessor :sic_code

    attr_accessor :date_acquired

    attr_accessor :time_zone

    attr_accessor :source_list

    attr_accessor :user_defined_field1

    attr_accessor :user_defined_field2

    attr_accessor :user_defined_field3

    attr_accessor :user_defined_field4

    attr_accessor :user_defined_field5

    attr_accessor :user_defined_field6

    attr_accessor :user_defined_field7

    attr_accessor :user_defined_field8

    attr_accessor :user_defined_field9

    attr_accessor :user_defined_field10

    attr_accessor :billing_address

    attr_accessor :billing_contact

    attr_accessor :tax_code

    attr_accessor :account_number

    attr_accessor :billing_terms

    attr_accessor :notes

    attr_accessor :sites

    attr_accessor :activities

    attr_accessor :opportunities

    attr_accessor :services

    attr_accessor :projects

    attr_accessor :contacts

    attr_accessor :documents

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
        :'to_company_id' => :'toCompanyId',
        :'name' => :'name',
        :'identifier' => :'identifier',
        :'status' => :'status',
        :'type' => :'type',
        :'primary_address' => :'primaryAddress',
        :'primary_contact' => :'primaryContact',
        :'phone' => :'phone',
        :'fax' => :'fax',
        :'website' => :'website',
        :'market' => :'market',
        :'territory' => :'territory',
        :'revenue' => :'revenue',
        :'revenue_year' => :'revenueYear',
        :'number_of_employees' => :'numberOfEmployees',
        :'sic_code' => :'sicCode',
        :'date_acquired' => :'dateAcquired',
        :'time_zone' => :'timeZone',
        :'source_list' => :'sourceList',
        :'user_defined_field1' => :'userDefinedField1',
        :'user_defined_field2' => :'userDefinedField2',
        :'user_defined_field3' => :'userDefinedField3',
        :'user_defined_field4' => :'userDefinedField4',
        :'user_defined_field5' => :'userDefinedField5',
        :'user_defined_field6' => :'userDefinedField6',
        :'user_defined_field7' => :'userDefinedField7',
        :'user_defined_field8' => :'userDefinedField8',
        :'user_defined_field9' => :'userDefinedField9',
        :'user_defined_field10' => :'userDefinedField10',
        :'billing_address' => :'billingAddress',
        :'billing_contact' => :'billingContact',
        :'tax_code' => :'taxCode',
        :'account_number' => :'accountNumber',
        :'billing_terms' => :'billingTerms',
        :'notes' => :'notes',
        :'sites' => :'sites',
        :'activities' => :'activities',
        :'opportunities' => :'opportunities',
        :'services' => :'services',
        :'projects' => :'projects',
        :'contacts' => :'contacts',
        :'documents' => :'documents'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'to_company_id' => :'Integer',
        :'name' => :'String',
        :'identifier' => :'String',
        :'status' => :'String',
        :'type' => :'String',
        :'primary_address' => :'String',
        :'primary_contact' => :'String',
        :'phone' => :'String',
        :'fax' => :'String',
        :'website' => :'String',
        :'market' => :'String',
        :'territory' => :'String',
        :'revenue' => :'String',
        :'revenue_year' => :'String',
        :'number_of_employees' => :'String',
        :'sic_code' => :'String',
        :'date_acquired' => :'String',
        :'time_zone' => :'String',
        :'source_list' => :'String',
        :'user_defined_field1' => :'String',
        :'user_defined_field2' => :'String',
        :'user_defined_field3' => :'String',
        :'user_defined_field4' => :'String',
        :'user_defined_field5' => :'String',
        :'user_defined_field6' => :'String',
        :'user_defined_field7' => :'String',
        :'user_defined_field8' => :'String',
        :'user_defined_field9' => :'String',
        :'user_defined_field10' => :'String',
        :'billing_address' => :'String',
        :'billing_contact' => :'String',
        :'tax_code' => :'String',
        :'account_number' => :'String',
        :'billing_terms' => :'String',
        :'notes' => :'String',
        :'sites' => :'String',
        :'activities' => :'String',
        :'opportunities' => :'String',
        :'services' => :'String',
        :'projects' => :'String',
        :'contacts' => :'String',
        :'documents' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'toCompanyId')
        self.to_company_id = attributes[:'toCompanyId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'primaryAddress')
        self.primary_address = attributes[:'primaryAddress']
      end

      if attributes.has_key?(:'primaryContact')
        self.primary_contact = attributes[:'primaryContact']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.has_key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.has_key?(:'market')
        self.market = attributes[:'market']
      end

      if attributes.has_key?(:'territory')
        self.territory = attributes[:'territory']
      end

      if attributes.has_key?(:'revenue')
        self.revenue = attributes[:'revenue']
      end

      if attributes.has_key?(:'revenueYear')
        self.revenue_year = attributes[:'revenueYear']
      end

      if attributes.has_key?(:'numberOfEmployees')
        self.number_of_employees = attributes[:'numberOfEmployees']
      end

      if attributes.has_key?(:'sicCode')
        self.sic_code = attributes[:'sicCode']
      end

      if attributes.has_key?(:'dateAcquired')
        self.date_acquired = attributes[:'dateAcquired']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'sourceList')
        self.source_list = attributes[:'sourceList']
      end

      if attributes.has_key?(:'userDefinedField1')
        self.user_defined_field1 = attributes[:'userDefinedField1']
      end

      if attributes.has_key?(:'userDefinedField2')
        self.user_defined_field2 = attributes[:'userDefinedField2']
      end

      if attributes.has_key?(:'userDefinedField3')
        self.user_defined_field3 = attributes[:'userDefinedField3']
      end

      if attributes.has_key?(:'userDefinedField4')
        self.user_defined_field4 = attributes[:'userDefinedField4']
      end

      if attributes.has_key?(:'userDefinedField5')
        self.user_defined_field5 = attributes[:'userDefinedField5']
      end

      if attributes.has_key?(:'userDefinedField6')
        self.user_defined_field6 = attributes[:'userDefinedField6']
      end

      if attributes.has_key?(:'userDefinedField7')
        self.user_defined_field7 = attributes[:'userDefinedField7']
      end

      if attributes.has_key?(:'userDefinedField8')
        self.user_defined_field8 = attributes[:'userDefinedField8']
      end

      if attributes.has_key?(:'userDefinedField9')
        self.user_defined_field9 = attributes[:'userDefinedField9']
      end

      if attributes.has_key?(:'userDefinedField10')
        self.user_defined_field10 = attributes[:'userDefinedField10']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'billingContact')
        self.billing_contact = attributes[:'billingContact']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'sites')
        self.sites = attributes[:'sites']
      end

      if attributes.has_key?(:'activities')
        self.activities = attributes[:'activities']
      end

      if attributes.has_key?(:'opportunities')
        self.opportunities = attributes[:'opportunities']
      end

      if attributes.has_key?(:'services')
        self.services = attributes[:'services']
      end

      if attributes.has_key?(:'projects')
        self.projects = attributes[:'projects']
      end

      if attributes.has_key?(:'contacts')
        self.contacts = attributes[:'contacts']
      end

      if attributes.has_key?(:'documents')
        self.documents = attributes[:'documents']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @to_company_id.nil?
        invalid_properties.push("invalid value for 'to_company_id', to_company_id cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @to_company_id.nil?
      name_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless name_validator.valid?(@name)
      identifier_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless identifier_validator.valid?(@identifier)
      status_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless status_validator.valid?(@status)
      type_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless type_validator.valid?(@type)
      primary_address_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless primary_address_validator.valid?(@primary_address)
      primary_contact_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless primary_contact_validator.valid?(@primary_contact)
      phone_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless phone_validator.valid?(@phone)
      fax_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless fax_validator.valid?(@fax)
      website_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless website_validator.valid?(@website)
      market_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless market_validator.valid?(@market)
      territory_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless territory_validator.valid?(@territory)
      revenue_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless revenue_validator.valid?(@revenue)
      revenue_year_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless revenue_year_validator.valid?(@revenue_year)
      number_of_employees_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless number_of_employees_validator.valid?(@number_of_employees)
      sic_code_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless sic_code_validator.valid?(@sic_code)
      date_acquired_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless date_acquired_validator.valid?(@date_acquired)
      time_zone_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless time_zone_validator.valid?(@time_zone)
      source_list_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless source_list_validator.valid?(@source_list)
      user_defined_field1_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field1_validator.valid?(@user_defined_field1)
      user_defined_field2_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field2_validator.valid?(@user_defined_field2)
      user_defined_field3_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field3_validator.valid?(@user_defined_field3)
      user_defined_field4_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field4_validator.valid?(@user_defined_field4)
      user_defined_field5_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field5_validator.valid?(@user_defined_field5)
      user_defined_field6_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field6_validator.valid?(@user_defined_field6)
      user_defined_field7_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field7_validator.valid?(@user_defined_field7)
      user_defined_field8_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field8_validator.valid?(@user_defined_field8)
      user_defined_field9_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field9_validator.valid?(@user_defined_field9)
      user_defined_field10_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless user_defined_field10_validator.valid?(@user_defined_field10)
      billing_address_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless billing_address_validator.valid?(@billing_address)
      billing_contact_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless billing_contact_validator.valid?(@billing_contact)
      tax_code_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless tax_code_validator.valid?(@tax_code)
      account_number_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless account_number_validator.valid?(@account_number)
      billing_terms_validator = EnumAttributeValidator.new('String', ["From", "To"])
      return false unless billing_terms_validator.valid?(@billing_terms)
      notes_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless notes_validator.valid?(@notes)
      sites_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless sites_validator.valid?(@sites)
      activities_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless activities_validator.valid?(@activities)
      opportunities_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless opportunities_validator.valid?(@opportunities)
      services_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless services_validator.valid?(@services)
      projects_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless projects_validator.valid?(@projects)
      contacts_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless contacts_validator.valid?(@contacts)
      documents_validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      return false unless documents_validator.valid?(@documents)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(name)
        fail ArgumentError, "invalid value for 'name', must be one of #{validator.allowable_values}."
      end
      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] identifier Object to be assigned
    def identifier=(identifier)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(identifier)
        fail ArgumentError, "invalid value for 'identifier', must be one of #{validator.allowable_values}."
      end
      @identifier = identifier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_address Object to be assigned
    def primary_address=(primary_address)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(primary_address)
        fail ArgumentError, "invalid value for 'primary_address', must be one of #{validator.allowable_values}."
      end
      @primary_address = primary_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_contact Object to be assigned
    def primary_contact=(primary_contact)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(primary_contact)
        fail ArgumentError, "invalid value for 'primary_contact', must be one of #{validator.allowable_values}."
      end
      @primary_contact = primary_contact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(phone)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(phone)
        fail ArgumentError, "invalid value for 'phone', must be one of #{validator.allowable_values}."
      end
      @phone = phone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fax Object to be assigned
    def fax=(fax)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(fax)
        fail ArgumentError, "invalid value for 'fax', must be one of #{validator.allowable_values}."
      end
      @fax = fax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] website Object to be assigned
    def website=(website)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(website)
        fail ArgumentError, "invalid value for 'website', must be one of #{validator.allowable_values}."
      end
      @website = website
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] market Object to be assigned
    def market=(market)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(market)
        fail ArgumentError, "invalid value for 'market', must be one of #{validator.allowable_values}."
      end
      @market = market
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] territory Object to be assigned
    def territory=(territory)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(territory)
        fail ArgumentError, "invalid value for 'territory', must be one of #{validator.allowable_values}."
      end
      @territory = territory
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] revenue Object to be assigned
    def revenue=(revenue)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(revenue)
        fail ArgumentError, "invalid value for 'revenue', must be one of #{validator.allowable_values}."
      end
      @revenue = revenue
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] revenue_year Object to be assigned
    def revenue_year=(revenue_year)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(revenue_year)
        fail ArgumentError, "invalid value for 'revenue_year', must be one of #{validator.allowable_values}."
      end
      @revenue_year = revenue_year
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number_of_employees Object to be assigned
    def number_of_employees=(number_of_employees)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(number_of_employees)
        fail ArgumentError, "invalid value for 'number_of_employees', must be one of #{validator.allowable_values}."
      end
      @number_of_employees = number_of_employees
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sic_code Object to be assigned
    def sic_code=(sic_code)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(sic_code)
        fail ArgumentError, "invalid value for 'sic_code', must be one of #{validator.allowable_values}."
      end
      @sic_code = sic_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_acquired Object to be assigned
    def date_acquired=(date_acquired)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(date_acquired)
        fail ArgumentError, "invalid value for 'date_acquired', must be one of #{validator.allowable_values}."
      end
      @date_acquired = date_acquired
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] time_zone Object to be assigned
    def time_zone=(time_zone)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(time_zone)
        fail ArgumentError, "invalid value for 'time_zone', must be one of #{validator.allowable_values}."
      end
      @time_zone = time_zone
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_list Object to be assigned
    def source_list=(source_list)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(source_list)
        fail ArgumentError, "invalid value for 'source_list', must be one of #{validator.allowable_values}."
      end
      @source_list = source_list
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field1 Object to be assigned
    def user_defined_field1=(user_defined_field1)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field1)
        fail ArgumentError, "invalid value for 'user_defined_field1', must be one of #{validator.allowable_values}."
      end
      @user_defined_field1 = user_defined_field1
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field2 Object to be assigned
    def user_defined_field2=(user_defined_field2)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field2)
        fail ArgumentError, "invalid value for 'user_defined_field2', must be one of #{validator.allowable_values}."
      end
      @user_defined_field2 = user_defined_field2
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field3 Object to be assigned
    def user_defined_field3=(user_defined_field3)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field3)
        fail ArgumentError, "invalid value for 'user_defined_field3', must be one of #{validator.allowable_values}."
      end
      @user_defined_field3 = user_defined_field3
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field4 Object to be assigned
    def user_defined_field4=(user_defined_field4)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field4)
        fail ArgumentError, "invalid value for 'user_defined_field4', must be one of #{validator.allowable_values}."
      end
      @user_defined_field4 = user_defined_field4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field5 Object to be assigned
    def user_defined_field5=(user_defined_field5)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field5)
        fail ArgumentError, "invalid value for 'user_defined_field5', must be one of #{validator.allowable_values}."
      end
      @user_defined_field5 = user_defined_field5
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field6 Object to be assigned
    def user_defined_field6=(user_defined_field6)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field6)
        fail ArgumentError, "invalid value for 'user_defined_field6', must be one of #{validator.allowable_values}."
      end
      @user_defined_field6 = user_defined_field6
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field7 Object to be assigned
    def user_defined_field7=(user_defined_field7)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field7)
        fail ArgumentError, "invalid value for 'user_defined_field7', must be one of #{validator.allowable_values}."
      end
      @user_defined_field7 = user_defined_field7
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field8 Object to be assigned
    def user_defined_field8=(user_defined_field8)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field8)
        fail ArgumentError, "invalid value for 'user_defined_field8', must be one of #{validator.allowable_values}."
      end
      @user_defined_field8 = user_defined_field8
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field9 Object to be assigned
    def user_defined_field9=(user_defined_field9)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field9)
        fail ArgumentError, "invalid value for 'user_defined_field9', must be one of #{validator.allowable_values}."
      end
      @user_defined_field9 = user_defined_field9
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_defined_field10 Object to be assigned
    def user_defined_field10=(user_defined_field10)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(user_defined_field10)
        fail ArgumentError, "invalid value for 'user_defined_field10', must be one of #{validator.allowable_values}."
      end
      @user_defined_field10 = user_defined_field10
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address Object to be assigned
    def billing_address=(billing_address)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(billing_address)
        fail ArgumentError, "invalid value for 'billing_address', must be one of #{validator.allowable_values}."
      end
      @billing_address = billing_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_contact Object to be assigned
    def billing_contact=(billing_contact)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(billing_contact)
        fail ArgumentError, "invalid value for 'billing_contact', must be one of #{validator.allowable_values}."
      end
      @billing_contact = billing_contact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(tax_code)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(tax_code)
        fail ArgumentError, "invalid value for 'tax_code', must be one of #{validator.allowable_values}."
      end
      @tax_code = tax_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(account_number)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(account_number)
        fail ArgumentError, "invalid value for 'account_number', must be one of #{validator.allowable_values}."
      end
      @account_number = account_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_terms Object to be assigned
    def billing_terms=(billing_terms)
      validator = EnumAttributeValidator.new('String', ["From", "To"])
      unless validator.valid?(billing_terms)
        fail ArgumentError, "invalid value for 'billing_terms', must be one of #{validator.allowable_values}."
      end
      @billing_terms = billing_terms
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notes Object to be assigned
    def notes=(notes)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(notes)
        fail ArgumentError, "invalid value for 'notes', must be one of #{validator.allowable_values}."
      end
      @notes = notes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sites Object to be assigned
    def sites=(sites)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(sites)
        fail ArgumentError, "invalid value for 'sites', must be one of #{validator.allowable_values}."
      end
      @sites = sites
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activities Object to be assigned
    def activities=(activities)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(activities)
        fail ArgumentError, "invalid value for 'activities', must be one of #{validator.allowable_values}."
      end
      @activities = activities
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] opportunities Object to be assigned
    def opportunities=(opportunities)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(opportunities)
        fail ArgumentError, "invalid value for 'opportunities', must be one of #{validator.allowable_values}."
      end
      @opportunities = opportunities
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] services Object to be assigned
    def services=(services)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(services)
        fail ArgumentError, "invalid value for 'services', must be one of #{validator.allowable_values}."
      end
      @services = services
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] projects Object to be assigned
    def projects=(projects)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(projects)
        fail ArgumentError, "invalid value for 'projects', must be one of #{validator.allowable_values}."
      end
      @projects = projects
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contacts Object to be assigned
    def contacts=(contacts)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(contacts)
        fail ArgumentError, "invalid value for 'contacts', must be one of #{validator.allowable_values}."
      end
      @contacts = contacts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(documents)
      validator = EnumAttributeValidator.new('String', ["Discard", "Merge"])
      unless validator.valid?(documents)
        fail ArgumentError, "invalid value for 'documents', must be one of #{validator.allowable_values}."
      end
      @documents = documents
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          to_company_id == o.to_company_id &&
          name == o.name &&
          identifier == o.identifier &&
          status == o.status &&
          type == o.type &&
          primary_address == o.primary_address &&
          primary_contact == o.primary_contact &&
          phone == o.phone &&
          fax == o.fax &&
          website == o.website &&
          market == o.market &&
          territory == o.territory &&
          revenue == o.revenue &&
          revenue_year == o.revenue_year &&
          number_of_employees == o.number_of_employees &&
          sic_code == o.sic_code &&
          date_acquired == o.date_acquired &&
          time_zone == o.time_zone &&
          source_list == o.source_list &&
          user_defined_field1 == o.user_defined_field1 &&
          user_defined_field2 == o.user_defined_field2 &&
          user_defined_field3 == o.user_defined_field3 &&
          user_defined_field4 == o.user_defined_field4 &&
          user_defined_field5 == o.user_defined_field5 &&
          user_defined_field6 == o.user_defined_field6 &&
          user_defined_field7 == o.user_defined_field7 &&
          user_defined_field8 == o.user_defined_field8 &&
          user_defined_field9 == o.user_defined_field9 &&
          user_defined_field10 == o.user_defined_field10 &&
          billing_address == o.billing_address &&
          billing_contact == o.billing_contact &&
          tax_code == o.tax_code &&
          account_number == o.account_number &&
          billing_terms == o.billing_terms &&
          notes == o.notes &&
          sites == o.sites &&
          activities == o.activities &&
          opportunities == o.opportunities &&
          services == o.services &&
          projects == o.projects &&
          contacts == o.contacts &&
          documents == o.documents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [to_company_id, name, identifier, status, type, primary_address, primary_contact, phone, fax, website, market, territory, revenue, revenue_year, number_of_employees, sic_code, date_acquired, time_zone, source_list, user_defined_field1, user_defined_field2, user_defined_field3, user_defined_field4, user_defined_field5, user_defined_field6, user_defined_field7, user_defined_field8, user_defined_field9, user_defined_field10, billing_address, billing_contact, tax_code, account_number, billing_terms, notes, sites, activities, opportunities, services, projects, contacts, documents].hash
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

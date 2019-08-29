
require 'date'

module ConnectWise

  class Company
    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :name

    attr_accessor :status

    attr_accessor :type

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :address_line1

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :address_line2

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :city

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :state

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :zip

    # At least one address field is required -- addressLine1, addressLine2, city, state, zip and/or country
    attr_accessor :country

    attr_accessor :phone_number

    attr_accessor :fax_number

    attr_accessor :website

    attr_accessor :territory_id

    attr_accessor :market_id

    attr_accessor :account_number

    attr_accessor :default_contact

    attr_accessor :date_acquired

    attr_accessor :sic_code

    attr_accessor :parent_company

    attr_accessor :annual_revenue

    attr_accessor :number_of_employees

    attr_accessor :ownership_type

    # The specified system time zone for the Company
    attr_accessor :time_zone

    attr_accessor :lead_source

    attr_accessor :lead_flag

    attr_accessor :unsubscribe_flag

    attr_accessor :calendar_id

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

    attr_accessor :vendor_identifier

    attr_accessor :tax_identifier

    # New companies will be created with the default tax code unless otherwise specified.
    attr_accessor :tax_code

    attr_accessor :billing_terms

    attr_accessor :invoice_template

    attr_accessor :pricing_schedule

    # Based on CompanyEntityType Report
    attr_accessor :company_entity_type

    attr_accessor :bill_to_company

    attr_accessor :billing_site

    attr_accessor :billing_contact

    attr_accessor :invoice_delivery_method

    attr_accessor :invoice_to_email_address

    attr_accessor :invoice_cc_email_address

    attr_accessor :deleted_flag

    attr_accessor :date_deleted

    attr_accessor :deleted_by

    attr_accessor :mobile_guid

    attr_accessor :facebook_url

    attr_accessor :twitter_url

    attr_accessor :linked_in_url

    attr_accessor :currency

    attr_accessor :territory_manager

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'identifier' => :'identifier',
        :'name' => :'name',
        :'status' => :'status',
        :'type' => :'type',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'country' => :'country',
        :'phone_number' => :'phoneNumber',
        :'fax_number' => :'faxNumber',
        :'website' => :'website',
        :'territory_id' => :'territoryId',
        :'market_id' => :'marketId',
        :'account_number' => :'accountNumber',
        :'default_contact' => :'defaultContact',
        :'date_acquired' => :'dateAcquired',
        :'sic_code' => :'sicCode',
        :'parent_company' => :'parentCompany',
        :'annual_revenue' => :'annualRevenue',
        :'number_of_employees' => :'numberOfEmployees',
        :'ownership_type' => :'ownershipType',
        :'time_zone' => :'timeZone',
        :'lead_source' => :'leadSource',
        :'lead_flag' => :'leadFlag',
        :'unsubscribe_flag' => :'unsubscribeFlag',
        :'calendar_id' => :'calendarId',
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
        :'vendor_identifier' => :'vendorIdentifier',
        :'tax_identifier' => :'taxIdentifier',
        :'tax_code' => :'taxCode',
        :'billing_terms' => :'billingTerms',
        :'invoice_template' => :'invoiceTemplate',
        :'pricing_schedule' => :'pricingSchedule',
        :'company_entity_type' => :'companyEntityType',
        :'bill_to_company' => :'billToCompany',
        :'billing_site' => :'billingSite',
        :'billing_contact' => :'billingContact',
        :'invoice_delivery_method' => :'invoiceDeliveryMethod',
        :'invoice_to_email_address' => :'invoiceToEmailAddress',
        :'invoice_cc_email_address' => :'invoiceCCEmailAddress',
        :'deleted_flag' => :'deletedFlag',
        :'date_deleted' => :'dateDeleted',
        :'deleted_by' => :'deletedBy',
        :'mobile_guid' => :'mobileGuid',
        :'facebook_url' => :'facebookUrl',
        :'twitter_url' => :'twitterUrl',
        :'linked_in_url' => :'linkedInUrl',
        :'currency' => :'currency',
        :'territory_manager' => :'territoryManager',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'name' => :'String',
        :'status' => :'CompanyStatusReference',
        :'type' => :'CompanyTypeReference',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'country' => :'CountryReference',
        :'phone_number' => :'String',
        :'fax_number' => :'String',
        :'website' => :'String',
        :'territory_id' => :'Integer',
        :'market_id' => :'Integer',
        :'account_number' => :'String',
        :'default_contact' => :'ContactReference',
        :'date_acquired' => :'DateTime',
        :'sic_code' => :'SicCodeReference',
        :'parent_company' => :'CompanyReference',
        :'annual_revenue' => :'Float',
        :'number_of_employees' => :'Integer',
        :'ownership_type' => :'OwnershipTypeReference',
        :'time_zone' => :'TimeZoneSetupReference',
        :'lead_source' => :'String',
        :'lead_flag' => :'BOOLEAN',
        :'unsubscribe_flag' => :'BOOLEAN',
        :'calendar_id' => :'Integer',
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
        :'vendor_identifier' => :'String',
        :'tax_identifier' => :'String',
        :'tax_code' => :'TaxCodeReference',
        :'billing_terms' => :'BillingTermsReference',
        :'invoice_template' => :'InvoiceTemplateReference',
        :'pricing_schedule' => :'PricingScheduleReference',
        :'company_entity_type' => :'EntityTypeReference',
        :'bill_to_company' => :'CompanyReference',
        :'billing_site' => :'SiteReference',
        :'billing_contact' => :'ContactReference',
        :'invoice_delivery_method' => :'BillingDeliveryReference',
        :'invoice_to_email_address' => :'String',
        :'invoice_cc_email_address' => :'String',
        :'deleted_flag' => :'BOOLEAN',
        :'date_deleted' => :'DateTime',
        :'deleted_by' => :'String',
        :'mobile_guid' => :'Guid',
        :'facebook_url' => :'String',
        :'twitter_url' => :'String',
        :'linked_in_url' => :'String',
        :'currency' => :'CurrencyReference',
        :'territory_manager' => :'MemberReference',
        :'_info' => :'Metadata',
        :'custom_fields' => :'Array<CustomFieldValue>'
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

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'addressLine1')
        self.address_line1 = attributes[:'addressLine1']
      end

      if attributes.has_key?(:'addressLine2')
        self.address_line2 = attributes[:'addressLine2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'faxNumber')
        self.fax_number = attributes[:'faxNumber']
      end

      if attributes.has_key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.has_key?(:'territoryId')
        self.territory_id = attributes[:'territoryId']
      end

      if attributes.has_key?(:'marketId')
        self.market_id = attributes[:'marketId']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'defaultContact')
        self.default_contact = attributes[:'defaultContact']
      end

      if attributes.has_key?(:'dateAcquired')
        self.date_acquired = attributes[:'dateAcquired']
      end

      if attributes.has_key?(:'sicCode')
        self.sic_code = attributes[:'sicCode']
      end

      if attributes.has_key?(:'parentCompany')
        self.parent_company = attributes[:'parentCompany']
      end

      if attributes.has_key?(:'annualRevenue')
        self.annual_revenue = attributes[:'annualRevenue']
      end

      if attributes.has_key?(:'numberOfEmployees')
        self.number_of_employees = attributes[:'numberOfEmployees']
      end

      if attributes.has_key?(:'ownershipType')
        self.ownership_type = attributes[:'ownershipType']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'leadSource')
        self.lead_source = attributes[:'leadSource']
      end

      if attributes.has_key?(:'leadFlag')
        self.lead_flag = attributes[:'leadFlag']
      end

      if attributes.has_key?(:'unsubscribeFlag')
        self.unsubscribe_flag = attributes[:'unsubscribeFlag']
      end

      if attributes.has_key?(:'calendarId')
        self.calendar_id = attributes[:'calendarId']
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

      if attributes.has_key?(:'vendorIdentifier')
        self.vendor_identifier = attributes[:'vendorIdentifier']
      end

      if attributes.has_key?(:'taxIdentifier')
        self.tax_identifier = attributes[:'taxIdentifier']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'invoiceTemplate')
        self.invoice_template = attributes[:'invoiceTemplate']
      end

      if attributes.has_key?(:'pricingSchedule')
        self.pricing_schedule = attributes[:'pricingSchedule']
      end

      if attributes.has_key?(:'companyEntityType')
        self.company_entity_type = attributes[:'companyEntityType']
      end

      if attributes.has_key?(:'billToCompany')
        self.bill_to_company = attributes[:'billToCompany']
      end

      if attributes.has_key?(:'billingSite')
        self.billing_site = attributes[:'billingSite']
      end

      if attributes.has_key?(:'billingContact')
        self.billing_contact = attributes[:'billingContact']
      end

      if attributes.has_key?(:'invoiceDeliveryMethod')
        self.invoice_delivery_method = attributes[:'invoiceDeliveryMethod']
      end

      if attributes.has_key?(:'invoiceToEmailAddress')
        self.invoice_to_email_address = attributes[:'invoiceToEmailAddress']
      end

      if attributes.has_key?(:'invoiceCCEmailAddress')
        self.invoice_cc_email_address = attributes[:'invoiceCCEmailAddress']
      end

      if attributes.has_key?(:'deletedFlag')
        self.deleted_flag = attributes[:'deletedFlag']
      end

      if attributes.has_key?(:'dateDeleted')
        self.date_deleted = attributes[:'dateDeleted']
      end

      if attributes.has_key?(:'deletedBy')
        self.deleted_by = attributes[:'deletedBy']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'facebookUrl')
        self.facebook_url = attributes[:'facebookUrl']
      end

      if attributes.has_key?(:'twitterUrl')
        self.twitter_url = attributes[:'twitterUrl']
      end

      if attributes.has_key?(:'linkedInUrl')
        self.linked_in_url = attributes[:'linkedInUrl']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'territoryManager')
        self.territory_manager = attributes[:'territoryManager']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @identifier.nil?
        invalid_properties.push("invalid value for 'identifier', identifier cannot be nil.")
      end

      if @identifier.to_s.length > 25
        invalid_properties.push("invalid value for 'identifier': #{@identifier} (length: #{@identifier.to_s.length}), the character length must be smaller than or equal to 25.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@address_line1.nil? && @address_line1.to_s.length > 50
        invalid_properties.push("invalid value for 'address_line1', the character length must be smaller than or equal to 50.")
      end

      if !@address_line2.nil? && @address_line2.to_s.length > 50
        invalid_properties.push("invalid value for 'address_line2', the character length must be smaller than or equal to 50.")
      end

      if !@city.nil? && @city.to_s.length > 50
        invalid_properties.push("invalid value for 'city', the character length must be smaller than or equal to 50.")
      end

      if !@state.nil? && @state.to_s.length > 50
        invalid_properties.push("invalid value for 'state', the character length must be smaller than or equal to 50.")
      end

      if !@zip.nil? && @zip.to_s.length > 12
        invalid_properties.push("invalid value for 'zip', the character length must be smaller than or equal to 12.")
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 30
        invalid_properties.push("invalid value for 'phone_number', the character length must be smaller than or equal to 30.")
      end

      if !@fax_number.nil? && @fax_number.to_s.length > 30
        invalid_properties.push("invalid value for 'fax_number', the character length must be smaller than or equal to 30.")
      end

      if !@website.nil? && @website.to_s.length > 255
        invalid_properties.push("invalid value for 'website', the character length must be smaller than or equal to 255.")
      end

      if !@account_number.nil? && @account_number.to_s.length > 100
        invalid_properties.push("invalid value for 'account_number', the character length must be smaller than or equal to 100.")
      end

      if !@lead_source.nil? && @lead_source.to_s.length > 50
        invalid_properties.push("invalid value for 'lead_source', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field1.nil? && @user_defined_field1.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field1', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field2.nil? && @user_defined_field2.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field2', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field3.nil? && @user_defined_field3.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field3', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field4.nil? && @user_defined_field4.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field4', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field5.nil? && @user_defined_field5.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field5', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field6.nil? && @user_defined_field6.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field6', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field7.nil? && @user_defined_field7.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field7', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field8.nil? && @user_defined_field8.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field8', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field9.nil? && @user_defined_field9.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field9', the character length must be smaller than or equal to 50.")
      end

      if !@user_defined_field10.nil? && @user_defined_field10.to_s.length > 50
        invalid_properties.push("invalid value for 'user_defined_field10', the character length must be smaller than or equal to 50.")
      end

      if !@vendor_identifier.nil? && @vendor_identifier.to_s.length > 100
        invalid_properties.push("invalid value for 'vendor_identifier', the character length must be smaller than or equal to 100.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @identifier.nil?
      return false if @identifier.to_s.length > 25
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@address_line1.nil? && @address_line1.to_s.length > 50
      return false if !@address_line2.nil? && @address_line2.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@state.nil? && @state.to_s.length > 50
      return false if !@zip.nil? && @zip.to_s.length > 12
      return false if !@phone_number.nil? && @phone_number.to_s.length > 30
      return false if !@fax_number.nil? && @fax_number.to_s.length > 30
      return false if !@website.nil? && @website.to_s.length > 255
      return false if !@account_number.nil? && @account_number.to_s.length > 100
      return false if !@lead_source.nil? && @lead_source.to_s.length > 50
      return false if !@user_defined_field1.nil? && @user_defined_field1.to_s.length > 50
      return false if !@user_defined_field2.nil? && @user_defined_field2.to_s.length > 50
      return false if !@user_defined_field3.nil? && @user_defined_field3.to_s.length > 50
      return false if !@user_defined_field4.nil? && @user_defined_field4.to_s.length > 50
      return false if !@user_defined_field5.nil? && @user_defined_field5.to_s.length > 50
      return false if !@user_defined_field6.nil? && @user_defined_field6.to_s.length > 50
      return false if !@user_defined_field7.nil? && @user_defined_field7.to_s.length > 50
      return false if !@user_defined_field8.nil? && @user_defined_field8.to_s.length > 50
      return false if !@user_defined_field9.nil? && @user_defined_field9.to_s.length > 50
      return false if !@user_defined_field10.nil? && @user_defined_field10.to_s.length > 50
      return false if !@vendor_identifier.nil? && @vendor_identifier.to_s.length > 100
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] identifier Value to be assigned
    def identifier=(identifier)
      if identifier.nil?
        fail ArgumentError, "identifier cannot be nil"
      end

      if identifier.to_s.length > 25
        fail ArgumentError, "invalid value for 'identifier', the character length must be smaller than or equal to 25."
      end

      @identifier = identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line1 Value to be assigned
    def address_line1=(address_line1)

      if !address_line1.nil? && address_line1.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_line1', the character length must be smaller than or equal to 50."
      end

      @address_line1 = address_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] address_line2 Value to be assigned
    def address_line2=(address_line2)

      if !address_line2.nil? && address_line2.to_s.length > 50
        fail ArgumentError, "invalid value for 'address_line2', the character length must be smaller than or equal to 50."
      end

      @address_line2 = address_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)

      if !city.nil? && city.to_s.length > 50
        fail ArgumentError, "invalid value for 'city', the character length must be smaller than or equal to 50."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)

      if !state.nil? && state.to_s.length > 50
        fail ArgumentError, "invalid value for 'state', the character length must be smaller than or equal to 50."
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip Value to be assigned
    def zip=(zip)

      if !zip.nil? && zip.to_s.length > 12
        fail ArgumentError, "invalid value for 'zip', the character length must be smaller than or equal to 12."
      end

      @zip = zip
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)

      if !phone_number.nil? && phone_number.to_s.length > 30
        fail ArgumentError, "invalid value for 'phone_number', the character length must be smaller than or equal to 30."
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] fax_number Value to be assigned
    def fax_number=(fax_number)

      if !fax_number.nil? && fax_number.to_s.length > 30
        fail ArgumentError, "invalid value for 'fax_number', the character length must be smaller than or equal to 30."
      end

      @fax_number = fax_number
    end

    # Custom attribute writer method with validation
    # @param [Object] website Value to be assigned
    def website=(website)

      if !website.nil? && website.to_s.length > 255
        fail ArgumentError, "invalid value for 'website', the character length must be smaller than or equal to 255."
      end

      @website = website
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)

      if !account_number.nil? && account_number.to_s.length > 100
        fail ArgumentError, "invalid value for 'account_number', the character length must be smaller than or equal to 100."
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] lead_source Value to be assigned
    def lead_source=(lead_source)

      if !lead_source.nil? && lead_source.to_s.length > 50
        fail ArgumentError, "invalid value for 'lead_source', the character length must be smaller than or equal to 50."
      end

      @lead_source = lead_source
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field1 Value to be assigned
    def user_defined_field1=(user_defined_field1)

      if !user_defined_field1.nil? && user_defined_field1.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field1', the character length must be smaller than or equal to 50."
      end

      @user_defined_field1 = user_defined_field1
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field2 Value to be assigned
    def user_defined_field2=(user_defined_field2)

      if !user_defined_field2.nil? && user_defined_field2.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field2', the character length must be smaller than or equal to 50."
      end

      @user_defined_field2 = user_defined_field2
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field3 Value to be assigned
    def user_defined_field3=(user_defined_field3)

      if !user_defined_field3.nil? && user_defined_field3.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field3', the character length must be smaller than or equal to 50."
      end

      @user_defined_field3 = user_defined_field3
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field4 Value to be assigned
    def user_defined_field4=(user_defined_field4)

      if !user_defined_field4.nil? && user_defined_field4.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field4', the character length must be smaller than or equal to 50."
      end

      @user_defined_field4 = user_defined_field4
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field5 Value to be assigned
    def user_defined_field5=(user_defined_field5)

      if !user_defined_field5.nil? && user_defined_field5.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field5', the character length must be smaller than or equal to 50."
      end

      @user_defined_field5 = user_defined_field5
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field6 Value to be assigned
    def user_defined_field6=(user_defined_field6)

      if !user_defined_field6.nil? && user_defined_field6.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field6', the character length must be smaller than or equal to 50."
      end

      @user_defined_field6 = user_defined_field6
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field7 Value to be assigned
    def user_defined_field7=(user_defined_field7)

      if !user_defined_field7.nil? && user_defined_field7.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field7', the character length must be smaller than or equal to 50."
      end

      @user_defined_field7 = user_defined_field7
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field8 Value to be assigned
    def user_defined_field8=(user_defined_field8)

      if !user_defined_field8.nil? && user_defined_field8.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field8', the character length must be smaller than or equal to 50."
      end

      @user_defined_field8 = user_defined_field8
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field9 Value to be assigned
    def user_defined_field9=(user_defined_field9)

      if !user_defined_field9.nil? && user_defined_field9.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field9', the character length must be smaller than or equal to 50."
      end

      @user_defined_field9 = user_defined_field9
    end

    # Custom attribute writer method with validation
    # @param [Object] user_defined_field10 Value to be assigned
    def user_defined_field10=(user_defined_field10)

      if !user_defined_field10.nil? && user_defined_field10.to_s.length > 50
        fail ArgumentError, "invalid value for 'user_defined_field10', the character length must be smaller than or equal to 50."
      end

      @user_defined_field10 = user_defined_field10
    end

    # Custom attribute writer method with validation
    # @param [Object] vendor_identifier Value to be assigned
    def vendor_identifier=(vendor_identifier)

      if !vendor_identifier.nil? && vendor_identifier.to_s.length > 100
        fail ArgumentError, "invalid value for 'vendor_identifier', the character length must be smaller than or equal to 100."
      end

      @vendor_identifier = vendor_identifier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          identifier == o.identifier &&
          name == o.name &&
          status == o.status &&
          type == o.type &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          phone_number == o.phone_number &&
          fax_number == o.fax_number &&
          website == o.website &&
          territory_id == o.territory_id &&
          market_id == o.market_id &&
          account_number == o.account_number &&
          default_contact == o.default_contact &&
          date_acquired == o.date_acquired &&
          sic_code == o.sic_code &&
          parent_company == o.parent_company &&
          annual_revenue == o.annual_revenue &&
          number_of_employees == o.number_of_employees &&
          ownership_type == o.ownership_type &&
          time_zone == o.time_zone &&
          lead_source == o.lead_source &&
          lead_flag == o.lead_flag &&
          unsubscribe_flag == o.unsubscribe_flag &&
          calendar_id == o.calendar_id &&
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
          vendor_identifier == o.vendor_identifier &&
          tax_identifier == o.tax_identifier &&
          tax_code == o.tax_code &&
          billing_terms == o.billing_terms &&
          invoice_template == o.invoice_template &&
          pricing_schedule == o.pricing_schedule &&
          company_entity_type == o.company_entity_type &&
          bill_to_company == o.bill_to_company &&
          billing_site == o.billing_site &&
          billing_contact == o.billing_contact &&
          invoice_delivery_method == o.invoice_delivery_method &&
          invoice_to_email_address == o.invoice_to_email_address &&
          invoice_cc_email_address == o.invoice_cc_email_address &&
          deleted_flag == o.deleted_flag &&
          date_deleted == o.date_deleted &&
          deleted_by == o.deleted_by &&
          mobile_guid == o.mobile_guid &&
          facebook_url == o.facebook_url &&
          twitter_url == o.twitter_url &&
          linked_in_url == o.linked_in_url &&
          currency == o.currency &&
          territory_manager == o.territory_manager &&
          _info == o._info &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, identifier, name, status, type, address_line1, address_line2, city, state, zip, country, phone_number, fax_number, website, territory_id, market_id, account_number, default_contact, date_acquired, sic_code, parent_company, annual_revenue, number_of_employees, ownership_type, time_zone, lead_source, lead_flag, unsubscribe_flag, calendar_id, user_defined_field1, user_defined_field2, user_defined_field3, user_defined_field4, user_defined_field5, user_defined_field6, user_defined_field7, user_defined_field8, user_defined_field9, user_defined_field10, vendor_identifier, tax_identifier, tax_code, billing_terms, invoice_template, pricing_schedule, company_entity_type, bill_to_company, billing_site, billing_contact, invoice_delivery_method, invoice_to_email_address, invoice_cc_email_address, deleted_flag, date_deleted, deleted_by, mobile_guid, facebook_url, twitter_url, linked_in_url, currency, territory_manager, _info, custom_fields].hash
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

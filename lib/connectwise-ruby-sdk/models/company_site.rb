
require 'date'

module ConnectWise

  class CompanySite
    attr_accessor :id

    attr_accessor :name

    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip

    attr_accessor :country

    attr_accessor :address_format

    attr_accessor :phone_number

    attr_accessor :fax_number

    attr_accessor :tax_code_id

    attr_accessor :expense_reimbursement

    attr_accessor :primary_address_flag

    attr_accessor :default_shipping_flag

    attr_accessor :default_billing_flag

    attr_accessor :default_mailing_flag

    attr_accessor :mobile_guid

    attr_accessor :calendar

    attr_accessor :time_zone

    attr_accessor :company

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'country' => :'country',
        :'address_format' => :'addressFormat',
        :'phone_number' => :'phoneNumber',
        :'fax_number' => :'faxNumber',
        :'tax_code_id' => :'taxCodeId',
        :'expense_reimbursement' => :'expenseReimbursement',
        :'primary_address_flag' => :'primaryAddressFlag',
        :'default_shipping_flag' => :'defaultShippingFlag',
        :'default_billing_flag' => :'defaultBillingFlag',
        :'default_mailing_flag' => :'defaultMailingFlag',
        :'mobile_guid' => :'mobileGuid',
        :'calendar' => :'calendar',
        :'time_zone' => :'timeZone',
        :'company' => :'company',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'country' => :'CountryReference',
        :'address_format' => :'String',
        :'phone_number' => :'String',
        :'fax_number' => :'String',
        :'tax_code_id' => :'Integer',
        :'expense_reimbursement' => :'Float',
        :'primary_address_flag' => :'BOOLEAN',
        :'default_shipping_flag' => :'BOOLEAN',
        :'default_billing_flag' => :'BOOLEAN',
        :'default_mailing_flag' => :'BOOLEAN',
        :'mobile_guid' => :'Guid',
        :'calendar' => :'CalendarReference',
        :'time_zone' => :'TimeZoneSetupReference',
        :'company' => :'CompanyReference',
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
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

      if attributes.has_key?(:'addressFormat')
        self.address_format = attributes[:'addressFormat']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'faxNumber')
        self.fax_number = attributes[:'faxNumber']
      end

      if attributes.has_key?(:'taxCodeId')
        self.tax_code_id = attributes[:'taxCodeId']
      end

      if attributes.has_key?(:'expenseReimbursement')
        self.expense_reimbursement = attributes[:'expenseReimbursement']
      end

      if attributes.has_key?(:'primaryAddressFlag')
        self.primary_address_flag = attributes[:'primaryAddressFlag']
      end

      if attributes.has_key?(:'defaultShippingFlag')
        self.default_shipping_flag = attributes[:'defaultShippingFlag']
      end

      if attributes.has_key?(:'defaultBillingFlag')
        self.default_billing_flag = attributes[:'defaultBillingFlag']
      end

      if attributes.has_key?(:'defaultMailingFlag')
        self.default_mailing_flag = attributes[:'defaultMailingFlag']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'calendar')
        self.calendar = attributes[:'calendar']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@address_line1.nil? && @address_line1.to_s.length > 50
      return false if !@address_line2.nil? && @address_line2.to_s.length > 50
      return false if !@city.nil? && @city.to_s.length > 50
      return false if !@state.nil? && @state.to_s.length > 50
      return false if !@zip.nil? && @zip.to_s.length > 12
      return false if !@phone_number.nil? && @phone_number.to_s.length > 30
      return false if !@fax_number.nil? && @fax_number.to_s.length > 30
      return true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          country == o.country &&
          address_format == o.address_format &&
          phone_number == o.phone_number &&
          fax_number == o.fax_number &&
          tax_code_id == o.tax_code_id &&
          expense_reimbursement == o.expense_reimbursement &&
          primary_address_flag == o.primary_address_flag &&
          default_shipping_flag == o.default_shipping_flag &&
          default_billing_flag == o.default_billing_flag &&
          default_mailing_flag == o.default_mailing_flag &&
          mobile_guid == o.mobile_guid &&
          calendar == o.calendar &&
          time_zone == o.time_zone &&
          company == o.company &&
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
      [id, name, address_line1, address_line2, city, state, zip, country, address_format, phone_number, fax_number, tax_code_id, expense_reimbursement, primary_address_flag, default_shipping_flag, default_billing_flag, default_mailing_flag, mobile_guid, calendar, time_zone, company, _info].hash
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

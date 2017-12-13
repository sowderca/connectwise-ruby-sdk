
require 'date'

module ConnectWise

  class GLExportVendor
    # Vendor Can be either Member or Company Reference
    attr_accessor :member

    # Vendor Can be either Member or Company Reference
    attr_accessor :vendor

    attr_accessor :vendor_number

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :account_number

    attr_accessor :billing_terms

    attr_accessor :due_days

    attr_accessor :site

    attr_accessor :tax_code


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'member' => :'member',
        :'vendor' => :'vendor',
        :'vendor_number' => :'vendorNumber',
        :'company' => :'company',
        :'contact' => :'contact',
        :'account_number' => :'accountNumber',
        :'billing_terms' => :'billingTerms',
        :'due_days' => :'dueDays',
        :'site' => :'site',
        :'tax_code' => :'taxCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'member' => :'MemberReference',
        :'vendor' => :'CompanyReference',
        :'vendor_number' => :'String',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'account_number' => :'String',
        :'billing_terms' => :'BillingTermsReference',
        :'due_days' => :'Integer',
        :'site' => :'SiteReference',
        :'tax_code' => :'TaxCodeReference'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'vendorNumber')
        self.vendor_number = attributes[:'vendorNumber']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'accountNumber')
        self.account_number = attributes[:'accountNumber']
      end

      if attributes.has_key?(:'billingTerms')
        self.billing_terms = attributes[:'billingTerms']
      end

      if attributes.has_key?(:'dueDays')
        self.due_days = attributes[:'dueDays']
      end

      if attributes.has_key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
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
          member == o.member &&
          vendor == o.vendor &&
          vendor_number == o.vendor_number &&
          company == o.company &&
          contact == o.contact &&
          account_number == o.account_number &&
          billing_terms == o.billing_terms &&
          due_days == o.due_days &&
          site == o.site &&
          tax_code == o.tax_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [member, vendor, vendor_number, company, contact, account_number, billing_terms, due_days, site, tax_code].hash
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

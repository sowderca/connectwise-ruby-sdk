
require 'date'

module ConnectWise

  class Location
    attr_accessor :id

    attr_accessor :owner_level_id

    attr_accessor :structure_level

    attr_accessor :name

    attr_accessor :manager

    attr_accessor :reports_to

    attr_accessor :sales_rep

    attr_accessor :time_zone_setup

    attr_accessor :calendar

    attr_accessor :override_address_line1

    attr_accessor :override_address_line2

    attr_accessor :override_city

    attr_accessor :override_state

    attr_accessor :override_zip

    attr_accessor :override_country

    attr_accessor :override_phone_number

    attr_accessor :override_fax_number

    attr_accessor :owa_url

    attr_accessor :payroll_xref

    attr_accessor :location_flag

    attr_accessor :client_flag

    attr_accessor :work_role_ids

    attr_accessor :department_ids

    attr_accessor :top_navigation_logo

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'owner_level_id' => :'ownerLevelId',
        :'structure_level' => :'structureLevel',
        :'name' => :'name',
        :'manager' => :'manager',
        :'reports_to' => :'reportsTo',
        :'sales_rep' => :'salesRep',
        :'time_zone_setup' => :'timeZoneSetup',
        :'calendar' => :'calendar',
        :'override_address_line1' => :'overrideAddressLine1',
        :'override_address_line2' => :'overrideAddressLine2',
        :'override_city' => :'overrideCity',
        :'override_state' => :'overrideState',
        :'override_zip' => :'overrideZip',
        :'override_country' => :'overrideCountry',
        :'override_phone_number' => :'overridePhoneNumber',
        :'override_fax_number' => :'overrideFaxNumber',
        :'owa_url' => :'owaUrl',
        :'payroll_xref' => :'payrollXref',
        :'location_flag' => :'locationFlag',
        :'client_flag' => :'clientFlag',
        :'work_role_ids' => :'workRoleIds',
        :'department_ids' => :'departmentIds',
        :'top_navigation_logo' => :'topNavigationLogo',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'owner_level_id' => :'Integer',
        :'structure_level' => :'CorporateStructureLevelReference',
        :'name' => :'String',
        :'manager' => :'MemberReference',
        :'reports_to' => :'SystemLocationReference',
        :'sales_rep' => :'String',
        :'time_zone_setup' => :'TimeZoneSetupReference',
        :'calendar' => :'CalendarReference',
        :'override_address_line1' => :'String',
        :'override_address_line2' => :'String',
        :'override_city' => :'String',
        :'override_state' => :'String',
        :'override_zip' => :'String',
        :'override_country' => :'CountryReference',
        :'override_phone_number' => :'String',
        :'override_fax_number' => :'String',
        :'owa_url' => :'String',
        :'payroll_xref' => :'String',
        :'location_flag' => :'BOOLEAN',
        :'client_flag' => :'BOOLEAN',
        :'work_role_ids' => :'Array<Integer>',
        :'department_ids' => :'Array<Integer>',
        :'top_navigation_logo' => :'DocumentReference',
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

      if attributes.has_key?(:'ownerLevelId')
        self.owner_level_id = attributes[:'ownerLevelId']
      end

      if attributes.has_key?(:'structureLevel')
        self.structure_level = attributes[:'structureLevel']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.has_key?(:'reportsTo')
        self.reports_to = attributes[:'reportsTo']
      end

      if attributes.has_key?(:'salesRep')
        self.sales_rep = attributes[:'salesRep']
      end

      if attributes.has_key?(:'timeZoneSetup')
        self.time_zone_setup = attributes[:'timeZoneSetup']
      end

      if attributes.has_key?(:'calendar')
        self.calendar = attributes[:'calendar']
      end

      if attributes.has_key?(:'overrideAddressLine1')
        self.override_address_line1 = attributes[:'overrideAddressLine1']
      end

      if attributes.has_key?(:'overrideAddressLine2')
        self.override_address_line2 = attributes[:'overrideAddressLine2']
      end

      if attributes.has_key?(:'overrideCity')
        self.override_city = attributes[:'overrideCity']
      end

      if attributes.has_key?(:'overrideState')
        self.override_state = attributes[:'overrideState']
      end

      if attributes.has_key?(:'overrideZip')
        self.override_zip = attributes[:'overrideZip']
      end

      if attributes.has_key?(:'overrideCountry')
        self.override_country = attributes[:'overrideCountry']
      end

      if attributes.has_key?(:'overridePhoneNumber')
        self.override_phone_number = attributes[:'overridePhoneNumber']
      end

      if attributes.has_key?(:'overrideFaxNumber')
        self.override_fax_number = attributes[:'overrideFaxNumber']
      end

      if attributes.has_key?(:'owaUrl')
        self.owa_url = attributes[:'owaUrl']
      end

      if attributes.has_key?(:'payrollXref')
        self.payroll_xref = attributes[:'payrollXref']
      end

      if attributes.has_key?(:'locationFlag')
        self.location_flag = attributes[:'locationFlag']
      end

      if attributes.has_key?(:'clientFlag')
        self.client_flag = attributes[:'clientFlag']
      end

      if attributes.has_key?(:'workRoleIds')
        if (value = attributes[:'workRoleIds']).is_a?(Array)
          self.work_role_ids = value
        end
      end

      if attributes.has_key?(:'departmentIds')
        if (value = attributes[:'departmentIds']).is_a?(Array)
          self.department_ids = value
        end
      end

      if attributes.has_key?(:'topNavigationLogo')
        self.top_navigation_logo = attributes[:'topNavigationLogo']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @structure_level.nil?
        invalid_properties.push("invalid value for 'structure_level', structure_level cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@sales_rep.nil? && @sales_rep.to_s.length > 50
        invalid_properties.push("invalid value for 'sales_rep', the character length must be smaller than or equal to 50.")
      end

      if !@override_address_line1.nil? && @override_address_line1.to_s.length > 50
        invalid_properties.push("invalid value for 'override_address_line1', the character length must be smaller than or equal to 50.")
      end

      if !@override_address_line2.nil? && @override_address_line2.to_s.length > 50
        invalid_properties.push("invalid value for 'override_address_line2', the character length must be smaller than or equal to 50.")
      end

      if !@override_city.nil? && @override_city.to_s.length > 50
        invalid_properties.push("invalid value for 'override_city', the character length must be smaller than or equal to 50.")
      end

      if !@override_state.nil? && @override_state.to_s.length > 50
        invalid_properties.push("invalid value for 'override_state', the character length must be smaller than or equal to 50.")
      end

      if !@override_zip.nil? && @override_zip.to_s.length > 12
        invalid_properties.push("invalid value for 'override_zip', the character length must be smaller than or equal to 12.")
      end

      if !@override_phone_number.nil? && @override_phone_number.to_s.length > 15
        invalid_properties.push("invalid value for 'override_phone_number', the character length must be smaller than or equal to 15.")
      end

      if !@override_fax_number.nil? && @override_fax_number.to_s.length > 15
        invalid_properties.push("invalid value for 'override_fax_number', the character length must be smaller than or equal to 15.")
      end

      if !@owa_url.nil? && @owa_url.to_s.length > 100
        invalid_properties.push("invalid value for 'owa_url', the character length must be smaller than or equal to 100.")
      end

      if !@payroll_xref.nil? && @payroll_xref.to_s.length > 10
        invalid_properties.push("invalid value for 'payroll_xref', the character length must be smaller than or equal to 10.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @structure_level.nil?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@sales_rep.nil? && @sales_rep.to_s.length > 50
      return false if !@override_address_line1.nil? && @override_address_line1.to_s.length > 50
      return false if !@override_address_line2.nil? && @override_address_line2.to_s.length > 50
      return false if !@override_city.nil? && @override_city.to_s.length > 50
      return false if !@override_state.nil? && @override_state.to_s.length > 50
      return false if !@override_zip.nil? && @override_zip.to_s.length > 12
      return false if !@override_phone_number.nil? && @override_phone_number.to_s.length > 15
      return false if !@override_fax_number.nil? && @override_fax_number.to_s.length > 15
      return false if !@owa_url.nil? && @owa_url.to_s.length > 100
      return false if !@payroll_xref.nil? && @payroll_xref.to_s.length > 10
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
    # @param [Object] sales_rep Value to be assigned
    def sales_rep=(sales_rep)

      if !sales_rep.nil? && sales_rep.to_s.length > 50
        fail ArgumentError, "invalid value for 'sales_rep', the character length must be smaller than or equal to 50."
      end

      @sales_rep = sales_rep
    end

    # Custom attribute writer method with validation
    # @param [Object] override_address_line1 Value to be assigned
    def override_address_line1=(override_address_line1)

      if !override_address_line1.nil? && override_address_line1.to_s.length > 50
        fail ArgumentError, "invalid value for 'override_address_line1', the character length must be smaller than or equal to 50."
      end

      @override_address_line1 = override_address_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] override_address_line2 Value to be assigned
    def override_address_line2=(override_address_line2)

      if !override_address_line2.nil? && override_address_line2.to_s.length > 50
        fail ArgumentError, "invalid value for 'override_address_line2', the character length must be smaller than or equal to 50."
      end

      @override_address_line2 = override_address_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] override_city Value to be assigned
    def override_city=(override_city)

      if !override_city.nil? && override_city.to_s.length > 50
        fail ArgumentError, "invalid value for 'override_city', the character length must be smaller than or equal to 50."
      end

      @override_city = override_city
    end

    # Custom attribute writer method with validation
    # @param [Object] override_state Value to be assigned
    def override_state=(override_state)

      if !override_state.nil? && override_state.to_s.length > 50
        fail ArgumentError, "invalid value for 'override_state', the character length must be smaller than or equal to 50."
      end

      @override_state = override_state
    end

    # Custom attribute writer method with validation
    # @param [Object] override_zip Value to be assigned
    def override_zip=(override_zip)

      if !override_zip.nil? && override_zip.to_s.length > 12
        fail ArgumentError, "invalid value for 'override_zip', the character length must be smaller than or equal to 12."
      end

      @override_zip = override_zip
    end

    # Custom attribute writer method with validation
    # @param [Object] override_phone_number Value to be assigned
    def override_phone_number=(override_phone_number)

      if !override_phone_number.nil? && override_phone_number.to_s.length > 15
        fail ArgumentError, "invalid value for 'override_phone_number', the character length must be smaller than or equal to 15."
      end

      @override_phone_number = override_phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] override_fax_number Value to be assigned
    def override_fax_number=(override_fax_number)

      if !override_fax_number.nil? && override_fax_number.to_s.length > 15
        fail ArgumentError, "invalid value for 'override_fax_number', the character length must be smaller than or equal to 15."
      end

      @override_fax_number = override_fax_number
    end

    # Custom attribute writer method with validation
    # @param [Object] owa_url Value to be assigned
    def owa_url=(owa_url)

      if !owa_url.nil? && owa_url.to_s.length > 100
        fail ArgumentError, "invalid value for 'owa_url', the character length must be smaller than or equal to 100."
      end

      @owa_url = owa_url
    end

    # Custom attribute writer method with validation
    # @param [Object] payroll_xref Value to be assigned
    def payroll_xref=(payroll_xref)

      if !payroll_xref.nil? && payroll_xref.to_s.length > 10
        fail ArgumentError, "invalid value for 'payroll_xref', the character length must be smaller than or equal to 10."
      end

      @payroll_xref = payroll_xref
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          owner_level_id == o.owner_level_id &&
          structure_level == o.structure_level &&
          name == o.name &&
          manager == o.manager &&
          reports_to == o.reports_to &&
          sales_rep == o.sales_rep &&
          time_zone_setup == o.time_zone_setup &&
          calendar == o.calendar &&
          override_address_line1 == o.override_address_line1 &&
          override_address_line2 == o.override_address_line2 &&
          override_city == o.override_city &&
          override_state == o.override_state &&
          override_zip == o.override_zip &&
          override_country == o.override_country &&
          override_phone_number == o.override_phone_number &&
          override_fax_number == o.override_fax_number &&
          owa_url == o.owa_url &&
          payroll_xref == o.payroll_xref &&
          location_flag == o.location_flag &&
          client_flag == o.client_flag &&
          work_role_ids == o.work_role_ids &&
          department_ids == o.department_ids &&
          top_navigation_logo == o.top_navigation_logo &&
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
      [id, owner_level_id, structure_level, name, manager, reports_to, sales_rep, time_zone_setup, calendar, override_address_line1, override_address_line2, override_city, override_state, override_zip, override_country, override_phone_number, override_fax_number, owa_url, payroll_xref, location_flag, client_flag, work_role_ids, department_ids, top_navigation_logo, _info].hash
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

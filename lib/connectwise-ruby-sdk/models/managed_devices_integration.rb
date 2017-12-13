
require 'date'

module ConnectWise

  class ManagedDevicesIntegration
    attr_accessor :id

    attr_accessor :name

    attr_accessor :solution

    attr_accessor :portal_url

    attr_accessor :login_by

    # This is only required when globalLoginFlag = true
    attr_accessor :global_login_username

    # This is only required when globalLoginFlag = true
    attr_accessor :global_login_password

    attr_accessor :default_billing_level

    attr_accessor :management_it_setup_type

    attr_accessor :default_location

    attr_accessor :default_department

    attr_accessor :integrator_login

    attr_accessor :match_on_serial_number_flag

    attr_accessor :disable_new_cross_references_flag

    attr_accessor :config_bill_customer_flag

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
        :'name' => :'name',
        :'solution' => :'solution',
        :'portal_url' => :'portalUrl',
        :'login_by' => :'loginBy',
        :'global_login_username' => :'globalLoginUsername',
        :'global_login_password' => :'globalLoginPassword',
        :'default_billing_level' => :'defaultBillingLevel',
        :'management_it_setup_type' => :'managementItSetupType',
        :'default_location' => :'defaultLocation',
        :'default_department' => :'defaultDepartment',
        :'integrator_login' => :'integratorLogin',
        :'match_on_serial_number_flag' => :'matchOnSerialNumberFlag',
        :'disable_new_cross_references_flag' => :'disableNewCrossReferencesFlag',
        :'config_bill_customer_flag' => :'configBillCustomerFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'solution' => :'String',
        :'portal_url' => :'String',
        :'login_by' => :'String',
        :'global_login_username' => :'String',
        :'global_login_password' => :'String',
        :'default_billing_level' => :'String',
        :'management_it_setup_type' => :'String',
        :'default_location' => :'SystemLocationReference',
        :'default_department' => :'SystemDepartmentReference',
        :'integrator_login' => :'IntegratorLoginReference',
        :'match_on_serial_number_flag' => :'BOOLEAN',
        :'disable_new_cross_references_flag' => :'BOOLEAN',
        :'config_bill_customer_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'solution')
        self.solution = attributes[:'solution']
      end

      if attributes.has_key?(:'portalUrl')
        self.portal_url = attributes[:'portalUrl']
      end

      if attributes.has_key?(:'loginBy')
        self.login_by = attributes[:'loginBy']
      end

      if attributes.has_key?(:'globalLoginUsername')
        self.global_login_username = attributes[:'globalLoginUsername']
      end

      if attributes.has_key?(:'globalLoginPassword')
        self.global_login_password = attributes[:'globalLoginPassword']
      end

      if attributes.has_key?(:'defaultBillingLevel')
        self.default_billing_level = attributes[:'defaultBillingLevel']
      end

      if attributes.has_key?(:'managementItSetupType')
        self.management_it_setup_type = attributes[:'managementItSetupType']
      end

      if attributes.has_key?(:'defaultLocation')
        self.default_location = attributes[:'defaultLocation']
      end

      if attributes.has_key?(:'defaultDepartment')
        self.default_department = attributes[:'defaultDepartment']
      end

      if attributes.has_key?(:'integratorLogin')
        self.integrator_login = attributes[:'integratorLogin']
      end

      if attributes.has_key?(:'matchOnSerialNumberFlag')
        self.match_on_serial_number_flag = attributes[:'matchOnSerialNumberFlag']
      end

      if attributes.has_key?(:'disableNewCrossReferencesFlag')
        self.disable_new_cross_references_flag = attributes[:'disableNewCrossReferencesFlag']
      end

      if attributes.has_key?(:'configBillCustomerFlag')
        self.config_bill_customer_flag = attributes[:'configBillCustomerFlag']
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

      if @name.to_s.length > 30
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 30.")
      end

      if @solution.nil?
        invalid_properties.push("invalid value for 'solution', solution cannot be nil.")
      end

      if @solution.to_s.length > 30
        invalid_properties.push("invalid value for 'solution', the character length must be smaller than or equal to 30.")
      end

      if !@portal_url.nil? && @portal_url.to_s.length > 200
        invalid_properties.push("invalid value for 'portal_url', the character length must be smaller than or equal to 200.")
      end

      if @login_by.nil?
        invalid_properties.push("invalid value for 'login_by', login_by cannot be nil.")
      end

      if !@global_login_username.nil? && @global_login_username.to_s.length > 50
        invalid_properties.push("invalid value for 'global_login_username', the character length must be smaller than or equal to 50.")
      end

      if !@global_login_password.nil? && @global_login_password.to_s.length > 50
        invalid_properties.push("invalid value for 'global_login_password', the character length must be smaller than or equal to 50.")
      end

      if @default_billing_level.nil?
        invalid_properties.push("invalid value for 'default_billing_level', default_billing_level cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 30
      return false if @solution.nil?
      return false if @solution.to_s.length > 30
      return false if !@portal_url.nil? && @portal_url.to_s.length > 200
      return false if @login_by.nil?
      login_by_validator = EnumAttributeValidator.new('String', ["Member", "Global"])
      return false unless login_by_validator.valid?(@login_by)
      return false if !@global_login_username.nil? && @global_login_username.to_s.length > 50
      return false if !@global_login_password.nil? && @global_login_password.to_s.length > 50
      return false if @default_billing_level.nil?
      default_billing_level_validator = EnumAttributeValidator.new('String', ["Summary", "Detail"])
      return false unless default_billing_level_validator.valid?(@default_billing_level)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 30
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 30."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] solution Value to be assigned
    def solution=(solution)
      if solution.nil?
        fail ArgumentError, "solution cannot be nil"
      end

      if solution.to_s.length > 30
        fail ArgumentError, "invalid value for 'solution', the character length must be smaller than or equal to 30."
      end

      @solution = solution
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_url Value to be assigned
    def portal_url=(portal_url)

      if !portal_url.nil? && portal_url.to_s.length > 200
        fail ArgumentError, "invalid value for 'portal_url', the character length must be smaller than or equal to 200."
      end

      @portal_url = portal_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] login_by Object to be assigned
    def login_by=(login_by)
      validator = EnumAttributeValidator.new('String', ["Member", "Global"])
      unless validator.valid?(login_by)
        fail ArgumentError, "invalid value for 'login_by', must be one of #{validator.allowable_values}."
      end
      @login_by = login_by
    end

    # Custom attribute writer method with validation
    # @param [Object] global_login_username Value to be assigned
    def global_login_username=(global_login_username)

      if !global_login_username.nil? && global_login_username.to_s.length > 50
        fail ArgumentError, "invalid value for 'global_login_username', the character length must be smaller than or equal to 50."
      end

      @global_login_username = global_login_username
    end

    # Custom attribute writer method with validation
    # @param [Object] global_login_password Value to be assigned
    def global_login_password=(global_login_password)

      if !global_login_password.nil? && global_login_password.to_s.length > 50
        fail ArgumentError, "invalid value for 'global_login_password', the character length must be smaller than or equal to 50."
      end

      @global_login_password = global_login_password
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_billing_level Object to be assigned
    def default_billing_level=(default_billing_level)
      validator = EnumAttributeValidator.new('String', ["Summary", "Detail"])
      unless validator.valid?(default_billing_level)
        fail ArgumentError, "invalid value for 'default_billing_level', must be one of #{validator.allowable_values}."
      end
      @default_billing_level = default_billing_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          solution == o.solution &&
          portal_url == o.portal_url &&
          login_by == o.login_by &&
          global_login_username == o.global_login_username &&
          global_login_password == o.global_login_password &&
          default_billing_level == o.default_billing_level &&
          management_it_setup_type == o.management_it_setup_type &&
          default_location == o.default_location &&
          default_department == o.default_department &&
          integrator_login == o.integrator_login &&
          match_on_serial_number_flag == o.match_on_serial_number_flag &&
          disable_new_cross_references_flag == o.disable_new_cross_references_flag &&
          config_bill_customer_flag == o.config_bill_customer_flag &&
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
      [id, name, solution, portal_url, login_by, global_login_username, global_login_password, default_billing_level, management_it_setup_type, default_location, default_department, integrator_login, match_on_serial_number_flag, disable_new_cross_references_flag, config_bill_customer_flag, _info].hash
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

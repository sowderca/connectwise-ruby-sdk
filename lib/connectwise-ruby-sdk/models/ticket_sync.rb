
require 'date'

module ConnectWise

  class TicketSync
    attr_accessor :id

    attr_accessor :name

    attr_accessor :vendor_type

    attr_accessor :integrator_login

    attr_accessor :company

    attr_accessor :url

    attr_accessor :user_name

    attr_accessor :password

    attr_accessor :psg

    attr_accessor :problem_description

    attr_accessor :internal_analysis

    attr_accessor :resolution

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
        :'vendor_type' => :'vendorType',
        :'integrator_login' => :'integratorLogin',
        :'company' => :'company',
        :'url' => :'url',
        :'user_name' => :'userName',
        :'password' => :'password',
        :'psg' => :'psg',
        :'problem_description' => :'problemDescription',
        :'internal_analysis' => :'internalAnalysis',
        :'resolution' => :'resolution',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'vendor_type' => :'String',
        :'integrator_login' => :'IntegratorLoginReference',
        :'company' => :'CompanyReference',
        :'url' => :'String',
        :'user_name' => :'String',
        :'password' => :'String',
        :'psg' => :'String',
        :'problem_description' => :'BOOLEAN',
        :'internal_analysis' => :'BOOLEAN',
        :'resolution' => :'BOOLEAN',
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

      if attributes.has_key?(:'vendorType')
        self.vendor_type = attributes[:'vendorType']
      end

      if attributes.has_key?(:'integratorLogin')
        self.integrator_login = attributes[:'integratorLogin']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'psg')
        self.psg = attributes[:'psg']
      end

      if attributes.has_key?(:'problemDescription')
        self.problem_description = attributes[:'problemDescription']
      end

      if attributes.has_key?(:'internalAnalysis')
        self.internal_analysis = attributes[:'internalAnalysis']
      end

      if attributes.has_key?(:'resolution')
        self.resolution = attributes[:'resolution']
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

      if @vendor_type.nil?
        invalid_properties.push("invalid value for 'vendor_type', vendor_type cannot be nil.")
      end

      if @integrator_login.nil?
        invalid_properties.push("invalid value for 'integrator_login', integrator_login cannot be nil.")
      end

      if @company.nil?
        invalid_properties.push("invalid value for 'company', company cannot be nil.")
      end

      if @url.nil?
        invalid_properties.push("invalid value for 'url', url cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @vendor_type.nil?
      vendor_type_validator = EnumAttributeValidator.new('String', ["Zenith", "Kaseya"])
      return false unless vendor_type_validator.valid?(@vendor_type)
      return false if @integrator_login.nil?
      return false if @company.nil?
      return false if @url.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] vendor_type Object to be assigned
    def vendor_type=(vendor_type)
      validator = EnumAttributeValidator.new('String', ["Zenith", "Kaseya"])
      unless validator.valid?(vendor_type)
        fail ArgumentError, "invalid value for 'vendor_type', must be one of #{validator.allowable_values}."
      end
      @vendor_type = vendor_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          vendor_type == o.vendor_type &&
          integrator_login == o.integrator_login &&
          company == o.company &&
          url == o.url &&
          user_name == o.user_name &&
          password == o.password &&
          psg == o.psg &&
          problem_description == o.problem_description &&
          internal_analysis == o.internal_analysis &&
          resolution == o.resolution &&
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
      [id, name, vendor_type, integrator_login, company, url, user_name, password, psg, problem_description, internal_analysis, resolution, _info].hash
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

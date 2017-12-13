
require 'date'

module ConnectWise

  class SecurityRoleSetting
    attr_accessor :id

    attr_accessor :add_level

    attr_accessor :edit_level

    attr_accessor :delete_level

    attr_accessor :inquire_level

    attr_accessor :module_function_name

    attr_accessor :module_function_description

    attr_accessor :my_all_flag

    attr_accessor :module_function_identifier

    attr_accessor :report_flag

    attr_accessor :restrict_flag

    attr_accessor :custom_flag

    attr_accessor :module_description

    attr_accessor :module_identifier

    attr_accessor :module_name

    attr_accessor :sort_order

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
        :'add_level' => :'addLevel',
        :'edit_level' => :'editLevel',
        :'delete_level' => :'deleteLevel',
        :'inquire_level' => :'inquireLevel',
        :'module_function_name' => :'moduleFunctionName',
        :'module_function_description' => :'moduleFunctionDescription',
        :'my_all_flag' => :'myAllFlag',
        :'module_function_identifier' => :'moduleFunctionIdentifier',
        :'report_flag' => :'reportFlag',
        :'restrict_flag' => :'restrictFlag',
        :'custom_flag' => :'customFlag',
        :'module_description' => :'moduleDescription',
        :'module_identifier' => :'moduleIdentifier',
        :'module_name' => :'moduleName',
        :'sort_order' => :'sortOrder',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'add_level' => :'String',
        :'edit_level' => :'String',
        :'delete_level' => :'String',
        :'inquire_level' => :'String',
        :'module_function_name' => :'String',
        :'module_function_description' => :'String',
        :'my_all_flag' => :'BOOLEAN',
        :'module_function_identifier' => :'String',
        :'report_flag' => :'BOOLEAN',
        :'restrict_flag' => :'BOOLEAN',
        :'custom_flag' => :'BOOLEAN',
        :'module_description' => :'String',
        :'module_identifier' => :'String',
        :'module_name' => :'String',
        :'sort_order' => :'Integer',
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

      if attributes.has_key?(:'addLevel')
        self.add_level = attributes[:'addLevel']
      end

      if attributes.has_key?(:'editLevel')
        self.edit_level = attributes[:'editLevel']
      end

      if attributes.has_key?(:'deleteLevel')
        self.delete_level = attributes[:'deleteLevel']
      end

      if attributes.has_key?(:'inquireLevel')
        self.inquire_level = attributes[:'inquireLevel']
      end

      if attributes.has_key?(:'moduleFunctionName')
        self.module_function_name = attributes[:'moduleFunctionName']
      end

      if attributes.has_key?(:'moduleFunctionDescription')
        self.module_function_description = attributes[:'moduleFunctionDescription']
      end

      if attributes.has_key?(:'myAllFlag')
        self.my_all_flag = attributes[:'myAllFlag']
      end

      if attributes.has_key?(:'moduleFunctionIdentifier')
        self.module_function_identifier = attributes[:'moduleFunctionIdentifier']
      end

      if attributes.has_key?(:'reportFlag')
        self.report_flag = attributes[:'reportFlag']
      end

      if attributes.has_key?(:'restrictFlag')
        self.restrict_flag = attributes[:'restrictFlag']
      end

      if attributes.has_key?(:'customFlag')
        self.custom_flag = attributes[:'customFlag']
      end

      if attributes.has_key?(:'moduleDescription')
        self.module_description = attributes[:'moduleDescription']
      end

      if attributes.has_key?(:'moduleIdentifier')
        self.module_identifier = attributes[:'moduleIdentifier']
      end

      if attributes.has_key?(:'moduleName')
        self.module_name = attributes[:'moduleName']
      end

      if attributes.has_key?(:'sortOrder')
        self.sort_order = attributes[:'sortOrder']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@module_function_name.nil? && @module_function_name.to_s.length > 10
        invalid_properties.push("invalid value for 'module_function_name', the character length must be smaller than or equal to 10.")
      end

      if !@module_function_description.nil? && @module_function_description.to_s.length > 50
        invalid_properties.push("invalid value for 'module_function_description', the character length must be smaller than or equal to 50.")
      end

      if !@module_function_identifier.nil? && @module_function_identifier.to_s.length > 5
        invalid_properties.push("invalid value for 'module_function_identifier', the character length must be smaller than or equal to 5.")
      end

      if !@module_description.nil? && @module_description.to_s.length > 50
        invalid_properties.push("invalid value for 'module_description', the character length must be smaller than or equal to 50.")
      end

      if !@module_identifier.nil? && @module_identifier.to_s.length > 20
        invalid_properties.push("invalid value for 'module_identifier', the character length must be smaller than or equal to 20.")
      end

      if !@module_name.nil? && @module_name.to_s.length > 50
        invalid_properties.push("invalid value for 'module_name', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      add_level_validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      return false unless add_level_validator.valid?(@add_level)
      edit_level_validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      return false unless edit_level_validator.valid?(@edit_level)
      delete_level_validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      return false unless delete_level_validator.valid?(@delete_level)
      inquire_level_validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      return false unless inquire_level_validator.valid?(@inquire_level)
      return false if !@module_function_name.nil? && @module_function_name.to_s.length > 10
      return false if !@module_function_description.nil? && @module_function_description.to_s.length > 50
      return false if !@module_function_identifier.nil? && @module_function_identifier.to_s.length > 5
      return false if !@module_description.nil? && @module_description.to_s.length > 50
      return false if !@module_identifier.nil? && @module_identifier.to_s.length > 20
      return false if !@module_name.nil? && @module_name.to_s.length > 50
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_level Object to be assigned
    def add_level=(add_level)
      validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      unless validator.valid?(add_level)
        fail ArgumentError, "invalid value for 'add_level', must be one of #{validator.allowable_values}."
      end
      @add_level = add_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] edit_level Object to be assigned
    def edit_level=(edit_level)
      validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      unless validator.valid?(edit_level)
        fail ArgumentError, "invalid value for 'edit_level', must be one of #{validator.allowable_values}."
      end
      @edit_level = edit_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delete_level Object to be assigned
    def delete_level=(delete_level)
      validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      unless validator.valid?(delete_level)
        fail ArgumentError, "invalid value for 'delete_level', must be one of #{validator.allowable_values}."
      end
      @delete_level = delete_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inquire_level Object to be assigned
    def inquire_level=(inquire_level)
      validator = EnumAttributeValidator.new('String', ["All", "My", "None"])
      unless validator.valid?(inquire_level)
        fail ArgumentError, "invalid value for 'inquire_level', must be one of #{validator.allowable_values}."
      end
      @inquire_level = inquire_level
    end

    # Custom attribute writer method with validation
    # @param [Object] module_function_name Value to be assigned
    def module_function_name=(module_function_name)

      if !module_function_name.nil? && module_function_name.to_s.length > 10
        fail ArgumentError, "invalid value for 'module_function_name', the character length must be smaller than or equal to 10."
      end

      @module_function_name = module_function_name
    end

    # Custom attribute writer method with validation
    # @param [Object] module_function_description Value to be assigned
    def module_function_description=(module_function_description)

      if !module_function_description.nil? && module_function_description.to_s.length > 50
        fail ArgumentError, "invalid value for 'module_function_description', the character length must be smaller than or equal to 50."
      end

      @module_function_description = module_function_description
    end

    # Custom attribute writer method with validation
    # @param [Object] module_function_identifier Value to be assigned
    def module_function_identifier=(module_function_identifier)

      if !module_function_identifier.nil? && module_function_identifier.to_s.length > 5
        fail ArgumentError, "invalid value for 'module_function_identifier', the character length must be smaller than or equal to 5."
      end

      @module_function_identifier = module_function_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] module_description Value to be assigned
    def module_description=(module_description)

      if !module_description.nil? && module_description.to_s.length > 50
        fail ArgumentError, "invalid value for 'module_description', the character length must be smaller than or equal to 50."
      end

      @module_description = module_description
    end

    # Custom attribute writer method with validation
    # @param [Object] module_identifier Value to be assigned
    def module_identifier=(module_identifier)

      if !module_identifier.nil? && module_identifier.to_s.length > 20
        fail ArgumentError, "invalid value for 'module_identifier', the character length must be smaller than or equal to 20."
      end

      @module_identifier = module_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] module_name Value to be assigned
    def module_name=(module_name)

      if !module_name.nil? && module_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'module_name', the character length must be smaller than or equal to 50."
      end

      @module_name = module_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          add_level == o.add_level &&
          edit_level == o.edit_level &&
          delete_level == o.delete_level &&
          inquire_level == o.inquire_level &&
          module_function_name == o.module_function_name &&
          module_function_description == o.module_function_description &&
          my_all_flag == o.my_all_flag &&
          module_function_identifier == o.module_function_identifier &&
          report_flag == o.report_flag &&
          restrict_flag == o.restrict_flag &&
          custom_flag == o.custom_flag &&
          module_description == o.module_description &&
          module_identifier == o.module_identifier &&
          module_name == o.module_name &&
          sort_order == o.sort_order &&
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
      [id, add_level, edit_level, delete_level, inquire_level, module_function_name, module_function_description, my_all_flag, module_function_identifier, report_flag, restrict_flag, custom_flag, module_description, module_identifier, module_name, sort_order, _info].hash
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

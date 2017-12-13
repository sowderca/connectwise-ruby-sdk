
require 'date'

module ConnectWise

  class SetupScreen
    attr_accessor :id

    attr_accessor :category

    attr_accessor :name

    attr_accessor :description

    attr_accessor :module_description

    attr_accessor :module_identifier

    attr_accessor :module_name

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'category' => :'category',
        :'name' => :'name',
        :'description' => :'Description',
        :'module_description' => :'moduleDescription',
        :'module_identifier' => :'moduleIdentifier',
        :'module_name' => :'moduleName',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'category' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'module_description' => :'String',
        :'module_identifier' => :'String',
        :'module_name' => :'String',
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

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'Description')
        self.description = attributes[:'Description']
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

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@category.nil? && @category.to_s.length > 30
        invalid_properties.push("invalid value for 'category', the character length must be smaller than or equal to 30.")
      end

      if !@name.nil? && @name.to_s.length > 50
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 50.")
      end

      if !@description.nil? && @description.to_s.length > 200
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 200.")
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
      return false if !@category.nil? && @category.to_s.length > 30
      return false if !@name.nil? && @name.to_s.length > 50
      return false if !@description.nil? && @description.to_s.length > 200
      return false if !@module_description.nil? && @module_description.to_s.length > 50
      return false if !@module_identifier.nil? && @module_identifier.to_s.length > 20
      return false if !@module_name.nil? && @module_name.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] category Value to be assigned
    def category=(category)

      if !category.nil? && category.to_s.length > 30
        fail ArgumentError, "invalid value for 'category', the character length must be smaller than or equal to 30."
      end

      @category = category
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 50
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 50."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 200
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 200."
      end

      @description = description
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
          category == o.category &&
          name == o.name &&
          description == o.description &&
          module_description == o.module_description &&
          module_identifier == o.module_identifier &&
          module_name == o.module_name &&
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
      [id, category, name, description, module_description, module_identifier, module_name, _info].hash
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

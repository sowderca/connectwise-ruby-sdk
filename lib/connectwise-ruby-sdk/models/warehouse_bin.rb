
require 'date'

module ConnectWise

  class WarehouseBin
    attr_accessor :id

    attr_accessor :name

    attr_accessor :warehouse

    attr_accessor :location

    attr_accessor :department

    attr_accessor :min_quantity

    attr_accessor :max_quantity

    attr_accessor :overflow_bin

    attr_accessor :manager

    attr_accessor :length

    attr_accessor :width

    attr_accessor :height

    attr_accessor :weight

    attr_accessor :default_flag

    attr_accessor :inactive_flag

    attr_accessor :transfer_bin

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'warehouse' => :'warehouse',
        :'location' => :'location',
        :'department' => :'department',
        :'min_quantity' => :'minQuantity',
        :'max_quantity' => :'maxQuantity',
        :'overflow_bin' => :'overflowBin',
        :'manager' => :'manager',
        :'length' => :'length',
        :'width' => :'width',
        :'height' => :'height',
        :'weight' => :'weight',
        :'default_flag' => :'defaultFlag',
        :'inactive_flag' => :'inactiveFlag',
        :'transfer_bin' => :'transferBin',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'warehouse' => :'WarehouseReference',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'min_quantity' => :'Float',
        :'max_quantity' => :'Float',
        :'overflow_bin' => :'WarehouseBinReference',
        :'manager' => :'MemberReference',
        :'length' => :'Float',
        :'width' => :'Float',
        :'height' => :'Float',
        :'weight' => :'Float',
        :'default_flag' => :'BOOLEAN',
        :'inactive_flag' => :'BOOLEAN',
        :'transfer_bin' => :'WarehouseBinReference',
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

      if attributes.has_key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'minQuantity')
        self.min_quantity = attributes[:'minQuantity']
      end

      if attributes.has_key?(:'maxQuantity')
        self.max_quantity = attributes[:'maxQuantity']
      end

      if attributes.has_key?(:'overflowBin')
        self.overflow_bin = attributes[:'overflowBin']
      end

      if attributes.has_key?(:'manager')
        self.manager = attributes[:'manager']
      end

      if attributes.has_key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.has_key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.has_key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'transferBin')
        self.transfer_bin = attributes[:'transferBin']
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

      if @warehouse.nil?
        invalid_properties.push("invalid value for 'warehouse', warehouse cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @warehouse.nil?
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          warehouse == o.warehouse &&
          location == o.location &&
          department == o.department &&
          min_quantity == o.min_quantity &&
          max_quantity == o.max_quantity &&
          overflow_bin == o.overflow_bin &&
          manager == o.manager &&
          length == o.length &&
          width == o.width &&
          height == o.height &&
          weight == o.weight &&
          default_flag == o.default_flag &&
          inactive_flag == o.inactive_flag &&
          transfer_bin == o.transfer_bin &&
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
      [id, name, warehouse, location, department, min_quantity, max_quantity, overflow_bin, manager, length, width, height, weight, default_flag, inactive_flag, transfer_bin, _info].hash
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

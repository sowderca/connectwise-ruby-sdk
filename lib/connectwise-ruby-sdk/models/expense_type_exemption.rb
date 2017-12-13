
require 'date'

module ConnectWise

  class ExpenseTypeExemption
    attr_accessor :id

    attr_accessor :expense_type

    # At least one level flag is required -- levelOneFlag, levelTwoFlag, levelThreeFlag, levelFourFlag, and/or levelFiveFlag
    attr_accessor :level_one_flag

    # At least one level flag is required -- levelOneFlag, levelTwoFlag, levelThreeFlag, levelFourFlag, and/or levelFiveFlag
    attr_accessor :level_two_flag

    # At least one level flag is required -- levelOneFlag, levelTwoFlag, levelThreeFlag, levelFourFlag, and/or levelFiveFlag
    attr_accessor :level_three_flag

    # At least one level flag is required -- levelOneFlag, levelTwoFlag, levelThreeFlag, levelFourFlag, and/or levelFiveFlag
    attr_accessor :level_four_flag

    # At least one level flag is required -- levelOneFlag, levelTwoFlag, levelThreeFlag, levelFourFlag, and/or levelFiveFlag
    attr_accessor :level_five_flag

    attr_accessor :tax_code

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'expense_type' => :'expenseType',
        :'level_one_flag' => :'levelOneFlag',
        :'level_two_flag' => :'levelTwoFlag',
        :'level_three_flag' => :'levelThreeFlag',
        :'level_four_flag' => :'levelFourFlag',
        :'level_five_flag' => :'levelFiveFlag',
        :'tax_code' => :'taxCode',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'expense_type' => :'ExpenseTypeReference',
        :'level_one_flag' => :'BOOLEAN',
        :'level_two_flag' => :'BOOLEAN',
        :'level_three_flag' => :'BOOLEAN',
        :'level_four_flag' => :'BOOLEAN',
        :'level_five_flag' => :'BOOLEAN',
        :'tax_code' => :'TaxCodeReference',
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

      if attributes.has_key?(:'expenseType')
        self.expense_type = attributes[:'expenseType']
      end

      if attributes.has_key?(:'levelOneFlag')
        self.level_one_flag = attributes[:'levelOneFlag']
      end

      if attributes.has_key?(:'levelTwoFlag')
        self.level_two_flag = attributes[:'levelTwoFlag']
      end

      if attributes.has_key?(:'levelThreeFlag')
        self.level_three_flag = attributes[:'levelThreeFlag']
      end

      if attributes.has_key?(:'levelFourFlag')
        self.level_four_flag = attributes[:'levelFourFlag']
      end

      if attributes.has_key?(:'levelFiveFlag')
        self.level_five_flag = attributes[:'levelFiveFlag']
      end

      if attributes.has_key?(:'taxCode')
        self.tax_code = attributes[:'taxCode']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @expense_type.nil?
        invalid_properties.push("invalid value for 'expense_type', expense_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @expense_type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          expense_type == o.expense_type &&
          level_one_flag == o.level_one_flag &&
          level_two_flag == o.level_two_flag &&
          level_three_flag == o.level_three_flag &&
          level_four_flag == o.level_four_flag &&
          level_five_flag == o.level_five_flag &&
          tax_code == o.tax_code &&
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
      [id, expense_type, level_one_flag, level_two_flag, level_three_flag, level_four_flag, level_five_flag, tax_code, _info].hash
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

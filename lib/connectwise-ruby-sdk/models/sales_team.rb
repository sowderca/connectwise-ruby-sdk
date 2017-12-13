
require 'date'

module ConnectWise

  class SalesTeam
    attr_accessor :id

    attr_accessor :sales_team_identifier

    attr_accessor :sales_team_description

    attr_accessor :sales_team_location

    attr_accessor :inactive_flag

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'sales_team_identifier' => :'salesTeamIdentifier',
        :'sales_team_description' => :'salesTeamDescription',
        :'sales_team_location' => :'salesTeamLocation',
        :'inactive_flag' => :'inactiveFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'sales_team_identifier' => :'String',
        :'sales_team_description' => :'String',
        :'sales_team_location' => :'SystemLocationReference',
        :'inactive_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'salesTeamIdentifier')
        self.sales_team_identifier = attributes[:'salesTeamIdentifier']
      end

      if attributes.has_key?(:'salesTeamDescription')
        self.sales_team_description = attributes[:'salesTeamDescription']
      end

      if attributes.has_key?(:'salesTeamLocation')
        self.sales_team_location = attributes[:'salesTeamLocation']
      end

      if attributes.has_key?(:'inactiveFlag')
        self.inactive_flag = attributes[:'inactiveFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sales_team_identifier.nil?
        invalid_properties.push("invalid value for 'sales_team_identifier', sales_team_identifier cannot be nil.")
      end

      if @sales_team_identifier.to_s.length > 20
        invalid_properties.push("invalid value for 'sales_team_identifier', the character length must be smaller than or equal to 20.")
      end

      if @sales_team_description.nil?
        invalid_properties.push("invalid value for 'sales_team_description', sales_team_description cannot be nil.")
      end

      if @sales_team_description.to_s.length > 50
        invalid_properties.push("invalid value for 'sales_team_description', the character length must be smaller than or equal to 50.")
      end

      if @sales_team_location.nil?
        invalid_properties.push("invalid value for 'sales_team_location', sales_team_location cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sales_team_identifier.nil?
      return false if @sales_team_identifier.to_s.length > 20
      return false if @sales_team_description.nil?
      return false if @sales_team_description.to_s.length > 50
      return false if @sales_team_location.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_team_identifier Value to be assigned
    def sales_team_identifier=(sales_team_identifier)
      if sales_team_identifier.nil?
        fail ArgumentError, "sales_team_identifier cannot be nil"
      end

      if sales_team_identifier.to_s.length > 20
        fail ArgumentError, "invalid value for 'sales_team_identifier', the character length must be smaller than or equal to 20."
      end

      @sales_team_identifier = sales_team_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_team_description Value to be assigned
    def sales_team_description=(sales_team_description)
      if sales_team_description.nil?
        fail ArgumentError, "sales_team_description cannot be nil"
      end

      if sales_team_description.to_s.length > 50
        fail ArgumentError, "invalid value for 'sales_team_description', the character length must be smaller than or equal to 50."
      end

      @sales_team_description = sales_team_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sales_team_identifier == o.sales_team_identifier &&
          sales_team_description == o.sales_team_description &&
          sales_team_location == o.sales_team_location &&
          inactive_flag == o.inactive_flag &&
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
      [id, sales_team_identifier, sales_team_description, sales_team_location, inactive_flag, _info].hash
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

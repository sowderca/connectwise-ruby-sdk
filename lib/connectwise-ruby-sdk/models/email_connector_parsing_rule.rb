
require 'date'

module ConnectWise

  class EmailConnectorParsingRule
    attr_accessor :id

    attr_accessor :parsing_style

    attr_accessor :priority

    attr_accessor :parsing_variable

    attr_accessor :search_term

    attr_accessor :service_priority

    attr_accessor :service_status

    attr_accessor :service_type

    attr_accessor :service_sub_type

    attr_accessor :service_item

    attr_accessor :service_board

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'parsing_style' => :'parsingStyle',
        :'priority' => :'priority',
        :'parsing_variable' => :'parsingVariable',
        :'search_term' => :'searchTerm',
        :'service_priority' => :'servicePriority',
        :'service_status' => :'serviceStatus',
        :'service_type' => :'serviceType',
        :'service_sub_type' => :'serviceSubType',
        :'service_item' => :'serviceItem',
        :'service_board' => :'serviceBoard',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'parsing_style' => :'EmailConnectorParsingStyleReference',
        :'priority' => :'Integer',
        :'parsing_variable' => :'EmailConnectorParsingVariableReference',
        :'search_term' => :'String',
        :'service_priority' => :'PriorityReference',
        :'service_status' => :'ServiceStatusReference',
        :'service_type' => :'ServiceTypeReference',
        :'service_sub_type' => :'ServiceSubTypeReference',
        :'service_item' => :'ServiceItemReference',
        :'service_board' => :'BoardReference',
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

      if attributes.has_key?(:'parsingStyle')
        self.parsing_style = attributes[:'parsingStyle']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'parsingVariable')
        self.parsing_variable = attributes[:'parsingVariable']
      end

      if attributes.has_key?(:'searchTerm')
        self.search_term = attributes[:'searchTerm']
      end

      if attributes.has_key?(:'servicePriority')
        self.service_priority = attributes[:'servicePriority']
      end

      if attributes.has_key?(:'serviceStatus')
        self.service_status = attributes[:'serviceStatus']
      end

      if attributes.has_key?(:'serviceType')
        self.service_type = attributes[:'serviceType']
      end

      if attributes.has_key?(:'serviceSubType')
        self.service_sub_type = attributes[:'serviceSubType']
      end

      if attributes.has_key?(:'serviceItem')
        self.service_item = attributes[:'serviceItem']
      end

      if attributes.has_key?(:'serviceBoard')
        self.service_board = attributes[:'serviceBoard']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @priority.nil?
        invalid_properties.push("invalid value for 'priority', priority cannot be nil.")
      end

      if @parsing_variable.nil?
        invalid_properties.push("invalid value for 'parsing_variable', parsing_variable cannot be nil.")
      end

      if @search_term.nil?
        invalid_properties.push("invalid value for 'search_term', search_term cannot be nil.")
      end

      if @search_term.to_s.length > 250
        invalid_properties.push("invalid value for 'search_term', the character length must be smaller than or equal to 250.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @priority.nil?
      return false if @parsing_variable.nil?
      return false if @search_term.nil?
      return false if @search_term.to_s.length > 250
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] search_term Value to be assigned
    def search_term=(search_term)
      if search_term.nil?
        fail ArgumentError, "search_term cannot be nil"
      end

      if search_term.to_s.length > 250
        fail ArgumentError, "invalid value for 'search_term', the character length must be smaller than or equal to 250."
      end

      @search_term = search_term
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          parsing_style == o.parsing_style &&
          priority == o.priority &&
          parsing_variable == o.parsing_variable &&
          search_term == o.search_term &&
          service_priority == o.service_priority &&
          service_status == o.service_status &&
          service_type == o.service_type &&
          service_sub_type == o.service_sub_type &&
          service_item == o.service_item &&
          service_board == o.service_board &&
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
      [id, parsing_style, priority, parsing_variable, search_term, service_priority, service_status, service_type, service_sub_type, service_item, service_board, _info].hash
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

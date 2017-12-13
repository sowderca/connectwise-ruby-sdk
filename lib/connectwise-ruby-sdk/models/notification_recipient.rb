
require 'date'

module ConnectWise

  class NotificationRecipient
    attr_accessor :id

    attr_accessor :identifier

    attr_accessor :name

    attr_accessor :external_flag

    attr_accessor :service_flag

    attr_accessor :sales_flag

    attr_accessor :invoice_flag

    attr_accessor :agreement_flag

    attr_accessor :member_flag

    attr_accessor :config_flag

    attr_accessor :msp_flag

    attr_accessor :track_flag

    attr_accessor :project_flag

    attr_accessor :procurement_flag

    attr_accessor :knowledge_base_flag

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'identifier' => :'identifier',
        :'name' => :'name',
        :'external_flag' => :'externalFlag',
        :'service_flag' => :'serviceFlag',
        :'sales_flag' => :'salesFlag',
        :'invoice_flag' => :'invoiceFlag',
        :'agreement_flag' => :'agreementFlag',
        :'member_flag' => :'memberFlag',
        :'config_flag' => :'configFlag',
        :'msp_flag' => :'mspFlag',
        :'track_flag' => :'trackFlag',
        :'project_flag' => :'projectFlag',
        :'procurement_flag' => :'procurementFlag',
        :'knowledge_base_flag' => :'knowledgeBaseFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'identifier' => :'String',
        :'name' => :'String',
        :'external_flag' => :'BOOLEAN',
        :'service_flag' => :'BOOLEAN',
        :'sales_flag' => :'BOOLEAN',
        :'invoice_flag' => :'BOOLEAN',
        :'agreement_flag' => :'BOOLEAN',
        :'member_flag' => :'BOOLEAN',
        :'config_flag' => :'BOOLEAN',
        :'msp_flag' => :'BOOLEAN',
        :'track_flag' => :'BOOLEAN',
        :'project_flag' => :'BOOLEAN',
        :'procurement_flag' => :'BOOLEAN',
        :'knowledge_base_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'externalFlag')
        self.external_flag = attributes[:'externalFlag']
      end

      if attributes.has_key?(:'serviceFlag')
        self.service_flag = attributes[:'serviceFlag']
      end

      if attributes.has_key?(:'salesFlag')
        self.sales_flag = attributes[:'salesFlag']
      end

      if attributes.has_key?(:'invoiceFlag')
        self.invoice_flag = attributes[:'invoiceFlag']
      end

      if attributes.has_key?(:'agreementFlag')
        self.agreement_flag = attributes[:'agreementFlag']
      end

      if attributes.has_key?(:'memberFlag')
        self.member_flag = attributes[:'memberFlag']
      end

      if attributes.has_key?(:'configFlag')
        self.config_flag = attributes[:'configFlag']
      end

      if attributes.has_key?(:'mspFlag')
        self.msp_flag = attributes[:'mspFlag']
      end

      if attributes.has_key?(:'trackFlag')
        self.track_flag = attributes[:'trackFlag']
      end

      if attributes.has_key?(:'projectFlag')
        self.project_flag = attributes[:'projectFlag']
      end

      if attributes.has_key?(:'procurementFlag')
        self.procurement_flag = attributes[:'procurementFlag']
      end

      if attributes.has_key?(:'knowledgeBaseFlag')
        self.knowledge_base_flag = attributes[:'knowledgeBaseFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
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
          id == o.id &&
          identifier == o.identifier &&
          name == o.name &&
          external_flag == o.external_flag &&
          service_flag == o.service_flag &&
          sales_flag == o.sales_flag &&
          invoice_flag == o.invoice_flag &&
          agreement_flag == o.agreement_flag &&
          member_flag == o.member_flag &&
          config_flag == o.config_flag &&
          msp_flag == o.msp_flag &&
          track_flag == o.track_flag &&
          project_flag == o.project_flag &&
          procurement_flag == o.procurement_flag &&
          knowledge_base_flag == o.knowledge_base_flag &&
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
      [id, identifier, name, external_flag, service_flag, sales_flag, invoice_flag, agreement_flag, member_flag, config_flag, msp_flag, track_flag, project_flag, procurement_flag, knowledge_base_flag, _info].hash
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

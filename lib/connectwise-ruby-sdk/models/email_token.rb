
require 'date'

module ConnectWise

  class EmailToken
    attr_accessor :id

    attr_accessor :token

    attr_accessor :description

    attr_accessor :address_flag

    attr_accessor :agreement_flag

    attr_accessor :company_flag

    attr_accessor :config_flag

    attr_accessor :contact_flag

    attr_accessor :invoice_flag

    attr_accessor :purchase_order_flag

    attr_accessor :purchase_order_status_flag

    attr_accessor :rma_flag

    attr_accessor :sales_flag

    attr_accessor :service_flag

    attr_accessor :tracks_flag

    attr_accessor :workflow_flag


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'token' => :'token',
        :'description' => :'description',
        :'address_flag' => :'addressFlag',
        :'agreement_flag' => :'agreementFlag',
        :'company_flag' => :'companyFlag',
        :'config_flag' => :'configFlag',
        :'contact_flag' => :'contactFlag',
        :'invoice_flag' => :'invoiceFlag',
        :'purchase_order_flag' => :'purchaseOrderFlag',
        :'purchase_order_status_flag' => :'purchaseOrderStatusFlag',
        :'rma_flag' => :'rmaFlag',
        :'sales_flag' => :'salesFlag',
        :'service_flag' => :'serviceFlag',
        :'tracks_flag' => :'tracksFlag',
        :'workflow_flag' => :'workflowFlag'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'token' => :'String',
        :'description' => :'String',
        :'address_flag' => :'BOOLEAN',
        :'agreement_flag' => :'BOOLEAN',
        :'company_flag' => :'BOOLEAN',
        :'config_flag' => :'BOOLEAN',
        :'contact_flag' => :'BOOLEAN',
        :'invoice_flag' => :'BOOLEAN',
        :'purchase_order_flag' => :'BOOLEAN',
        :'purchase_order_status_flag' => :'BOOLEAN',
        :'rma_flag' => :'BOOLEAN',
        :'sales_flag' => :'BOOLEAN',
        :'service_flag' => :'BOOLEAN',
        :'tracks_flag' => :'BOOLEAN',
        :'workflow_flag' => :'BOOLEAN'
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

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'addressFlag')
        self.address_flag = attributes[:'addressFlag']
      end

      if attributes.has_key?(:'agreementFlag')
        self.agreement_flag = attributes[:'agreementFlag']
      end

      if attributes.has_key?(:'companyFlag')
        self.company_flag = attributes[:'companyFlag']
      end

      if attributes.has_key?(:'configFlag')
        self.config_flag = attributes[:'configFlag']
      end

      if attributes.has_key?(:'contactFlag')
        self.contact_flag = attributes[:'contactFlag']
      end

      if attributes.has_key?(:'invoiceFlag')
        self.invoice_flag = attributes[:'invoiceFlag']
      end

      if attributes.has_key?(:'purchaseOrderFlag')
        self.purchase_order_flag = attributes[:'purchaseOrderFlag']
      end

      if attributes.has_key?(:'purchaseOrderStatusFlag')
        self.purchase_order_status_flag = attributes[:'purchaseOrderStatusFlag']
      end

      if attributes.has_key?(:'rmaFlag')
        self.rma_flag = attributes[:'rmaFlag']
      end

      if attributes.has_key?(:'salesFlag')
        self.sales_flag = attributes[:'salesFlag']
      end

      if attributes.has_key?(:'serviceFlag')
        self.service_flag = attributes[:'serviceFlag']
      end

      if attributes.has_key?(:'tracksFlag')
        self.tracks_flag = attributes[:'tracksFlag']
      end

      if attributes.has_key?(:'workflowFlag')
        self.workflow_flag = attributes[:'workflowFlag']
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
          token == o.token &&
          description == o.description &&
          address_flag == o.address_flag &&
          agreement_flag == o.agreement_flag &&
          company_flag == o.company_flag &&
          config_flag == o.config_flag &&
          contact_flag == o.contact_flag &&
          invoice_flag == o.invoice_flag &&
          purchase_order_flag == o.purchase_order_flag &&
          purchase_order_status_flag == o.purchase_order_status_flag &&
          rma_flag == o.rma_flag &&
          sales_flag == o.sales_flag &&
          service_flag == o.service_flag &&
          tracks_flag == o.tracks_flag &&
          workflow_flag == o.workflow_flag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, token, description, address_flag, agreement_flag, company_flag, config_flag, contact_flag, invoice_flag, purchase_order_flag, purchase_order_status_flag, rma_flag, sales_flag, service_flag, tracks_flag, workflow_flag].hash
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

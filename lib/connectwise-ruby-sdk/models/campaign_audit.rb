
require 'date'

module ConnectWise

  class CampaignAudit
    attr_accessor :id

    attr_accessor :emails_sent

    attr_accessor :emails_unsent

    attr_accessor :documents_created

    attr_accessor :email_subject

    attr_accessor :group

    attr_accessor :campaign_id

    attr_accessor :created_by

    attr_accessor :date_created


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'emails_sent' => :'emailsSent',
        :'emails_unsent' => :'emailsUnsent',
        :'documents_created' => :'documentsCreated',
        :'email_subject' => :'emailSubject',
        :'group' => :'group',
        :'campaign_id' => :'campaignId',
        :'created_by' => :'createdBy',
        :'date_created' => :'dateCreated'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'emails_sent' => :'Integer',
        :'emails_unsent' => :'Integer',
        :'documents_created' => :'Integer',
        :'email_subject' => :'String',
        :'group' => :'GroupReference',
        :'campaign_id' => :'Integer',
        :'created_by' => :'String',
        :'date_created' => :'String'
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

      if attributes.has_key?(:'emailsSent')
        self.emails_sent = attributes[:'emailsSent']
      end

      if attributes.has_key?(:'emailsUnsent')
        self.emails_unsent = attributes[:'emailsUnsent']
      end

      if attributes.has_key?(:'documentsCreated')
        self.documents_created = attributes[:'documentsCreated']
      end

      if attributes.has_key?(:'emailSubject')
        self.email_subject = attributes[:'emailSubject']
      end

      if attributes.has_key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.has_key?(:'campaignId')
        self.campaign_id = attributes[:'campaignId']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @emails_sent.nil?
        invalid_properties.push("invalid value for 'emails_sent', emails_sent cannot be nil.")
      end

      if @emails_sent > 2147483647
        invalid_properties.push("invalid value for 'emails_sent', must be smaller than or equal to 2147483647.")
      end

      if @emails_sent < 0
        invalid_properties.push("invalid value for 'emails_sent', must be greater than or equal to 0.")
      end

      if !@emails_unsent.nil? && @emails_unsent > 2147483647
        invalid_properties.push("invalid value for 'emails_unsent', must be smaller than or equal to 2147483647.")
      end

      if !@emails_unsent.nil? && @emails_unsent < 0
        invalid_properties.push("invalid value for 'emails_unsent', must be greater than or equal to 0.")
      end

      if !@documents_created.nil? && @documents_created > 2147483647
        invalid_properties.push("invalid value for 'documents_created', must be smaller than or equal to 2147483647.")
      end

      if !@documents_created.nil? && @documents_created < 0
        invalid_properties.push("invalid value for 'documents_created', must be greater than or equal to 0.")
      end

      if !@email_subject.nil? && @email_subject.to_s.length > 1000
        invalid_properties.push("invalid value for 'email_subject', the character length must be smaller than or equal to 1000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @emails_sent.nil?
      return false if @emails_sent > 2147483647
      return false if @emails_sent < 0
      return false if !@emails_unsent.nil? && @emails_unsent > 2147483647
      return false if !@emails_unsent.nil? && @emails_unsent < 0
      return false if !@documents_created.nil? && @documents_created > 2147483647
      return false if !@documents_created.nil? && @documents_created < 0
      return false if !@email_subject.nil? && @email_subject.to_s.length > 1000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] emails_sent Value to be assigned
    def emails_sent=(emails_sent)
      if emails_sent.nil?
        fail ArgumentError, "emails_sent cannot be nil"
      end

      if emails_sent > 2147483647
        fail ArgumentError, "invalid value for 'emails_sent', must be smaller than or equal to 2147483647."
      end

      if emails_sent < 0
        fail ArgumentError, "invalid value for 'emails_sent', must be greater than or equal to 0."
      end

      @emails_sent = emails_sent
    end

    # Custom attribute writer method with validation
    # @param [Object] emails_unsent Value to be assigned
    def emails_unsent=(emails_unsent)

      if !emails_unsent.nil? && emails_unsent > 2147483647
        fail ArgumentError, "invalid value for 'emails_unsent', must be smaller than or equal to 2147483647."
      end

      if !emails_unsent.nil? && emails_unsent < 0
        fail ArgumentError, "invalid value for 'emails_unsent', must be greater than or equal to 0."
      end

      @emails_unsent = emails_unsent
    end

    # Custom attribute writer method with validation
    # @param [Object] documents_created Value to be assigned
    def documents_created=(documents_created)

      if !documents_created.nil? && documents_created > 2147483647
        fail ArgumentError, "invalid value for 'documents_created', must be smaller than or equal to 2147483647."
      end

      if !documents_created.nil? && documents_created < 0
        fail ArgumentError, "invalid value for 'documents_created', must be greater than or equal to 0."
      end

      @documents_created = documents_created
    end

    # Custom attribute writer method with validation
    # @param [Object] email_subject Value to be assigned
    def email_subject=(email_subject)

      if !email_subject.nil? && email_subject.to_s.length > 1000
        fail ArgumentError, "invalid value for 'email_subject', the character length must be smaller than or equal to 1000."
      end

      @email_subject = email_subject
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          emails_sent == o.emails_sent &&
          emails_unsent == o.emails_unsent &&
          documents_created == o.documents_created &&
          email_subject == o.email_subject &&
          group == o.group &&
          campaign_id == o.campaign_id &&
          created_by == o.created_by &&
          date_created == o.date_created
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, emails_sent, emails_unsent, documents_created, email_subject, group, campaign_id, created_by, date_created].hash
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

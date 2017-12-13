
require 'date'

module ConnectWise

  class PortalConfigurationPasswordEmailSetup
    attr_accessor :id

    attr_accessor :valid_password_email_use_custom_email_flag

    attr_accessor :valid_password_email_from_first_name

    attr_accessor :valid_password_email_from_last_name

    # Required when validPasswordEmailUseCustomEmailFlag is true
    attr_accessor :valid_password_email_from_email

    attr_accessor :valid_password_email_subject

    attr_accessor :valid_password_email_body

    attr_accessor :invalid_password_email_use_custom_email_flag

    attr_accessor :invalid_password_email_from_first_name

    attr_accessor :invalid_password_email_from_last_name

    # Required when invalidPasswordEmailUseCustomEmailFlag is true
    attr_accessor :invalid_password_email_from_email

    attr_accessor :invalid_password_email_subject

    attr_accessor :invalid_password_email_body

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'valid_password_email_use_custom_email_flag' => :'validPasswordEmailUseCustomEmailFlag',
        :'valid_password_email_from_first_name' => :'validPasswordEmailFromFirstName',
        :'valid_password_email_from_last_name' => :'validPasswordEmailFromLastName',
        :'valid_password_email_from_email' => :'validPasswordEmailFromEmail',
        :'valid_password_email_subject' => :'validPasswordEmailSubject',
        :'valid_password_email_body' => :'validPasswordEmailBody',
        :'invalid_password_email_use_custom_email_flag' => :'invalidPasswordEmailUseCustomEmailFlag',
        :'invalid_password_email_from_first_name' => :'invalidPasswordEmailFromFirstName',
        :'invalid_password_email_from_last_name' => :'invalidPasswordEmailFromLastName',
        :'invalid_password_email_from_email' => :'invalidPasswordEmailFromEmail',
        :'invalid_password_email_subject' => :'invalidPasswordEmailSubject',
        :'invalid_password_email_body' => :'invalidPasswordEmailBody',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'valid_password_email_use_custom_email_flag' => :'BOOLEAN',
        :'valid_password_email_from_first_name' => :'String',
        :'valid_password_email_from_last_name' => :'String',
        :'valid_password_email_from_email' => :'String',
        :'valid_password_email_subject' => :'String',
        :'valid_password_email_body' => :'String',
        :'invalid_password_email_use_custom_email_flag' => :'BOOLEAN',
        :'invalid_password_email_from_first_name' => :'String',
        :'invalid_password_email_from_last_name' => :'String',
        :'invalid_password_email_from_email' => :'String',
        :'invalid_password_email_subject' => :'String',
        :'invalid_password_email_body' => :'String',
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

      if attributes.has_key?(:'validPasswordEmailUseCustomEmailFlag')
        self.valid_password_email_use_custom_email_flag = attributes[:'validPasswordEmailUseCustomEmailFlag']
      end

      if attributes.has_key?(:'validPasswordEmailFromFirstName')
        self.valid_password_email_from_first_name = attributes[:'validPasswordEmailFromFirstName']
      end

      if attributes.has_key?(:'validPasswordEmailFromLastName')
        self.valid_password_email_from_last_name = attributes[:'validPasswordEmailFromLastName']
      end

      if attributes.has_key?(:'validPasswordEmailFromEmail')
        self.valid_password_email_from_email = attributes[:'validPasswordEmailFromEmail']
      end

      if attributes.has_key?(:'validPasswordEmailSubject')
        self.valid_password_email_subject = attributes[:'validPasswordEmailSubject']
      end

      if attributes.has_key?(:'validPasswordEmailBody')
        self.valid_password_email_body = attributes[:'validPasswordEmailBody']
      end

      if attributes.has_key?(:'invalidPasswordEmailUseCustomEmailFlag')
        self.invalid_password_email_use_custom_email_flag = attributes[:'invalidPasswordEmailUseCustomEmailFlag']
      end

      if attributes.has_key?(:'invalidPasswordEmailFromFirstName')
        self.invalid_password_email_from_first_name = attributes[:'invalidPasswordEmailFromFirstName']
      end

      if attributes.has_key?(:'invalidPasswordEmailFromLastName')
        self.invalid_password_email_from_last_name = attributes[:'invalidPasswordEmailFromLastName']
      end

      if attributes.has_key?(:'invalidPasswordEmailFromEmail')
        self.invalid_password_email_from_email = attributes[:'invalidPasswordEmailFromEmail']
      end

      if attributes.has_key?(:'invalidPasswordEmailSubject')
        self.invalid_password_email_subject = attributes[:'invalidPasswordEmailSubject']
      end

      if attributes.has_key?(:'invalidPasswordEmailBody')
        self.invalid_password_email_body = attributes[:'invalidPasswordEmailBody']
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
          valid_password_email_use_custom_email_flag == o.valid_password_email_use_custom_email_flag &&
          valid_password_email_from_first_name == o.valid_password_email_from_first_name &&
          valid_password_email_from_last_name == o.valid_password_email_from_last_name &&
          valid_password_email_from_email == o.valid_password_email_from_email &&
          valid_password_email_subject == o.valid_password_email_subject &&
          valid_password_email_body == o.valid_password_email_body &&
          invalid_password_email_use_custom_email_flag == o.invalid_password_email_use_custom_email_flag &&
          invalid_password_email_from_first_name == o.invalid_password_email_from_first_name &&
          invalid_password_email_from_last_name == o.invalid_password_email_from_last_name &&
          invalid_password_email_from_email == o.invalid_password_email_from_email &&
          invalid_password_email_subject == o.invalid_password_email_subject &&
          invalid_password_email_body == o.invalid_password_email_body &&
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
      [id, valid_password_email_use_custom_email_flag, valid_password_email_from_first_name, valid_password_email_from_last_name, valid_password_email_from_email, valid_password_email_subject, valid_password_email_body, invalid_password_email_use_custom_email_flag, invalid_password_email_from_first_name, invalid_password_email_from_last_name, invalid_password_email_from_email, invalid_password_email_subject, invalid_password_email_body, _info].hash
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


require 'date'

module ConnectWise

  class Imap
    attr_accessor :id

    attr_accessor :name

    attr_accessor :imap_name

    attr_accessor :processed_name

    attr_accessor :server

    attr_accessor :user_name

    attr_accessor :password

    attr_accessor :port

    attr_accessor :ssl_flag

    attr_accessor :email_connector

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'imap_name' => :'imapName',
        :'processed_name' => :'processedName',
        :'server' => :'server',
        :'user_name' => :'userName',
        :'password' => :'password',
        :'port' => :'port',
        :'ssl_flag' => :'sslFlag',
        :'email_connector' => :'emailConnector',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'imap_name' => :'String',
        :'processed_name' => :'String',
        :'server' => :'String',
        :'user_name' => :'String',
        :'password' => :'String',
        :'port' => :'Integer',
        :'ssl_flag' => :'BOOLEAN',
        :'email_connector' => :'EmailConnectorReference',
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

      if attributes.has_key?(:'imapName')
        self.imap_name = attributes[:'imapName']
      end

      if attributes.has_key?(:'processedName')
        self.processed_name = attributes[:'processedName']
      end

      if attributes.has_key?(:'server')
        self.server = attributes[:'server']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'sslFlag')
        self.ssl_flag = attributes[:'sslFlag']
      end

      if attributes.has_key?(:'emailConnector')
        self.email_connector = attributes[:'emailConnector']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 200
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 200.")
      end

      if !@imap_name.nil? && @imap_name.to_s.length > 40
        invalid_properties.push("invalid value for 'imap_name', the character length must be smaller than or equal to 40.")
      end

      if !@processed_name.nil? && @processed_name.to_s.length > 40
        invalid_properties.push("invalid value for 'processed_name', the character length must be smaller than or equal to 40.")
      end

      if !@server.nil? && @server.to_s.length > 200
        invalid_properties.push("invalid value for 'server', the character length must be smaller than or equal to 200.")
      end

      if !@user_name.nil? && @user_name.to_s.length > 80
        invalid_properties.push("invalid value for 'user_name', the character length must be smaller than or equal to 80.")
      end

      if !@password.nil? && @password.to_s.length > 80
        invalid_properties.push("invalid value for 'password', the character length must be smaller than or equal to 80.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 200
      return false if !@imap_name.nil? && @imap_name.to_s.length > 40
      return false if !@processed_name.nil? && @processed_name.to_s.length > 40
      return false if !@server.nil? && @server.to_s.length > 200
      return false if !@user_name.nil? && @user_name.to_s.length > 80
      return false if !@password.nil? && @password.to_s.length > 80
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)

      if !name.nil? && name.to_s.length > 200
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 200."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] imap_name Value to be assigned
    def imap_name=(imap_name)

      if !imap_name.nil? && imap_name.to_s.length > 40
        fail ArgumentError, "invalid value for 'imap_name', the character length must be smaller than or equal to 40."
      end

      @imap_name = imap_name
    end

    # Custom attribute writer method with validation
    # @param [Object] processed_name Value to be assigned
    def processed_name=(processed_name)

      if !processed_name.nil? && processed_name.to_s.length > 40
        fail ArgumentError, "invalid value for 'processed_name', the character length must be smaller than or equal to 40."
      end

      @processed_name = processed_name
    end

    # Custom attribute writer method with validation
    # @param [Object] server Value to be assigned
    def server=(server)

      if !server.nil? && server.to_s.length > 200
        fail ArgumentError, "invalid value for 'server', the character length must be smaller than or equal to 200."
      end

      @server = server
    end

    # Custom attribute writer method with validation
    # @param [Object] user_name Value to be assigned
    def user_name=(user_name)

      if !user_name.nil? && user_name.to_s.length > 80
        fail ArgumentError, "invalid value for 'user_name', the character length must be smaller than or equal to 80."
      end

      @user_name = user_name
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)

      if !password.nil? && password.to_s.length > 80
        fail ArgumentError, "invalid value for 'password', the character length must be smaller than or equal to 80."
      end

      @password = password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          imap_name == o.imap_name &&
          processed_name == o.processed_name &&
          server == o.server &&
          user_name == o.user_name &&
          password == o.password &&
          port == o.port &&
          ssl_flag == o.ssl_flag &&
          email_connector == o.email_connector &&
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
      [id, name, imap_name, processed_name, server, user_name, password, port, ssl_flag, email_connector, _info].hash
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

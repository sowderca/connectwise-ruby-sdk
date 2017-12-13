
require 'date'

module ConnectWise

  class Country
    attr_accessor :id

    attr_accessor :name

    attr_accessor :default_flag

    attr_accessor :currency

    attr_accessor :city_caption

    attr_accessor :state_caption

    attr_accessor :zip_caption

    attr_accessor :zip_minimum_length

    attr_accessor :dialing_prefix

    attr_accessor :address_format

    attr_accessor :country_code

    attr_accessor :localization_caption_one

    attr_accessor :localization_value_one

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'default_flag' => :'defaultFlag',
        :'currency' => :'currency',
        :'city_caption' => :'cityCaption',
        :'state_caption' => :'stateCaption',
        :'zip_caption' => :'zipCaption',
        :'zip_minimum_length' => :'zipMinimumLength',
        :'dialing_prefix' => :'dialingPrefix',
        :'address_format' => :'addressFormat',
        :'country_code' => :'countryCode',
        :'localization_caption_one' => :'localizationCaptionOne',
        :'localization_value_one' => :'localizationValueOne',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'default_flag' => :'BOOLEAN',
        :'currency' => :'CurrencyReference',
        :'city_caption' => :'String',
        :'state_caption' => :'String',
        :'zip_caption' => :'String',
        :'zip_minimum_length' => :'Integer',
        :'dialing_prefix' => :'String',
        :'address_format' => :'AddressFormatReference',
        :'country_code' => :'String',
        :'localization_caption_one' => :'String',
        :'localization_value_one' => :'String',
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

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'cityCaption')
        self.city_caption = attributes[:'cityCaption']
      end

      if attributes.has_key?(:'stateCaption')
        self.state_caption = attributes[:'stateCaption']
      end

      if attributes.has_key?(:'zipCaption')
        self.zip_caption = attributes[:'zipCaption']
      end

      if attributes.has_key?(:'zipMinimumLength')
        self.zip_minimum_length = attributes[:'zipMinimumLength']
      end

      if attributes.has_key?(:'dialingPrefix')
        self.dialing_prefix = attributes[:'dialingPrefix']
      end

      if attributes.has_key?(:'addressFormat')
        self.address_format = attributes[:'addressFormat']
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'localizationCaptionOne')
        self.localization_caption_one = attributes[:'localizationCaptionOne']
      end

      if attributes.has_key?(:'localizationValueOne')
        self.localization_value_one = attributes[:'localizationValueOne']
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

      if @currency.nil?
        invalid_properties.push("invalid value for 'currency', currency cannot be nil.")
      end

      if !@city_caption.nil? && @city_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'city_caption', the character length must be smaller than or equal to 25.")
      end

      if !@state_caption.nil? && @state_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'state_caption', the character length must be smaller than or equal to 25.")
      end

      if !@zip_caption.nil? && @zip_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'zip_caption', the character length must be smaller than or equal to 25.")
      end

      if !@zip_minimum_length.nil? && @zip_minimum_length > 10
        invalid_properties.push("invalid value for 'zip_minimum_length', must be smaller than or equal to 10.")
      end

      if !@zip_minimum_length.nil? && @zip_minimum_length < 1
        invalid_properties.push("invalid value for 'zip_minimum_length', must be greater than or equal to 1.")
      end

      if !@dialing_prefix.nil? && @dialing_prefix.to_s.length > 5
        invalid_properties.push("invalid value for 'dialing_prefix', the character length must be smaller than or equal to 5.")
      end

      if !@country_code.nil? && @country_code.to_s.length > 2
        invalid_properties.push("invalid value for 'country_code', the character length must be smaller than or equal to 2.")
      end

      if !@localization_caption_one.nil? && @localization_caption_one.to_s.length > 25
        invalid_properties.push("invalid value for 'localization_caption_one', the character length must be smaller than or equal to 25.")
      end

      if !@localization_value_one.nil? && @localization_value_one.to_s.length > 50
        invalid_properties.push("invalid value for 'localization_value_one', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if @currency.nil?
      return false if !@city_caption.nil? && @city_caption.to_s.length > 25
      return false if !@state_caption.nil? && @state_caption.to_s.length > 25
      return false if !@zip_caption.nil? && @zip_caption.to_s.length > 25
      return false if !@zip_minimum_length.nil? && @zip_minimum_length > 10
      return false if !@zip_minimum_length.nil? && @zip_minimum_length < 1
      return false if !@dialing_prefix.nil? && @dialing_prefix.to_s.length > 5
      return false if !@country_code.nil? && @country_code.to_s.length > 2
      return false if !@localization_caption_one.nil? && @localization_caption_one.to_s.length > 25
      return false if !@localization_value_one.nil? && @localization_value_one.to_s.length > 50
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

    # Custom attribute writer method with validation
    # @param [Object] city_caption Value to be assigned
    def city_caption=(city_caption)

      if !city_caption.nil? && city_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'city_caption', the character length must be smaller than or equal to 25."
      end

      @city_caption = city_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] state_caption Value to be assigned
    def state_caption=(state_caption)

      if !state_caption.nil? && state_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'state_caption', the character length must be smaller than or equal to 25."
      end

      @state_caption = state_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_caption Value to be assigned
    def zip_caption=(zip_caption)

      if !zip_caption.nil? && zip_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'zip_caption', the character length must be smaller than or equal to 25."
      end

      @zip_caption = zip_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_minimum_length Value to be assigned
    def zip_minimum_length=(zip_minimum_length)

      if !zip_minimum_length.nil? && zip_minimum_length > 10
        fail ArgumentError, "invalid value for 'zip_minimum_length', must be smaller than or equal to 10."
      end

      if !zip_minimum_length.nil? && zip_minimum_length < 1
        fail ArgumentError, "invalid value for 'zip_minimum_length', must be greater than or equal to 1."
      end

      @zip_minimum_length = zip_minimum_length
    end

    # Custom attribute writer method with validation
    # @param [Object] dialing_prefix Value to be assigned
    def dialing_prefix=(dialing_prefix)

      if !dialing_prefix.nil? && dialing_prefix.to_s.length > 5
        fail ArgumentError, "invalid value for 'dialing_prefix', the character length must be smaller than or equal to 5."
      end

      @dialing_prefix = dialing_prefix
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)

      if !country_code.nil? && country_code.to_s.length > 2
        fail ArgumentError, "invalid value for 'country_code', the character length must be smaller than or equal to 2."
      end

      @country_code = country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] localization_caption_one Value to be assigned
    def localization_caption_one=(localization_caption_one)

      if !localization_caption_one.nil? && localization_caption_one.to_s.length > 25
        fail ArgumentError, "invalid value for 'localization_caption_one', the character length must be smaller than or equal to 25."
      end

      @localization_caption_one = localization_caption_one
    end

    # Custom attribute writer method with validation
    # @param [Object] localization_value_one Value to be assigned
    def localization_value_one=(localization_value_one)

      if !localization_value_one.nil? && localization_value_one.to_s.length > 50
        fail ArgumentError, "invalid value for 'localization_value_one', the character length must be smaller than or equal to 50."
      end

      @localization_value_one = localization_value_one
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          default_flag == o.default_flag &&
          currency == o.currency &&
          city_caption == o.city_caption &&
          state_caption == o.state_caption &&
          zip_caption == o.zip_caption &&
          zip_minimum_length == o.zip_minimum_length &&
          dialing_prefix == o.dialing_prefix &&
          address_format == o.address_format &&
          country_code == o.country_code &&
          localization_caption_one == o.localization_caption_one &&
          localization_value_one == o.localization_value_one &&
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
      [id, name, default_flag, currency, city_caption, state_caption, zip_caption, zip_minimum_length, dialing_prefix, address_format, country_code, localization_caption_one, localization_value_one, _info].hash
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


require 'date'

module ConnectWise

  class PortalConfiguration
    attr_accessor :id

    attr_accessor :name

    attr_accessor :default_flag

    attr_accessor :company

    attr_accessor :login_background_color

    attr_accessor :portal_background_color

    attr_accessor :menu_color

    attr_accessor :button_color

    attr_accessor :header_color

    attr_accessor :url

    attr_accessor :language

    attr_accessor :welcome_text

    attr_accessor :board_ids

    attr_accessor :agreement_type_ids

    attr_accessor :config_type_ids

    attr_accessor :location_ids

    attr_accessor :display_vendor_flag

    # Metadata of the entity
    attr_accessor :_info

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'default_flag' => :'defaultFlag',
        :'company' => :'company',
        :'login_background_color' => :'loginBackgroundColor',
        :'portal_background_color' => :'portalBackgroundColor',
        :'menu_color' => :'menuColor',
        :'button_color' => :'buttonColor',
        :'header_color' => :'headerColor',
        :'url' => :'url',
        :'language' => :'language',
        :'welcome_text' => :'welcomeText',
        :'board_ids' => :'boardIds',
        :'agreement_type_ids' => :'agreementTypeIds',
        :'config_type_ids' => :'configTypeIds',
        :'location_ids' => :'locationIds',
        :'display_vendor_flag' => :'displayVendorFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'default_flag' => :'BOOLEAN',
        :'company' => :'CompanyReference',
        :'login_background_color' => :'String',
        :'portal_background_color' => :'String',
        :'menu_color' => :'String',
        :'button_color' => :'String',
        :'header_color' => :'String',
        :'url' => :'String',
        :'language' => :'String',
        :'welcome_text' => :'String',
        :'board_ids' => :'Array<Integer>',
        :'agreement_type_ids' => :'Array<Integer>',
        :'config_type_ids' => :'Array<Integer>',
        :'location_ids' => :'Array<Integer>',
        :'display_vendor_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'loginBackgroundColor')
        self.login_background_color = attributes[:'loginBackgroundColor']
      end

      if attributes.has_key?(:'portalBackgroundColor')
        self.portal_background_color = attributes[:'portalBackgroundColor']
      end

      if attributes.has_key?(:'menuColor')
        self.menu_color = attributes[:'menuColor']
      end

      if attributes.has_key?(:'buttonColor')
        self.button_color = attributes[:'buttonColor']
      end

      if attributes.has_key?(:'headerColor')
        self.header_color = attributes[:'headerColor']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'welcomeText')
        self.welcome_text = attributes[:'welcomeText']
      end

      if attributes.has_key?(:'boardIds')
        if (value = attributes[:'boardIds']).is_a?(Array)
          self.board_ids = value
        end
      end

      if attributes.has_key?(:'agreementTypeIds')
        if (value = attributes[:'agreementTypeIds']).is_a?(Array)
          self.agreement_type_ids = value
        end
      end

      if attributes.has_key?(:'configTypeIds')
        if (value = attributes[:'configTypeIds']).is_a?(Array)
          self.config_type_ids = value
        end
      end

      if attributes.has_key?(:'locationIds')
        if (value = attributes[:'locationIds']).is_a?(Array)
          self.location_ids = value
        end
      end

      if attributes.has_key?(:'displayVendorFlag')
        self.display_vendor_flag = attributes[:'displayVendorFlag']
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

      if @name.to_s.length > 150
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 150.")
      end

      if !@login_background_color.nil? && @login_background_color.to_s.length > 7
        invalid_properties.push("invalid value for 'login_background_color', the character length must be smaller than or equal to 7.")
      end

      if !@portal_background_color.nil? && @portal_background_color.to_s.length > 7
        invalid_properties.push("invalid value for 'portal_background_color', the character length must be smaller than or equal to 7.")
      end

      if !@menu_color.nil? && @menu_color.to_s.length > 7
        invalid_properties.push("invalid value for 'menu_color', the character length must be smaller than or equal to 7.")
      end

      if !@button_color.nil? && @button_color.to_s.length > 7
        invalid_properties.push("invalid value for 'button_color', the character length must be smaller than or equal to 7.")
      end

      if !@header_color.nil? && @header_color.to_s.length > 7
        invalid_properties.push("invalid value for 'header_color', the character length must be smaller than or equal to 7.")
      end

      if !@url.nil? && @url.to_s.length > 1000
        invalid_properties.push("invalid value for 'url', the character length must be smaller than or equal to 1000.")
      end

      if !@welcome_text.nil? && @welcome_text.to_s.length > 4000
        invalid_properties.push("invalid value for 'welcome_text', the character length must be smaller than or equal to 4000.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 150
      return false if !@login_background_color.nil? && @login_background_color.to_s.length > 7
      return false if !@portal_background_color.nil? && @portal_background_color.to_s.length > 7
      return false if !@menu_color.nil? && @menu_color.to_s.length > 7
      return false if !@button_color.nil? && @button_color.to_s.length > 7
      return false if !@header_color.nil? && @header_color.to_s.length > 7
      return false if !@url.nil? && @url.to_s.length > 1000
      language_validator = EnumAttributeValidator.new('String', ["English", "Spanish", "French", "British", "Australian", "BrazilianPortuguese", "CanadianFrench", "German", "NewZealand"])
      return false unless language_validator.valid?(@language)
      return false if !@welcome_text.nil? && @welcome_text.to_s.length > 4000
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 150
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 150."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] login_background_color Value to be assigned
    def login_background_color=(login_background_color)

      if !login_background_color.nil? && login_background_color.to_s.length > 7
        fail ArgumentError, "invalid value for 'login_background_color', the character length must be smaller than or equal to 7."
      end

      @login_background_color = login_background_color
    end

    # Custom attribute writer method with validation
    # @param [Object] portal_background_color Value to be assigned
    def portal_background_color=(portal_background_color)

      if !portal_background_color.nil? && portal_background_color.to_s.length > 7
        fail ArgumentError, "invalid value for 'portal_background_color', the character length must be smaller than or equal to 7."
      end

      @portal_background_color = portal_background_color
    end

    # Custom attribute writer method with validation
    # @param [Object] menu_color Value to be assigned
    def menu_color=(menu_color)

      if !menu_color.nil? && menu_color.to_s.length > 7
        fail ArgumentError, "invalid value for 'menu_color', the character length must be smaller than or equal to 7."
      end

      @menu_color = menu_color
    end

    # Custom attribute writer method with validation
    # @param [Object] button_color Value to be assigned
    def button_color=(button_color)

      if !button_color.nil? && button_color.to_s.length > 7
        fail ArgumentError, "invalid value for 'button_color', the character length must be smaller than or equal to 7."
      end

      @button_color = button_color
    end

    # Custom attribute writer method with validation
    # @param [Object] header_color Value to be assigned
    def header_color=(header_color)

      if !header_color.nil? && header_color.to_s.length > 7
        fail ArgumentError, "invalid value for 'header_color', the character length must be smaller than or equal to 7."
      end

      @header_color = header_color
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)

      if !url.nil? && url.to_s.length > 1000
        fail ArgumentError, "invalid value for 'url', the character length must be smaller than or equal to 1000."
      end

      @url = url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] language Object to be assigned
    def language=(language)
      validator = EnumAttributeValidator.new('String', ["English", "Spanish", "French", "British", "Australian", "BrazilianPortuguese", "CanadianFrench", "German", "NewZealand"])
      unless validator.valid?(language)
        fail ArgumentError, "invalid value for 'language', must be one of #{validator.allowable_values}."
      end
      @language = language
    end

    # Custom attribute writer method with validation
    # @param [Object] welcome_text Value to be assigned
    def welcome_text=(welcome_text)

      if !welcome_text.nil? && welcome_text.to_s.length > 4000
        fail ArgumentError, "invalid value for 'welcome_text', the character length must be smaller than or equal to 4000."
      end

      @welcome_text = welcome_text
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          default_flag == o.default_flag &&
          company == o.company &&
          login_background_color == o.login_background_color &&
          portal_background_color == o.portal_background_color &&
          menu_color == o.menu_color &&
          button_color == o.button_color &&
          header_color == o.header_color &&
          url == o.url &&
          language == o.language &&
          welcome_text == o.welcome_text &&
          board_ids == o.board_ids &&
          agreement_type_ids == o.agreement_type_ids &&
          config_type_ids == o.config_type_ids &&
          location_ids == o.location_ids &&
          display_vendor_flag == o.display_vendor_flag &&
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
      [id, name, default_flag, company, login_background_color, portal_background_color, menu_color, button_color, header_color, url, language, welcome_text, board_ids, agreement_type_ids, config_type_ids, location_ids, display_vendor_flag, _info].hash
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


require 'date'

module ConnectWise

  class CorporateStructure
    attr_accessor :id

    attr_accessor :level_count

    attr_accessor :level1_name

    attr_accessor :level2_name

    attr_accessor :level3_name

    attr_accessor :level4_name

    attr_accessor :level5_name

    attr_accessor :fiscal_year_start

    attr_accessor :location_caption

    attr_accessor :group_caption

    attr_accessor :base_currency

    attr_accessor :president

    attr_accessor :chief_operating_officer

    attr_accessor :controller

    attr_accessor :dispatcher

    attr_accessor :service_manager

    attr_accessor :duty_manager

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
        :'level_count' => :'levelCount',
        :'level1_name' => :'level1Name',
        :'level2_name' => :'level2Name',
        :'level3_name' => :'level3Name',
        :'level4_name' => :'level4Name',
        :'level5_name' => :'level5Name',
        :'fiscal_year_start' => :'fiscalYearStart',
        :'location_caption' => :'locationCaption',
        :'group_caption' => :'groupCaption',
        :'base_currency' => :'baseCurrency',
        :'president' => :'president',
        :'chief_operating_officer' => :'chiefOperatingOfficer',
        :'controller' => :'controller',
        :'dispatcher' => :'dispatcher',
        :'service_manager' => :'serviceManager',
        :'duty_manager' => :'dutyManager',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'level_count' => :'String',
        :'level1_name' => :'String',
        :'level2_name' => :'String',
        :'level3_name' => :'String',
        :'level4_name' => :'String',
        :'level5_name' => :'String',
        :'fiscal_year_start' => :'String',
        :'location_caption' => :'String',
        :'group_caption' => :'String',
        :'base_currency' => :'CurrencyReference',
        :'president' => :'MemberReference',
        :'chief_operating_officer' => :'MemberReference',
        :'controller' => :'MemberReference',
        :'dispatcher' => :'MemberReference',
        :'service_manager' => :'MemberReference',
        :'duty_manager' => :'MemberReference',
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

      if attributes.has_key?(:'levelCount')
        self.level_count = attributes[:'levelCount']
      end

      if attributes.has_key?(:'level1Name')
        self.level1_name = attributes[:'level1Name']
      end

      if attributes.has_key?(:'level2Name')
        self.level2_name = attributes[:'level2Name']
      end

      if attributes.has_key?(:'level3Name')
        self.level3_name = attributes[:'level3Name']
      end

      if attributes.has_key?(:'level4Name')
        self.level4_name = attributes[:'level4Name']
      end

      if attributes.has_key?(:'level5Name')
        self.level5_name = attributes[:'level5Name']
      end

      if attributes.has_key?(:'fiscalYearStart')
        self.fiscal_year_start = attributes[:'fiscalYearStart']
      end

      if attributes.has_key?(:'locationCaption')
        self.location_caption = attributes[:'locationCaption']
      end

      if attributes.has_key?(:'groupCaption')
        self.group_caption = attributes[:'groupCaption']
      end

      if attributes.has_key?(:'baseCurrency')
        self.base_currency = attributes[:'baseCurrency']
      end

      if attributes.has_key?(:'president')
        self.president = attributes[:'president']
      end

      if attributes.has_key?(:'chiefOperatingOfficer')
        self.chief_operating_officer = attributes[:'chiefOperatingOfficer']
      end

      if attributes.has_key?(:'controller')
        self.controller = attributes[:'controller']
      end

      if attributes.has_key?(:'dispatcher')
        self.dispatcher = attributes[:'dispatcher']
      end

      if attributes.has_key?(:'serviceManager')
        self.service_manager = attributes[:'serviceManager']
      end

      if attributes.has_key?(:'dutyManager')
        self.duty_manager = attributes[:'dutyManager']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@level1_name.nil? && @level1_name.to_s.length > 20
        invalid_properties.push("invalid value for 'level1_name', the character length must be smaller than or equal to 20.")
      end

      if !@level2_name.nil? && @level2_name.to_s.length > 20
        invalid_properties.push("invalid value for 'level2_name', the character length must be smaller than or equal to 20.")
      end

      if !@level3_name.nil? && @level3_name.to_s.length > 20
        invalid_properties.push("invalid value for 'level3_name', the character length must be smaller than or equal to 20.")
      end

      if !@level4_name.nil? && @level4_name.to_s.length > 20
        invalid_properties.push("invalid value for 'level4_name', the character length must be smaller than or equal to 20.")
      end

      if !@level5_name.nil? && @level5_name.to_s.length > 20
        invalid_properties.push("invalid value for 'level5_name', the character length must be smaller than or equal to 20.")
      end

      if @fiscal_year_start.nil?
        invalid_properties.push("invalid value for 'fiscal_year_start', fiscal_year_start cannot be nil.")
      end

      if @location_caption.nil?
        invalid_properties.push("invalid value for 'location_caption', location_caption cannot be nil.")
      end

      if @location_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'location_caption', the character length must be smaller than or equal to 50.")
      end

      if @group_caption.nil?
        invalid_properties.push("invalid value for 'group_caption', group_caption cannot be nil.")
      end

      if @group_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'group_caption', the character length must be smaller than or equal to 50.")
      end

      if @base_currency.nil?
        invalid_properties.push("invalid value for 'base_currency', base_currency cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      level_count_validator = EnumAttributeValidator.new('String', ["Level1", "Level2", "Level3", "Level4", "Level5"])
      return false unless level_count_validator.valid?(@level_count)
      return false if !@level1_name.nil? && @level1_name.to_s.length > 20
      return false if !@level2_name.nil? && @level2_name.to_s.length > 20
      return false if !@level3_name.nil? && @level3_name.to_s.length > 20
      return false if !@level4_name.nil? && @level4_name.to_s.length > 20
      return false if !@level5_name.nil? && @level5_name.to_s.length > 20
      return false if @fiscal_year_start.nil?
      fiscal_year_start_validator = EnumAttributeValidator.new('String', ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
      return false unless fiscal_year_start_validator.valid?(@fiscal_year_start)
      return false if @location_caption.nil?
      return false if @location_caption.to_s.length > 50
      return false if @group_caption.nil?
      return false if @group_caption.to_s.length > 50
      return false if @base_currency.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level_count Object to be assigned
    def level_count=(level_count)
      validator = EnumAttributeValidator.new('String', ["Level1", "Level2", "Level3", "Level4", "Level5"])
      unless validator.valid?(level_count)
        fail ArgumentError, "invalid value for 'level_count', must be one of #{validator.allowable_values}."
      end
      @level_count = level_count
    end

    # Custom attribute writer method with validation
    # @param [Object] level1_name Value to be assigned
    def level1_name=(level1_name)

      if !level1_name.nil? && level1_name.to_s.length > 20
        fail ArgumentError, "invalid value for 'level1_name', the character length must be smaller than or equal to 20."
      end

      @level1_name = level1_name
    end

    # Custom attribute writer method with validation
    # @param [Object] level2_name Value to be assigned
    def level2_name=(level2_name)

      if !level2_name.nil? && level2_name.to_s.length > 20
        fail ArgumentError, "invalid value for 'level2_name', the character length must be smaller than or equal to 20."
      end

      @level2_name = level2_name
    end

    # Custom attribute writer method with validation
    # @param [Object] level3_name Value to be assigned
    def level3_name=(level3_name)

      if !level3_name.nil? && level3_name.to_s.length > 20
        fail ArgumentError, "invalid value for 'level3_name', the character length must be smaller than or equal to 20."
      end

      @level3_name = level3_name
    end

    # Custom attribute writer method with validation
    # @param [Object] level4_name Value to be assigned
    def level4_name=(level4_name)

      if !level4_name.nil? && level4_name.to_s.length > 20
        fail ArgumentError, "invalid value for 'level4_name', the character length must be smaller than or equal to 20."
      end

      @level4_name = level4_name
    end

    # Custom attribute writer method with validation
    # @param [Object] level5_name Value to be assigned
    def level5_name=(level5_name)

      if !level5_name.nil? && level5_name.to_s.length > 20
        fail ArgumentError, "invalid value for 'level5_name', the character length must be smaller than or equal to 20."
      end

      @level5_name = level5_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fiscal_year_start Object to be assigned
    def fiscal_year_start=(fiscal_year_start)
      validator = EnumAttributeValidator.new('String', ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
      unless validator.valid?(fiscal_year_start)
        fail ArgumentError, "invalid value for 'fiscal_year_start', must be one of #{validator.allowable_values}."
      end
      @fiscal_year_start = fiscal_year_start
    end

    # Custom attribute writer method with validation
    # @param [Object] location_caption Value to be assigned
    def location_caption=(location_caption)
      if location_caption.nil?
        fail ArgumentError, "location_caption cannot be nil"
      end

      if location_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'location_caption', the character length must be smaller than or equal to 50."
      end

      @location_caption = location_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] group_caption Value to be assigned
    def group_caption=(group_caption)
      if group_caption.nil?
        fail ArgumentError, "group_caption cannot be nil"
      end

      if group_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'group_caption', the character length must be smaller than or equal to 50."
      end

      @group_caption = group_caption
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          level_count == o.level_count &&
          level1_name == o.level1_name &&
          level2_name == o.level2_name &&
          level3_name == o.level3_name &&
          level4_name == o.level4_name &&
          level5_name == o.level5_name &&
          fiscal_year_start == o.fiscal_year_start &&
          location_caption == o.location_caption &&
          group_caption == o.group_caption &&
          base_currency == o.base_currency &&
          president == o.president &&
          chief_operating_officer == o.chief_operating_officer &&
          controller == o.controller &&
          dispatcher == o.dispatcher &&
          service_manager == o.service_manager &&
          duty_manager == o.duty_manager &&
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
      [id, level_count, level1_name, level2_name, level3_name, level4_name, level5_name, fiscal_year_start, location_caption, group_caption, base_currency, president, chief_operating_officer, controller, dispatcher, service_manager, duty_manager, _info].hash
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

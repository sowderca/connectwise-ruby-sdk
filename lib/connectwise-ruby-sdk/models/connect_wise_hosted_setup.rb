
require 'date'

module ConnectWise

  class ConnectWiseHostedSetup
    attr_accessor :id

    # Can be obtained via ConnectWiseHostedApiScreen report
    attr_accessor :screen_id

    attr_accessor :description

    attr_accessor :url

    attr_accessor :type

    attr_accessor :origin

    attr_accessor :pod_height

    attr_accessor :toolbar_button_dialog_height

    attr_accessor :toolbar_button_dialog_width

    # Only required for ToolbarButtons
    attr_accessor :toolbar_button_text

    attr_accessor :toolbar_button_tool_tip

    attr_accessor :toolbar_button_icon_document_id

    attr_accessor :disabled_flag

    attr_accessor :created_by

    attr_accessor :date_created

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
        :'screen_id' => :'screenId',
        :'description' => :'description',
        :'url' => :'url',
        :'type' => :'type',
        :'origin' => :'origin',
        :'pod_height' => :'podHeight',
        :'toolbar_button_dialog_height' => :'toolbarButtonDialogHeight',
        :'toolbar_button_dialog_width' => :'toolbarButtonDialogWidth',
        :'toolbar_button_text' => :'toolbarButtonText',
        :'toolbar_button_tool_tip' => :'toolbarButtonToolTip',
        :'toolbar_button_icon_document_id' => :'toolbarButtonIconDocumentId',
        :'disabled_flag' => :'disabledFlag',
        :'created_by' => :'createdBy',
        :'date_created' => :'dateCreated',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'screen_id' => :'Integer',
        :'description' => :'String',
        :'url' => :'String',
        :'type' => :'String',
        :'origin' => :'String',
        :'pod_height' => :'Integer',
        :'toolbar_button_dialog_height' => :'Integer',
        :'toolbar_button_dialog_width' => :'Integer',
        :'toolbar_button_text' => :'String',
        :'toolbar_button_tool_tip' => :'String',
        :'toolbar_button_icon_document_id' => :'Integer',
        :'disabled_flag' => :'BOOLEAN',
        :'created_by' => :'String',
        :'date_created' => :'String',
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

      if attributes.has_key?(:'screenId')
        self.screen_id = attributes[:'screenId']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.has_key?(:'podHeight')
        self.pod_height = attributes[:'podHeight']
      end

      if attributes.has_key?(:'toolbarButtonDialogHeight')
        self.toolbar_button_dialog_height = attributes[:'toolbarButtonDialogHeight']
      end

      if attributes.has_key?(:'toolbarButtonDialogWidth')
        self.toolbar_button_dialog_width = attributes[:'toolbarButtonDialogWidth']
      end

      if attributes.has_key?(:'toolbarButtonText')
        self.toolbar_button_text = attributes[:'toolbarButtonText']
      end

      if attributes.has_key?(:'toolbarButtonToolTip')
        self.toolbar_button_tool_tip = attributes[:'toolbarButtonToolTip']
      end

      if attributes.has_key?(:'toolbarButtonIconDocumentId')
        self.toolbar_button_icon_document_id = attributes[:'toolbarButtonIconDocumentId']
      end

      if attributes.has_key?(:'disabledFlag')
        self.disabled_flag = attributes[:'disabledFlag']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'dateCreated')
        self.date_created = attributes[:'dateCreated']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @screen_id.nil?
        invalid_properties.push("invalid value for 'screen_id', screen_id cannot be nil.")
      end

      if @description.nil?
        invalid_properties.push("invalid value for 'description', description cannot be nil.")
      end

      if @description.to_s.length > 255
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 255.")
      end

      if @url.nil?
        invalid_properties.push("invalid value for 'url', url cannot be nil.")
      end

      if @url.to_s.length > 1024
        invalid_properties.push("invalid value for 'url', the character length must be smaller than or equal to 1024.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if !@origin.nil? && @origin.to_s.length > 50
        invalid_properties.push("invalid value for 'origin', the character length must be smaller than or equal to 50.")
      end

      if !@toolbar_button_text.nil? && @toolbar_button_text.to_s.length > 50
        invalid_properties.push("invalid value for 'toolbar_button_text', the character length must be smaller than or equal to 50.")
      end

      if !@toolbar_button_tool_tip.nil? && @toolbar_button_tool_tip.to_s.length > 50
        invalid_properties.push("invalid value for 'toolbar_button_tool_tip', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @screen_id.nil?
      return false if @description.nil?
      return false if @description.to_s.length > 255
      return false if @url.nil?
      return false if @url.to_s.length > 1024
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["Tab", "Pod", "ToolbarButton"])
      return false unless type_validator.valid?(@type)
      return false if !@origin.nil? && @origin.to_s.length > 50
      return false if !@toolbar_button_text.nil? && @toolbar_button_text.to_s.length > 50
      return false if !@toolbar_button_tool_tip.nil? && @toolbar_button_tool_tip.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, "description cannot be nil"
      end

      if description.to_s.length > 255
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 255."
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if url.nil?
        fail ArgumentError, "url cannot be nil"
      end

      if url.to_s.length > 1024
        fail ArgumentError, "invalid value for 'url', the character length must be smaller than or equal to 1024."
      end

      @url = url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Tab", "Pod", "ToolbarButton"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] origin Value to be assigned
    def origin=(origin)

      if !origin.nil? && origin.to_s.length > 50
        fail ArgumentError, "invalid value for 'origin', the character length must be smaller than or equal to 50."
      end

      @origin = origin
    end

    # Custom attribute writer method with validation
    # @param [Object] toolbar_button_text Value to be assigned
    def toolbar_button_text=(toolbar_button_text)

      if !toolbar_button_text.nil? && toolbar_button_text.to_s.length > 50
        fail ArgumentError, "invalid value for 'toolbar_button_text', the character length must be smaller than or equal to 50."
      end

      @toolbar_button_text = toolbar_button_text
    end

    # Custom attribute writer method with validation
    # @param [Object] toolbar_button_tool_tip Value to be assigned
    def toolbar_button_tool_tip=(toolbar_button_tool_tip)

      if !toolbar_button_tool_tip.nil? && toolbar_button_tool_tip.to_s.length > 50
        fail ArgumentError, "invalid value for 'toolbar_button_tool_tip', the character length must be smaller than or equal to 50."
      end

      @toolbar_button_tool_tip = toolbar_button_tool_tip
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          screen_id == o.screen_id &&
          description == o.description &&
          url == o.url &&
          type == o.type &&
          origin == o.origin &&
          pod_height == o.pod_height &&
          toolbar_button_dialog_height == o.toolbar_button_dialog_height &&
          toolbar_button_dialog_width == o.toolbar_button_dialog_width &&
          toolbar_button_text == o.toolbar_button_text &&
          toolbar_button_tool_tip == o.toolbar_button_tool_tip &&
          toolbar_button_icon_document_id == o.toolbar_button_icon_document_id &&
          disabled_flag == o.disabled_flag &&
          created_by == o.created_by &&
          date_created == o.date_created &&
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
      [id, screen_id, description, url, type, origin, pod_height, toolbar_button_dialog_height, toolbar_button_dialog_width, toolbar_button_text, toolbar_button_tool_tip, toolbar_button_icon_document_id, disabled_flag, created_by, date_created, _info].hash
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

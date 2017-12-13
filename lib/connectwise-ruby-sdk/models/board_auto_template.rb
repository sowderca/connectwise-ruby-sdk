
require 'date'

module ConnectWise

  class BoardAutoTemplate
    attr_accessor :id

    attr_accessor :type

    attr_accessor :subtype

    attr_accessor :item

    attr_accessor :service_template

    attr_accessor :board

    attr_accessor :summary_setting

    attr_accessor :discussion_setting

    attr_accessor :internal_analysis_setting

    attr_accessor :tasks_setting

    attr_accessor :documents_setting

    attr_accessor :resources_setting

    attr_accessor :budget_hours_setting

    attr_accessor :finance_information_setting

    attr_accessor :auto_apply_flag

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
        :'type' => :'type',
        :'subtype' => :'subtype',
        :'item' => :'item',
        :'service_template' => :'serviceTemplate',
        :'board' => :'board',
        :'summary_setting' => :'summarySetting',
        :'discussion_setting' => :'discussionSetting',
        :'internal_analysis_setting' => :'internalAnalysisSetting',
        :'tasks_setting' => :'tasksSetting',
        :'documents_setting' => :'documentsSetting',
        :'resources_setting' => :'resourcesSetting',
        :'budget_hours_setting' => :'budgetHoursSetting',
        :'finance_information_setting' => :'financeInformationSetting',
        :'auto_apply_flag' => :'autoApplyFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'ServiceTypeReference',
        :'subtype' => :'ServiceSubTypeReference',
        :'item' => :'ServiceItemReference',
        :'service_template' => :'ServiceTemplateReference',
        :'board' => :'BoardReference',
        :'summary_setting' => :'String',
        :'discussion_setting' => :'String',
        :'internal_analysis_setting' => :'String',
        :'tasks_setting' => :'String',
        :'documents_setting' => :'String',
        :'resources_setting' => :'String',
        :'budget_hours_setting' => :'String',
        :'finance_information_setting' => :'String',
        :'auto_apply_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.has_key?(:'item')
        self.item = attributes[:'item']
      end

      if attributes.has_key?(:'serviceTemplate')
        self.service_template = attributes[:'serviceTemplate']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'summarySetting')
        self.summary_setting = attributes[:'summarySetting']
      end

      if attributes.has_key?(:'discussionSetting')
        self.discussion_setting = attributes[:'discussionSetting']
      end

      if attributes.has_key?(:'internalAnalysisSetting')
        self.internal_analysis_setting = attributes[:'internalAnalysisSetting']
      end

      if attributes.has_key?(:'tasksSetting')
        self.tasks_setting = attributes[:'tasksSetting']
      end

      if attributes.has_key?(:'documentsSetting')
        self.documents_setting = attributes[:'documentsSetting']
      end

      if attributes.has_key?(:'resourcesSetting')
        self.resources_setting = attributes[:'resourcesSetting']
      end

      if attributes.has_key?(:'budgetHoursSetting')
        self.budget_hours_setting = attributes[:'budgetHoursSetting']
      end

      if attributes.has_key?(:'financeInformationSetting')
        self.finance_information_setting = attributes[:'financeInformationSetting']
      end

      if attributes.has_key?(:'autoApplyFlag')
        self.auto_apply_flag = attributes[:'autoApplyFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @subtype.nil?
        invalid_properties.push("invalid value for 'subtype', subtype cannot be nil.")
      end

      if @item.nil?
        invalid_properties.push("invalid value for 'item', item cannot be nil.")
      end

      if @service_template.nil?
        invalid_properties.push("invalid value for 'service_template', service_template cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @subtype.nil?
      return false if @item.nil?
      return false if @service_template.nil?
      summary_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless summary_setting_validator.valid?(@summary_setting)
      discussion_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless discussion_setting_validator.valid?(@discussion_setting)
      internal_analysis_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless internal_analysis_setting_validator.valid?(@internal_analysis_setting)
      tasks_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless tasks_setting_validator.valid?(@tasks_setting)
      documents_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless documents_setting_validator.valid?(@documents_setting)
      resources_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless resources_setting_validator.valid?(@resources_setting)
      budget_hours_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless budget_hours_setting_validator.valid?(@budget_hours_setting)
      finance_information_setting_validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      return false unless finance_information_setting_validator.valid?(@finance_information_setting)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] summary_setting Object to be assigned
    def summary_setting=(summary_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(summary_setting)
        fail ArgumentError, "invalid value for 'summary_setting', must be one of #{validator.allowable_values}."
      end
      @summary_setting = summary_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discussion_setting Object to be assigned
    def discussion_setting=(discussion_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(discussion_setting)
        fail ArgumentError, "invalid value for 'discussion_setting', must be one of #{validator.allowable_values}."
      end
      @discussion_setting = discussion_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] internal_analysis_setting Object to be assigned
    def internal_analysis_setting=(internal_analysis_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(internal_analysis_setting)
        fail ArgumentError, "invalid value for 'internal_analysis_setting', must be one of #{validator.allowable_values}."
      end
      @internal_analysis_setting = internal_analysis_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tasks_setting Object to be assigned
    def tasks_setting=(tasks_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(tasks_setting)
        fail ArgumentError, "invalid value for 'tasks_setting', must be one of #{validator.allowable_values}."
      end
      @tasks_setting = tasks_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents_setting Object to be assigned
    def documents_setting=(documents_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(documents_setting)
        fail ArgumentError, "invalid value for 'documents_setting', must be one of #{validator.allowable_values}."
      end
      @documents_setting = documents_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resources_setting Object to be assigned
    def resources_setting=(resources_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(resources_setting)
        fail ArgumentError, "invalid value for 'resources_setting', must be one of #{validator.allowable_values}."
      end
      @resources_setting = resources_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] budget_hours_setting Object to be assigned
    def budget_hours_setting=(budget_hours_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(budget_hours_setting)
        fail ArgumentError, "invalid value for 'budget_hours_setting', must be one of #{validator.allowable_values}."
      end
      @budget_hours_setting = budget_hours_setting
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] finance_information_setting Object to be assigned
    def finance_information_setting=(finance_information_setting)
      validator = EnumAttributeValidator.new('String', ["Append", "Overwrite", "Ignore"])
      unless validator.valid?(finance_information_setting)
        fail ArgumentError, "invalid value for 'finance_information_setting', must be one of #{validator.allowable_values}."
      end
      @finance_information_setting = finance_information_setting
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          subtype == o.subtype &&
          item == o.item &&
          service_template == o.service_template &&
          board == o.board &&
          summary_setting == o.summary_setting &&
          discussion_setting == o.discussion_setting &&
          internal_analysis_setting == o.internal_analysis_setting &&
          tasks_setting == o.tasks_setting &&
          documents_setting == o.documents_setting &&
          resources_setting == o.resources_setting &&
          budget_hours_setting == o.budget_hours_setting &&
          finance_information_setting == o.finance_information_setting &&
          auto_apply_flag == o.auto_apply_flag &&
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
      [id, type, subtype, item, service_template, board, summary_setting, discussion_setting, internal_analysis_setting, tasks_setting, documents_setting, resources_setting, budget_hours_setting, finance_information_setting, auto_apply_flag, _info].hash
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

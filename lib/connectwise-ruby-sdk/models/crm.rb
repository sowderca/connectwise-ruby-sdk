
require 'date'

module ConnectWise

  class Crm
    attr_accessor :id

    attr_accessor :company_list_count

    attr_accessor :lock_probability_flag

    attr_accessor :account_manager_role

    attr_accessor :technical_contact_role

    attr_accessor :sales_rep_role

    attr_accessor :company_id_generation_flag

    attr_accessor :exclude_spaces_flag

    attr_accessor :field1_caption

    attr_accessor :field2_caption

    attr_accessor :field3_caption

    attr_accessor :field4_caption

    attr_accessor :field5_caption

    attr_accessor :field6_caption

    attr_accessor :field7_caption

    attr_accessor :field8_caption

    attr_accessor :field9_caption

    attr_accessor :field10_caption

    attr_accessor :primary_rep_caption

    attr_accessor :secondary_rep_caption

    attr_accessor :other1_caption

    attr_accessor :other2_caption

    attr_accessor :default_year

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'company_list_count' => :'companyListCount',
        :'lock_probability_flag' => :'lockProbabilityFlag',
        :'account_manager_role' => :'accountManagerRole',
        :'technical_contact_role' => :'technicalContactRole',
        :'sales_rep_role' => :'salesRepRole',
        :'company_id_generation_flag' => :'companyIdGenerationFlag',
        :'exclude_spaces_flag' => :'excludeSpacesFlag',
        :'field1_caption' => :'field1Caption',
        :'field2_caption' => :'field2Caption',
        :'field3_caption' => :'field3Caption',
        :'field4_caption' => :'field4Caption',
        :'field5_caption' => :'field5Caption',
        :'field6_caption' => :'field6Caption',
        :'field7_caption' => :'field7Caption',
        :'field8_caption' => :'field8Caption',
        :'field9_caption' => :'field9Caption',
        :'field10_caption' => :'field10Caption',
        :'primary_rep_caption' => :'primaryRepCaption',
        :'secondary_rep_caption' => :'secondaryRepCaption',
        :'other1_caption' => :'other1Caption',
        :'other2_caption' => :'other2Caption',
        :'default_year' => :'defaultYear',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'company_list_count' => :'Integer',
        :'lock_probability_flag' => :'BOOLEAN',
        :'account_manager_role' => :'TeamRoleReference',
        :'technical_contact_role' => :'TeamRoleReference',
        :'sales_rep_role' => :'TeamRoleReference',
        :'company_id_generation_flag' => :'BOOLEAN',
        :'exclude_spaces_flag' => :'BOOLEAN',
        :'field1_caption' => :'String',
        :'field2_caption' => :'String',
        :'field3_caption' => :'String',
        :'field4_caption' => :'String',
        :'field5_caption' => :'String',
        :'field6_caption' => :'String',
        :'field7_caption' => :'String',
        :'field8_caption' => :'String',
        :'field9_caption' => :'String',
        :'field10_caption' => :'String',
        :'primary_rep_caption' => :'String',
        :'secondary_rep_caption' => :'String',
        :'other1_caption' => :'String',
        :'other2_caption' => :'String',
        :'default_year' => :'BOOLEAN',
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

      if attributes.has_key?(:'companyListCount')
        self.company_list_count = attributes[:'companyListCount']
      end

      if attributes.has_key?(:'lockProbabilityFlag')
        self.lock_probability_flag = attributes[:'lockProbabilityFlag']
      end

      if attributes.has_key?(:'accountManagerRole')
        self.account_manager_role = attributes[:'accountManagerRole']
      end

      if attributes.has_key?(:'technicalContactRole')
        self.technical_contact_role = attributes[:'technicalContactRole']
      end

      if attributes.has_key?(:'salesRepRole')
        self.sales_rep_role = attributes[:'salesRepRole']
      end

      if attributes.has_key?(:'companyIdGenerationFlag')
        self.company_id_generation_flag = attributes[:'companyIdGenerationFlag']
      end

      if attributes.has_key?(:'excludeSpacesFlag')
        self.exclude_spaces_flag = attributes[:'excludeSpacesFlag']
      end

      if attributes.has_key?(:'field1Caption')
        self.field1_caption = attributes[:'field1Caption']
      end

      if attributes.has_key?(:'field2Caption')
        self.field2_caption = attributes[:'field2Caption']
      end

      if attributes.has_key?(:'field3Caption')
        self.field3_caption = attributes[:'field3Caption']
      end

      if attributes.has_key?(:'field4Caption')
        self.field4_caption = attributes[:'field4Caption']
      end

      if attributes.has_key?(:'field5Caption')
        self.field5_caption = attributes[:'field5Caption']
      end

      if attributes.has_key?(:'field6Caption')
        self.field6_caption = attributes[:'field6Caption']
      end

      if attributes.has_key?(:'field7Caption')
        self.field7_caption = attributes[:'field7Caption']
      end

      if attributes.has_key?(:'field8Caption')
        self.field8_caption = attributes[:'field8Caption']
      end

      if attributes.has_key?(:'field9Caption')
        self.field9_caption = attributes[:'field9Caption']
      end

      if attributes.has_key?(:'field10Caption')
        self.field10_caption = attributes[:'field10Caption']
      end

      if attributes.has_key?(:'primaryRepCaption')
        self.primary_rep_caption = attributes[:'primaryRepCaption']
      end

      if attributes.has_key?(:'secondaryRepCaption')
        self.secondary_rep_caption = attributes[:'secondaryRepCaption']
      end

      if attributes.has_key?(:'other1Caption')
        self.other1_caption = attributes[:'other1Caption']
      end

      if attributes.has_key?(:'other2Caption')
        self.other2_caption = attributes[:'other2Caption']
      end

      if attributes.has_key?(:'defaultYear')
        self.default_year = attributes[:'defaultYear']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@company_list_count.nil? && @company_list_count > 99
        invalid_properties.push("invalid value for 'company_list_count', must be smaller than or equal to 99.")
      end

      if !@company_list_count.nil? && @company_list_count < 0
        invalid_properties.push("invalid value for 'company_list_count', must be greater than or equal to 0.")
      end

      if @account_manager_role.nil?
        invalid_properties.push("invalid value for 'account_manager_role', account_manager_role cannot be nil.")
      end

      if @technical_contact_role.nil?
        invalid_properties.push("invalid value for 'technical_contact_role', technical_contact_role cannot be nil.")
      end

      if @sales_rep_role.nil?
        invalid_properties.push("invalid value for 'sales_rep_role', sales_rep_role cannot be nil.")
      end

      if !@field1_caption.nil? && @field1_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field1_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field2_caption.nil? && @field2_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field2_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field3_caption.nil? && @field3_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field3_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field4_caption.nil? && @field4_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field4_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field5_caption.nil? && @field5_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field5_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field6_caption.nil? && @field6_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field6_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field7_caption.nil? && @field7_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field7_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field8_caption.nil? && @field8_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field8_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field9_caption.nil? && @field9_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field9_caption', the character length must be smaller than or equal to 25.")
      end

      if !@field10_caption.nil? && @field10_caption.to_s.length > 25
        invalid_properties.push("invalid value for 'field10_caption', the character length must be smaller than or equal to 25.")
      end

      if !@primary_rep_caption.nil? && @primary_rep_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'primary_rep_caption', the character length must be smaller than or equal to 50.")
      end

      if !@secondary_rep_caption.nil? && @secondary_rep_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'secondary_rep_caption', the character length must be smaller than or equal to 50.")
      end

      if !@other1_caption.nil? && @other1_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'other1_caption', the character length must be smaller than or equal to 50.")
      end

      if !@other2_caption.nil? && @other2_caption.to_s.length > 50
        invalid_properties.push("invalid value for 'other2_caption', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@company_list_count.nil? && @company_list_count > 99
      return false if !@company_list_count.nil? && @company_list_count < 0
      return false if @account_manager_role.nil?
      return false if @technical_contact_role.nil?
      return false if @sales_rep_role.nil?
      return false if !@field1_caption.nil? && @field1_caption.to_s.length > 25
      return false if !@field2_caption.nil? && @field2_caption.to_s.length > 25
      return false if !@field3_caption.nil? && @field3_caption.to_s.length > 25
      return false if !@field4_caption.nil? && @field4_caption.to_s.length > 25
      return false if !@field5_caption.nil? && @field5_caption.to_s.length > 25
      return false if !@field6_caption.nil? && @field6_caption.to_s.length > 25
      return false if !@field7_caption.nil? && @field7_caption.to_s.length > 25
      return false if !@field8_caption.nil? && @field8_caption.to_s.length > 25
      return false if !@field9_caption.nil? && @field9_caption.to_s.length > 25
      return false if !@field10_caption.nil? && @field10_caption.to_s.length > 25
      return false if !@primary_rep_caption.nil? && @primary_rep_caption.to_s.length > 50
      return false if !@secondary_rep_caption.nil? && @secondary_rep_caption.to_s.length > 50
      return false if !@other1_caption.nil? && @other1_caption.to_s.length > 50
      return false if !@other2_caption.nil? && @other2_caption.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] company_list_count Value to be assigned
    def company_list_count=(company_list_count)

      if !company_list_count.nil? && company_list_count > 99
        fail ArgumentError, "invalid value for 'company_list_count', must be smaller than or equal to 99."
      end

      if !company_list_count.nil? && company_list_count < 0
        fail ArgumentError, "invalid value for 'company_list_count', must be greater than or equal to 0."
      end

      @company_list_count = company_list_count
    end

    # Custom attribute writer method with validation
    # @param [Object] field1_caption Value to be assigned
    def field1_caption=(field1_caption)

      if !field1_caption.nil? && field1_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field1_caption', the character length must be smaller than or equal to 25."
      end

      @field1_caption = field1_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field2_caption Value to be assigned
    def field2_caption=(field2_caption)

      if !field2_caption.nil? && field2_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field2_caption', the character length must be smaller than or equal to 25."
      end

      @field2_caption = field2_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field3_caption Value to be assigned
    def field3_caption=(field3_caption)

      if !field3_caption.nil? && field3_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field3_caption', the character length must be smaller than or equal to 25."
      end

      @field3_caption = field3_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field4_caption Value to be assigned
    def field4_caption=(field4_caption)

      if !field4_caption.nil? && field4_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field4_caption', the character length must be smaller than or equal to 25."
      end

      @field4_caption = field4_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field5_caption Value to be assigned
    def field5_caption=(field5_caption)

      if !field5_caption.nil? && field5_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field5_caption', the character length must be smaller than or equal to 25."
      end

      @field5_caption = field5_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field6_caption Value to be assigned
    def field6_caption=(field6_caption)

      if !field6_caption.nil? && field6_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field6_caption', the character length must be smaller than or equal to 25."
      end

      @field6_caption = field6_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field7_caption Value to be assigned
    def field7_caption=(field7_caption)

      if !field7_caption.nil? && field7_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field7_caption', the character length must be smaller than or equal to 25."
      end

      @field7_caption = field7_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field8_caption Value to be assigned
    def field8_caption=(field8_caption)

      if !field8_caption.nil? && field8_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field8_caption', the character length must be smaller than or equal to 25."
      end

      @field8_caption = field8_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field9_caption Value to be assigned
    def field9_caption=(field9_caption)

      if !field9_caption.nil? && field9_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field9_caption', the character length must be smaller than or equal to 25."
      end

      @field9_caption = field9_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] field10_caption Value to be assigned
    def field10_caption=(field10_caption)

      if !field10_caption.nil? && field10_caption.to_s.length > 25
        fail ArgumentError, "invalid value for 'field10_caption', the character length must be smaller than or equal to 25."
      end

      @field10_caption = field10_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] primary_rep_caption Value to be assigned
    def primary_rep_caption=(primary_rep_caption)

      if !primary_rep_caption.nil? && primary_rep_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'primary_rep_caption', the character length must be smaller than or equal to 50."
      end

      @primary_rep_caption = primary_rep_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] secondary_rep_caption Value to be assigned
    def secondary_rep_caption=(secondary_rep_caption)

      if !secondary_rep_caption.nil? && secondary_rep_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'secondary_rep_caption', the character length must be smaller than or equal to 50."
      end

      @secondary_rep_caption = secondary_rep_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] other1_caption Value to be assigned
    def other1_caption=(other1_caption)

      if !other1_caption.nil? && other1_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'other1_caption', the character length must be smaller than or equal to 50."
      end

      @other1_caption = other1_caption
    end

    # Custom attribute writer method with validation
    # @param [Object] other2_caption Value to be assigned
    def other2_caption=(other2_caption)

      if !other2_caption.nil? && other2_caption.to_s.length > 50
        fail ArgumentError, "invalid value for 'other2_caption', the character length must be smaller than or equal to 50."
      end

      @other2_caption = other2_caption
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          company_list_count == o.company_list_count &&
          lock_probability_flag == o.lock_probability_flag &&
          account_manager_role == o.account_manager_role &&
          technical_contact_role == o.technical_contact_role &&
          sales_rep_role == o.sales_rep_role &&
          company_id_generation_flag == o.company_id_generation_flag &&
          exclude_spaces_flag == o.exclude_spaces_flag &&
          field1_caption == o.field1_caption &&
          field2_caption == o.field2_caption &&
          field3_caption == o.field3_caption &&
          field4_caption == o.field4_caption &&
          field5_caption == o.field5_caption &&
          field6_caption == o.field6_caption &&
          field7_caption == o.field7_caption &&
          field8_caption == o.field8_caption &&
          field9_caption == o.field9_caption &&
          field10_caption == o.field10_caption &&
          primary_rep_caption == o.primary_rep_caption &&
          secondary_rep_caption == o.secondary_rep_caption &&
          other1_caption == o.other1_caption &&
          other2_caption == o.other2_caption &&
          default_year == o.default_year &&
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
      [id, company_list_count, lock_probability_flag, account_manager_role, technical_contact_role, sales_rep_role, company_id_generation_flag, exclude_spaces_flag, field1_caption, field2_caption, field3_caption, field4_caption, field5_caption, field6_caption, field7_caption, field8_caption, field9_caption, field10_caption, primary_rep_caption, secondary_rep_caption, other1_caption, other2_caption, default_year, _info].hash
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

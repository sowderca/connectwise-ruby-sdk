
require 'date'

module ConnectWise

  class BoardStatus
    attr_accessor :id

    attr_accessor :name

    attr_accessor :board

    attr_accessor :external_integration_xref

    attr_accessor :sort_order

    attr_accessor :display_on_board

    attr_accessor :inactive

    attr_accessor :closed_status

    attr_accessor :time_entry_not_allowed

    attr_accessor :default_flag

    attr_accessor :escalation_status

    attr_accessor :customer_portal_description

    attr_accessor :customer_portal_flag

    attr_accessor :email_template

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
        :'board' => :'board',
        :'external_integration_xref' => :'externalIntegrationXref',
        :'sort_order' => :'sortOrder',
        :'display_on_board' => :'displayOnBoard',
        :'inactive' => :'inactive',
        :'closed_status' => :'closedStatus',
        :'time_entry_not_allowed' => :'timeEntryNotAllowed',
        :'default_flag' => :'defaultFlag',
        :'escalation_status' => :'escalationStatus',
        :'customer_portal_description' => :'customerPortalDescription',
        :'customer_portal_flag' => :'customerPortalFlag',
        :'email_template' => :'emailTemplate',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'board' => :'BoardReference',
        :'external_integration_xref' => :'ExternalIntegrationStatusReference',
        :'sort_order' => :'Integer',
        :'display_on_board' => :'BOOLEAN',
        :'inactive' => :'BOOLEAN',
        :'closed_status' => :'BOOLEAN',
        :'time_entry_not_allowed' => :'BOOLEAN',
        :'default_flag' => :'BOOLEAN',
        :'escalation_status' => :'String',
        :'customer_portal_description' => :'String',
        :'customer_portal_flag' => :'BOOLEAN',
        :'email_template' => :'ServiceEmailTemplateReference',
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

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'externalIntegrationXref')
        self.external_integration_xref = attributes[:'externalIntegrationXref']
      end

      if attributes.has_key?(:'sortOrder')
        self.sort_order = attributes[:'sortOrder']
      end

      if attributes.has_key?(:'displayOnBoard')
        self.display_on_board = attributes[:'displayOnBoard']
      end

      if attributes.has_key?(:'inactive')
        self.inactive = attributes[:'inactive']
      end

      if attributes.has_key?(:'closedStatus')
        self.closed_status = attributes[:'closedStatus']
      end

      if attributes.has_key?(:'timeEntryNotAllowed')
        self.time_entry_not_allowed = attributes[:'timeEntryNotAllowed']
      end

      if attributes.has_key?(:'defaultFlag')
        self.default_flag = attributes[:'defaultFlag']
      end

      if attributes.has_key?(:'escalationStatus')
        self.escalation_status = attributes[:'escalationStatus']
      end

      if attributes.has_key?(:'customerPortalDescription')
        self.customer_portal_description = attributes[:'customerPortalDescription']
      end

      if attributes.has_key?(:'customerPortalFlag')
        self.customer_portal_flag = attributes[:'customerPortalFlag']
      end

      if attributes.has_key?(:'emailTemplate')
        self.email_template = attributes[:'emailTemplate']
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

      if !@sort_order.nil? && @sort_order > 99
        invalid_properties.push("invalid value for 'sort_order', must be smaller than or equal to 99.")
      end

      if !@sort_order.nil? && @sort_order < 0
        invalid_properties.push("invalid value for 'sort_order', must be greater than or equal to 0.")
      end

      if @escalation_status.nil?
        invalid_properties.push("invalid value for 'escalation_status', escalation_status cannot be nil.")
      end

      if !@customer_portal_description.nil? && @customer_portal_description.to_s.length > 500
        invalid_properties.push("invalid value for 'customer_portal_description', the character length must be smaller than or equal to 500.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 50
      return false if !@sort_order.nil? && @sort_order > 99
      return false if !@sort_order.nil? && @sort_order < 0
      return false if @escalation_status.nil?
      escalation_status_validator = EnumAttributeValidator.new('String', ["NotResponded", "Responded", "ResolutionPlan", "Resolved", "NoEscalation"])
      return false unless escalation_status_validator.valid?(@escalation_status)
      return false if !@customer_portal_description.nil? && @customer_portal_description.to_s.length > 500
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
    # @param [Object] sort_order Value to be assigned
    def sort_order=(sort_order)

      if !sort_order.nil? && sort_order > 99
        fail ArgumentError, "invalid value for 'sort_order', must be smaller than or equal to 99."
      end

      if !sort_order.nil? && sort_order < 0
        fail ArgumentError, "invalid value for 'sort_order', must be greater than or equal to 0."
      end

      @sort_order = sort_order
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] escalation_status Object to be assigned
    def escalation_status=(escalation_status)
      validator = EnumAttributeValidator.new('String', ["NotResponded", "Responded", "ResolutionPlan", "Resolved", "NoEscalation"])
      unless validator.valid?(escalation_status)
        fail ArgumentError, "invalid value for 'escalation_status', must be one of #{validator.allowable_values}."
      end
      @escalation_status = escalation_status
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_portal_description Value to be assigned
    def customer_portal_description=(customer_portal_description)

      if !customer_portal_description.nil? && customer_portal_description.to_s.length > 500
        fail ArgumentError, "invalid value for 'customer_portal_description', the character length must be smaller than or equal to 500."
      end

      @customer_portal_description = customer_portal_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          board == o.board &&
          external_integration_xref == o.external_integration_xref &&
          sort_order == o.sort_order &&
          display_on_board == o.display_on_board &&
          inactive == o.inactive &&
          closed_status == o.closed_status &&
          time_entry_not_allowed == o.time_entry_not_allowed &&
          default_flag == o.default_flag &&
          escalation_status == o.escalation_status &&
          customer_portal_description == o.customer_portal_description &&
          customer_portal_flag == o.customer_portal_flag &&
          email_template == o.email_template &&
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
      [id, name, board, external_integration_xref, sort_order, display_on_board, inactive, closed_status, time_entry_not_allowed, default_flag, escalation_status, customer_portal_description, customer_portal_flag, email_template, _info].hash
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

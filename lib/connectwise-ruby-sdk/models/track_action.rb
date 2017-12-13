
require 'date'

module ConnectWise

  class TrackAction
    attr_accessor :id

    attr_accessor :notify_type

    attr_accessor :service_template

    attr_accessor :specific_member_to

    attr_accessor :email_recipient

    attr_accessor :specific_member_from

    attr_accessor :email_from

    attr_accessor :subject

    attr_accessor :notes

    attr_accessor :activity_type

    attr_accessor :activity_status

    attr_accessor :company_status

    attr_accessor :track

    attr_accessor :group

    attr_accessor :cc_contact

    attr_accessor :bcc_contact

    attr_accessor :days_to_execute

    attr_accessor :notify_who

    attr_accessor :notify_from

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
        :'notify_type' => :'notifyType',
        :'service_template' => :'serviceTemplate',
        :'specific_member_to' => :'specificMemberTo',
        :'email_recipient' => :'emailRecipient',
        :'specific_member_from' => :'specificMemberFrom',
        :'email_from' => :'emailFrom',
        :'subject' => :'subject',
        :'notes' => :'notes',
        :'activity_type' => :'activityType',
        :'activity_status' => :'activityStatus',
        :'company_status' => :'companyStatus',
        :'track' => :'track',
        :'group' => :'group',
        :'cc_contact' => :'ccContact',
        :'bcc_contact' => :'bccContact',
        :'days_to_execute' => :'daysToExecute',
        :'notify_who' => :'notifyWho',
        :'notify_from' => :'notifyFrom',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'notify_type' => :'String',
        :'service_template' => :'ServiceTemplateReference',
        :'specific_member_to' => :'MemberReference',
        :'email_recipient' => :'String',
        :'specific_member_from' => :'MemberReference',
        :'email_from' => :'String',
        :'subject' => :'String',
        :'notes' => :'String',
        :'activity_type' => :'ActivityTypeReference',
        :'activity_status' => :'ActivityStatusReference',
        :'company_status' => :'CompanyStatusReference',
        :'track' => :'TrackReference',
        :'group' => :'GroupReference',
        :'cc_contact' => :'ContactReference',
        :'bcc_contact' => :'ContactReference',
        :'days_to_execute' => :'Integer',
        :'notify_who' => :'NotificationRecipientReference',
        :'notify_from' => :'NotificationRecipientReference',
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

      if attributes.has_key?(:'notifyType')
        self.notify_type = attributes[:'notifyType']
      end

      if attributes.has_key?(:'serviceTemplate')
        self.service_template = attributes[:'serviceTemplate']
      end

      if attributes.has_key?(:'specificMemberTo')
        self.specific_member_to = attributes[:'specificMemberTo']
      end

      if attributes.has_key?(:'emailRecipient')
        self.email_recipient = attributes[:'emailRecipient']
      end

      if attributes.has_key?(:'specificMemberFrom')
        self.specific_member_from = attributes[:'specificMemberFrom']
      end

      if attributes.has_key?(:'emailFrom')
        self.email_from = attributes[:'emailFrom']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'activityType')
        self.activity_type = attributes[:'activityType']
      end

      if attributes.has_key?(:'activityStatus')
        self.activity_status = attributes[:'activityStatus']
      end

      if attributes.has_key?(:'companyStatus')
        self.company_status = attributes[:'companyStatus']
      end

      if attributes.has_key?(:'track')
        self.track = attributes[:'track']
      end

      if attributes.has_key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.has_key?(:'ccContact')
        self.cc_contact = attributes[:'ccContact']
      end

      if attributes.has_key?(:'bccContact')
        self.bcc_contact = attributes[:'bccContact']
      end

      if attributes.has_key?(:'daysToExecute')
        self.days_to_execute = attributes[:'daysToExecute']
      end

      if attributes.has_key?(:'notifyWho')
        self.notify_who = attributes[:'notifyWho']
      end

      if attributes.has_key?(:'notifyFrom')
        self.notify_from = attributes[:'notifyFrom']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @notify_type.nil?
        invalid_properties.push("invalid value for 'notify_type', notify_type cannot be nil.")
      end

      if !@email_recipient.nil? && @email_recipient.to_s.length > 250
        invalid_properties.push("invalid value for 'email_recipient', the character length must be smaller than or equal to 250.")
      end

      if !@email_from.nil? && @email_from.to_s.length > 250
        invalid_properties.push("invalid value for 'email_from', the character length must be smaller than or equal to 250.")
      end

      if !@subject.nil? && @subject.to_s.length > 100
        invalid_properties.push("invalid value for 'subject', the character length must be smaller than or equal to 100.")
      end

      if !@days_to_execute.nil? && @days_to_execute > 9999
        invalid_properties.push("invalid value for 'days_to_execute', must be smaller than or equal to 9999.")
      end

      if !@days_to_execute.nil? && @days_to_execute < 0
        invalid_properties.push("invalid value for 'days_to_execute', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @notify_type.nil?
      notify_type_validator = EnumAttributeValidator.new('String', ["AddToGroup", "ChangeCompanyStatus", "CreateActivity", "CreateServiceTicket", "SendEmail"])
      return false unless notify_type_validator.valid?(@notify_type)
      return false if !@email_recipient.nil? && @email_recipient.to_s.length > 250
      return false if !@email_from.nil? && @email_from.to_s.length > 250
      return false if !@subject.nil? && @subject.to_s.length > 100
      return false if !@days_to_execute.nil? && @days_to_execute > 9999
      return false if !@days_to_execute.nil? && @days_to_execute < 0
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notify_type Object to be assigned
    def notify_type=(notify_type)
      validator = EnumAttributeValidator.new('String', ["AddToGroup", "ChangeCompanyStatus", "CreateActivity", "CreateServiceTicket", "SendEmail"])
      unless validator.valid?(notify_type)
        fail ArgumentError, "invalid value for 'notify_type', must be one of #{validator.allowable_values}."
      end
      @notify_type = notify_type
    end

    # Custom attribute writer method with validation
    # @param [Object] email_recipient Value to be assigned
    def email_recipient=(email_recipient)

      if !email_recipient.nil? && email_recipient.to_s.length > 250
        fail ArgumentError, "invalid value for 'email_recipient', the character length must be smaller than or equal to 250."
      end

      @email_recipient = email_recipient
    end

    # Custom attribute writer method with validation
    # @param [Object] email_from Value to be assigned
    def email_from=(email_from)

      if !email_from.nil? && email_from.to_s.length > 250
        fail ArgumentError, "invalid value for 'email_from', the character length must be smaller than or equal to 250."
      end

      @email_from = email_from
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)

      if !subject.nil? && subject.to_s.length > 100
        fail ArgumentError, "invalid value for 'subject', the character length must be smaller than or equal to 100."
      end

      @subject = subject
    end

    # Custom attribute writer method with validation
    # @param [Object] days_to_execute Value to be assigned
    def days_to_execute=(days_to_execute)

      if !days_to_execute.nil? && days_to_execute > 9999
        fail ArgumentError, "invalid value for 'days_to_execute', must be smaller than or equal to 9999."
      end

      if !days_to_execute.nil? && days_to_execute < 0
        fail ArgumentError, "invalid value for 'days_to_execute', must be greater than or equal to 0."
      end

      @days_to_execute = days_to_execute
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          notify_type == o.notify_type &&
          service_template == o.service_template &&
          specific_member_to == o.specific_member_to &&
          email_recipient == o.email_recipient &&
          specific_member_from == o.specific_member_from &&
          email_from == o.email_from &&
          subject == o.subject &&
          notes == o.notes &&
          activity_type == o.activity_type &&
          activity_status == o.activity_status &&
          company_status == o.company_status &&
          track == o.track &&
          group == o.group &&
          cc_contact == o.cc_contact &&
          bcc_contact == o.bcc_contact &&
          days_to_execute == o.days_to_execute &&
          notify_who == o.notify_who &&
          notify_from == o.notify_from &&
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
      [id, notify_type, service_template, specific_member_to, email_recipient, specific_member_from, email_from, subject, notes, activity_type, activity_status, company_status, track, group, cc_contact, bcc_contact, days_to_execute, notify_who, notify_from, _info].hash
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

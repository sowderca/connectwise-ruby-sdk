
require 'date'

module ConnectWise

  class EmailConnector
    attr_accessor :id

    attr_accessor :imap_setup

    attr_accessor :service_board

    attr_accessor :default_company

    attr_accessor :default_member

    attr_accessor :location

    attr_accessor :department

    attr_accessor :email_notify_from

    attr_accessor :bcc_email_to

    attr_accessor :email_errors_to

    attr_accessor :set_email_to_default_contact_flag

    attr_accessor :no_response_flag

    attr_accessor :never_respond_flag

    attr_accessor :discard_duplicates_flag

    attr_accessor :post_replies_to_ticket_flag

    attr_accessor :create_contact_flag

    attr_accessor :response_email_for_new

    attr_accessor :response_email_for_existing

    attr_accessor :source_override

    attr_accessor :priority_override

    attr_accessor :type_override

    attr_accessor :sub_type_override

    attr_accessor :item_override

    attr_accessor :status_override

    attr_accessor :add_cc_flag

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'imap_setup' => :'imapSetup',
        :'service_board' => :'serviceBoard',
        :'default_company' => :'defaultCompany',
        :'default_member' => :'defaultMember',
        :'location' => :'location',
        :'department' => :'department',
        :'email_notify_from' => :'emailNotifyFrom',
        :'bcc_email_to' => :'bccEmailTo',
        :'email_errors_to' => :'emailErrorsTo',
        :'set_email_to_default_contact_flag' => :'setEmailToDefaultContactFlag',
        :'no_response_flag' => :'noResponseFlag',
        :'never_respond_flag' => :'neverRespondFlag',
        :'discard_duplicates_flag' => :'discardDuplicatesFlag',
        :'post_replies_to_ticket_flag' => :'postRepliesToTicketFlag',
        :'create_contact_flag' => :'createContactFlag',
        :'response_email_for_new' => :'responseEmailForNew',
        :'response_email_for_existing' => :'responseEmailForExisting',
        :'source_override' => :'sourceOverride',
        :'priority_override' => :'priorityOverride',
        :'type_override' => :'typeOverride',
        :'sub_type_override' => :'subTypeOverride',
        :'item_override' => :'itemOverride',
        :'status_override' => :'statusOverride',
        :'add_cc_flag' => :'addCcFlag',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'imap_setup' => :'ImapSetupReference',
        :'service_board' => :'BoardReference',
        :'default_company' => :'CompanyReference',
        :'default_member' => :'MemberReference',
        :'location' => :'SystemLocationReference',
        :'department' => :'SystemDepartmentReference',
        :'email_notify_from' => :'String',
        :'bcc_email_to' => :'String',
        :'email_errors_to' => :'String',
        :'set_email_to_default_contact_flag' => :'BOOLEAN',
        :'no_response_flag' => :'BOOLEAN',
        :'never_respond_flag' => :'BOOLEAN',
        :'discard_duplicates_flag' => :'BOOLEAN',
        :'post_replies_to_ticket_flag' => :'BOOLEAN',
        :'create_contact_flag' => :'BOOLEAN',
        :'response_email_for_new' => :'String',
        :'response_email_for_existing' => :'String',
        :'source_override' => :'ServiceSourceReference',
        :'priority_override' => :'PriorityReference',
        :'type_override' => :'ServiceTypeReference',
        :'sub_type_override' => :'ServiceSubTypeReference',
        :'item_override' => :'ServiceItemReference',
        :'status_override' => :'ServiceStatusReference',
        :'add_cc_flag' => :'BOOLEAN',
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

      if attributes.has_key?(:'imapSetup')
        self.imap_setup = attributes[:'imapSetup']
      end

      if attributes.has_key?(:'serviceBoard')
        self.service_board = attributes[:'serviceBoard']
      end

      if attributes.has_key?(:'defaultCompany')
        self.default_company = attributes[:'defaultCompany']
      end

      if attributes.has_key?(:'defaultMember')
        self.default_member = attributes[:'defaultMember']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'emailNotifyFrom')
        self.email_notify_from = attributes[:'emailNotifyFrom']
      end

      if attributes.has_key?(:'bccEmailTo')
        self.bcc_email_to = attributes[:'bccEmailTo']
      end

      if attributes.has_key?(:'emailErrorsTo')
        self.email_errors_to = attributes[:'emailErrorsTo']
      end

      if attributes.has_key?(:'setEmailToDefaultContactFlag')
        self.set_email_to_default_contact_flag = attributes[:'setEmailToDefaultContactFlag']
      end

      if attributes.has_key?(:'noResponseFlag')
        self.no_response_flag = attributes[:'noResponseFlag']
      end

      if attributes.has_key?(:'neverRespondFlag')
        self.never_respond_flag = attributes[:'neverRespondFlag']
      end

      if attributes.has_key?(:'discardDuplicatesFlag')
        self.discard_duplicates_flag = attributes[:'discardDuplicatesFlag']
      end

      if attributes.has_key?(:'postRepliesToTicketFlag')
        self.post_replies_to_ticket_flag = attributes[:'postRepliesToTicketFlag']
      end

      if attributes.has_key?(:'createContactFlag')
        self.create_contact_flag = attributes[:'createContactFlag']
      end

      if attributes.has_key?(:'responseEmailForNew')
        self.response_email_for_new = attributes[:'responseEmailForNew']
      end

      if attributes.has_key?(:'responseEmailForExisting')
        self.response_email_for_existing = attributes[:'responseEmailForExisting']
      end

      if attributes.has_key?(:'sourceOverride')
        self.source_override = attributes[:'sourceOverride']
      end

      if attributes.has_key?(:'priorityOverride')
        self.priority_override = attributes[:'priorityOverride']
      end

      if attributes.has_key?(:'typeOverride')
        self.type_override = attributes[:'typeOverride']
      end

      if attributes.has_key?(:'subTypeOverride')
        self.sub_type_override = attributes[:'subTypeOverride']
      end

      if attributes.has_key?(:'itemOverride')
        self.item_override = attributes[:'itemOverride']
      end

      if attributes.has_key?(:'statusOverride')
        self.status_override = attributes[:'statusOverride']
      end

      if attributes.has_key?(:'addCcFlag')
        self.add_cc_flag = attributes[:'addCcFlag']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @imap_setup.nil?
        invalid_properties.push("invalid value for 'imap_setup', imap_setup cannot be nil.")
      end

      if @service_board.nil?
        invalid_properties.push("invalid value for 'service_board', service_board cannot be nil.")
      end

      if @default_company.nil?
        invalid_properties.push("invalid value for 'default_company', default_company cannot be nil.")
      end

      if @default_member.nil?
        invalid_properties.push("invalid value for 'default_member', default_member cannot be nil.")
      end

      if !@email_notify_from.nil? && @email_notify_from.to_s.length > 50
        invalid_properties.push("invalid value for 'email_notify_from', the character length must be smaller than or equal to 50.")
      end

      if !@bcc_email_to.nil? && @bcc_email_to.to_s.length > 250
        invalid_properties.push("invalid value for 'bcc_email_to', the character length must be smaller than or equal to 250.")
      end

      if @email_errors_to.nil?
        invalid_properties.push("invalid value for 'email_errors_to', email_errors_to cannot be nil.")
      end

      if @email_errors_to.to_s.length > 50
        invalid_properties.push("invalid value for 'email_errors_to', the character length must be smaller than or equal to 50.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @imap_setup.nil?
      return false if @service_board.nil?
      return false if @default_company.nil?
      return false if @default_member.nil?
      return false if !@email_notify_from.nil? && @email_notify_from.to_s.length > 50
      return false if !@bcc_email_to.nil? && @bcc_email_to.to_s.length > 250
      return false if @email_errors_to.nil?
      return false if @email_errors_to.to_s.length > 50
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] email_notify_from Value to be assigned
    def email_notify_from=(email_notify_from)

      if !email_notify_from.nil? && email_notify_from.to_s.length > 50
        fail ArgumentError, "invalid value for 'email_notify_from', the character length must be smaller than or equal to 50."
      end

      @email_notify_from = email_notify_from
    end

    # Custom attribute writer method with validation
    # @param [Object] bcc_email_to Value to be assigned
    def bcc_email_to=(bcc_email_to)

      if !bcc_email_to.nil? && bcc_email_to.to_s.length > 250
        fail ArgumentError, "invalid value for 'bcc_email_to', the character length must be smaller than or equal to 250."
      end

      @bcc_email_to = bcc_email_to
    end

    # Custom attribute writer method with validation
    # @param [Object] email_errors_to Value to be assigned
    def email_errors_to=(email_errors_to)
      if email_errors_to.nil?
        fail ArgumentError, "email_errors_to cannot be nil"
      end

      if email_errors_to.to_s.length > 50
        fail ArgumentError, "invalid value for 'email_errors_to', the character length must be smaller than or equal to 50."
      end

      @email_errors_to = email_errors_to
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          imap_setup == o.imap_setup &&
          service_board == o.service_board &&
          default_company == o.default_company &&
          default_member == o.default_member &&
          location == o.location &&
          department == o.department &&
          email_notify_from == o.email_notify_from &&
          bcc_email_to == o.bcc_email_to &&
          email_errors_to == o.email_errors_to &&
          set_email_to_default_contact_flag == o.set_email_to_default_contact_flag &&
          no_response_flag == o.no_response_flag &&
          never_respond_flag == o.never_respond_flag &&
          discard_duplicates_flag == o.discard_duplicates_flag &&
          post_replies_to_ticket_flag == o.post_replies_to_ticket_flag &&
          create_contact_flag == o.create_contact_flag &&
          response_email_for_new == o.response_email_for_new &&
          response_email_for_existing == o.response_email_for_existing &&
          source_override == o.source_override &&
          priority_override == o.priority_override &&
          type_override == o.type_override &&
          sub_type_override == o.sub_type_override &&
          item_override == o.item_override &&
          status_override == o.status_override &&
          add_cc_flag == o.add_cc_flag &&
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
      [id, imap_setup, service_board, default_company, default_member, location, department, email_notify_from, bcc_email_to, email_errors_to, set_email_to_default_contact_flag, no_response_flag, never_respond_flag, discard_duplicates_flag, post_replies_to_ticket_flag, create_contact_flag, response_email_for_new, response_email_for_existing, source_override, priority_override, type_override, sub_type_override, item_override, status_override, add_cc_flag, _info].hash
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

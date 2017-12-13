
require 'date'

module ConnectWise

  class WorkflowAction
    attr_accessor :id

    attr_accessor :notify_type

    # Required when notifyType is set to: \"Create Activity\", \"Send Email\", \"Add Follower\", \"Assign Resource\", \"Close Survey\"
    attr_accessor :notify_who

    # Required when notifyWho is set to: \"Specific Member\", \"
    attr_accessor :specific_member_to

    # Required when notifyWho is set to: \"Email Address\"
    attr_accessor :email_recipient

    # Required when notifyType is set to: \"Create Activity\", \"Send Email\", \"Assign Resource\"
    attr_accessor :notify_from

    # Required when notifyFrom is set to: \"Specific Member\"
    attr_accessor :specific_member_from

    # Required when notifyFrom is set to: \"Email Address\"
    attr_accessor :email_from

    attr_accessor :cc_contact

    attr_accessor :bcc_contact

    # Required when notifyType is set to: \"Create Activity\", \"Send Email\", \"Assign Resource\"
    attr_accessor :subject

    attr_accessor :notes

    # Required when notifyType is set to: \"Create Activity\"
    attr_accessor :activity_status

    # Required when notifyType is set to: \"Create Activity\"
    attr_accessor :activity_type

    # Required when notifyType is set to: \"Attach Track\"
    attr_accessor :attached_track

    attr_accessor :days_to_execute

    # Required when notifyType is set to: \"Change Board\"
    attr_accessor :board

    # Required when notifyType is set to: \"Change Board\", \"Change Ticket Status\"
    attr_accessor :board_status

    attr_accessor :service_type

    # Required when notifyType is set to: \"Add to Group\"
    attr_accessor :group

    # Required when notifyType is set to: \"Create a Service Ticket\"
    attr_accessor :service_template

    attr_accessor :invoice_min_days

    # Required when notifyType is set to: \"Run Connectwise Automate Script\"
    attr_accessor :automate_script

    # Required when notifyType is set to: \"Run Connectwise Automate Script\"
    attr_accessor :script_success_status

    # Required when notifyType is set to: \"Run Connectwise Automate Script\"
    attr_accessor :script_fail_status

    attr_accessor :detail_notes_flag

    attr_accessor :internal_notes_flag

    attr_accessor :audit_notes_flag

    # Required when notifyType is set to: \"Change Ticket Priority\"
    attr_accessor :service_priority

    attr_accessor :update_owner_flag

    # Required when notifyType is set to: \"Change Sales Order Status\"
    attr_accessor :sales_order_status

    # Required when notifyType is set to: \"Change Project Status\"
    attr_accessor :project_status

    # Required when notifyType is set to: \"Change Company Status\"
    attr_accessor :company_status

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'notify_type' => :'notifyType',
        :'notify_who' => :'notifyWho',
        :'specific_member_to' => :'specificMemberTo',
        :'email_recipient' => :'emailRecipient',
        :'notify_from' => :'notifyFrom',
        :'specific_member_from' => :'specificMemberFrom',
        :'email_from' => :'emailFrom',
        :'cc_contact' => :'ccContact',
        :'bcc_contact' => :'bccContact',
        :'subject' => :'subject',
        :'notes' => :'notes',
        :'activity_status' => :'activityStatus',
        :'activity_type' => :'activityType',
        :'attached_track' => :'attachedTrack',
        :'days_to_execute' => :'daysToExecute',
        :'board' => :'board',
        :'board_status' => :'boardStatus',
        :'service_type' => :'serviceType',
        :'group' => :'group',
        :'service_template' => :'serviceTemplate',
        :'invoice_min_days' => :'invoiceMinDays',
        :'automate_script' => :'automateScript',
        :'script_success_status' => :'scriptSuccessStatus',
        :'script_fail_status' => :'scriptFailStatus',
        :'detail_notes_flag' => :'detailNotesFlag',
        :'internal_notes_flag' => :'internalNotesFlag',
        :'audit_notes_flag' => :'auditNotesFlag',
        :'service_priority' => :'servicePriority',
        :'update_owner_flag' => :'updateOwnerFlag',
        :'sales_order_status' => :'salesOrderStatus',
        :'project_status' => :'projectStatus',
        :'company_status' => :'companyStatus',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'notify_type' => :'NotifyTypeReference',
        :'notify_who' => :'NotificationRecipientReference',
        :'specific_member_to' => :'MemberReference',
        :'email_recipient' => :'String',
        :'notify_from' => :'NotificationRecipientReference',
        :'specific_member_from' => :'MemberReference',
        :'email_from' => :'String',
        :'cc_contact' => :'ContactReference',
        :'bcc_contact' => :'ContactReference',
        :'subject' => :'String',
        :'notes' => :'String',
        :'activity_status' => :'ActivityStatusReference',
        :'activity_type' => :'ActivityTypeReference',
        :'attached_track' => :'TrackReference',
        :'days_to_execute' => :'Integer',
        :'board' => :'BoardReference',
        :'board_status' => :'ServiceStatusReference',
        :'service_type' => :'ServiceTypeReference',
        :'group' => :'GroupReference',
        :'service_template' => :'ServiceTemplateReference',
        :'invoice_min_days' => :'Integer',
        :'automate_script' => :'AutomateScriptReference',
        :'script_success_status' => :'ServiceStatusReference',
        :'script_fail_status' => :'ServiceStatusReference',
        :'detail_notes_flag' => :'BOOLEAN',
        :'internal_notes_flag' => :'BOOLEAN',
        :'audit_notes_flag' => :'BOOLEAN',
        :'service_priority' => :'PriorityReference',
        :'update_owner_flag' => :'BOOLEAN',
        :'sales_order_status' => :'OrderStatusReference',
        :'project_status' => :'ProjectStatusReference',
        :'company_status' => :'CompanyStatusReference',
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

      if attributes.has_key?(:'notifyWho')
        self.notify_who = attributes[:'notifyWho']
      end

      if attributes.has_key?(:'specificMemberTo')
        self.specific_member_to = attributes[:'specificMemberTo']
      end

      if attributes.has_key?(:'emailRecipient')
        self.email_recipient = attributes[:'emailRecipient']
      end

      if attributes.has_key?(:'notifyFrom')
        self.notify_from = attributes[:'notifyFrom']
      end

      if attributes.has_key?(:'specificMemberFrom')
        self.specific_member_from = attributes[:'specificMemberFrom']
      end

      if attributes.has_key?(:'emailFrom')
        self.email_from = attributes[:'emailFrom']
      end

      if attributes.has_key?(:'ccContact')
        self.cc_contact = attributes[:'ccContact']
      end

      if attributes.has_key?(:'bccContact')
        self.bcc_contact = attributes[:'bccContact']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'activityStatus')
        self.activity_status = attributes[:'activityStatus']
      end

      if attributes.has_key?(:'activityType')
        self.activity_type = attributes[:'activityType']
      end

      if attributes.has_key?(:'attachedTrack')
        self.attached_track = attributes[:'attachedTrack']
      end

      if attributes.has_key?(:'daysToExecute')
        self.days_to_execute = attributes[:'daysToExecute']
      end

      if attributes.has_key?(:'board')
        self.board = attributes[:'board']
      end

      if attributes.has_key?(:'boardStatus')
        self.board_status = attributes[:'boardStatus']
      end

      if attributes.has_key?(:'serviceType')
        self.service_type = attributes[:'serviceType']
      end

      if attributes.has_key?(:'group')
        self.group = attributes[:'group']
      end

      if attributes.has_key?(:'serviceTemplate')
        self.service_template = attributes[:'serviceTemplate']
      end

      if attributes.has_key?(:'invoiceMinDays')
        self.invoice_min_days = attributes[:'invoiceMinDays']
      end

      if attributes.has_key?(:'automateScript')
        self.automate_script = attributes[:'automateScript']
      end

      if attributes.has_key?(:'scriptSuccessStatus')
        self.script_success_status = attributes[:'scriptSuccessStatus']
      end

      if attributes.has_key?(:'scriptFailStatus')
        self.script_fail_status = attributes[:'scriptFailStatus']
      end

      if attributes.has_key?(:'detailNotesFlag')
        self.detail_notes_flag = attributes[:'detailNotesFlag']
      end

      if attributes.has_key?(:'internalNotesFlag')
        self.internal_notes_flag = attributes[:'internalNotesFlag']
      end

      if attributes.has_key?(:'auditNotesFlag')
        self.audit_notes_flag = attributes[:'auditNotesFlag']
      end

      if attributes.has_key?(:'servicePriority')
        self.service_priority = attributes[:'servicePriority']
      end

      if attributes.has_key?(:'updateOwnerFlag')
        self.update_owner_flag = attributes[:'updateOwnerFlag']
      end

      if attributes.has_key?(:'salesOrderStatus')
        self.sales_order_status = attributes[:'salesOrderStatus']
      end

      if attributes.has_key?(:'projectStatus')
        self.project_status = attributes[:'projectStatus']
      end

      if attributes.has_key?(:'companyStatus')
        self.company_status = attributes[:'companyStatus']
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

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @notify_type.nil?
      return false if !@email_recipient.nil? && @email_recipient.to_s.length > 250
      return false if !@email_from.nil? && @email_from.to_s.length > 250
      return false if !@subject.nil? && @subject.to_s.length > 100
      return true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          notify_type == o.notify_type &&
          notify_who == o.notify_who &&
          specific_member_to == o.specific_member_to &&
          email_recipient == o.email_recipient &&
          notify_from == o.notify_from &&
          specific_member_from == o.specific_member_from &&
          email_from == o.email_from &&
          cc_contact == o.cc_contact &&
          bcc_contact == o.bcc_contact &&
          subject == o.subject &&
          notes == o.notes &&
          activity_status == o.activity_status &&
          activity_type == o.activity_type &&
          attached_track == o.attached_track &&
          days_to_execute == o.days_to_execute &&
          board == o.board &&
          board_status == o.board_status &&
          service_type == o.service_type &&
          group == o.group &&
          service_template == o.service_template &&
          invoice_min_days == o.invoice_min_days &&
          automate_script == o.automate_script &&
          script_success_status == o.script_success_status &&
          script_fail_status == o.script_fail_status &&
          detail_notes_flag == o.detail_notes_flag &&
          internal_notes_flag == o.internal_notes_flag &&
          audit_notes_flag == o.audit_notes_flag &&
          service_priority == o.service_priority &&
          update_owner_flag == o.update_owner_flag &&
          sales_order_status == o.sales_order_status &&
          project_status == o.project_status &&
          company_status == o.company_status &&
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
      [id, notify_type, notify_who, specific_member_to, email_recipient, notify_from, specific_member_from, email_from, cc_contact, bcc_contact, subject, notes, activity_status, activity_type, attached_track, days_to_execute, board, board_status, service_type, group, service_template, invoice_min_days, automate_script, script_success_status, script_fail_status, detail_notes_flag, internal_notes_flag, audit_notes_flag, service_priority, update_owner_flag, sales_order_status, project_status, company_status, _info].hash
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

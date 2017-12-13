
require 'date'

module ConnectWise

  class PortalConfigurationOpportunitySetup
    attr_accessor :id

    attr_accessor :opportunity_status_rec_i_ds

    attr_accessor :add_all_opportunity_statuses

    attr_accessor :remove_all_opportunity_statuses

    attr_accessor :opportunity_type_rec_i_ds

    attr_accessor :add_all_opportunity_types

    attr_accessor :remove_all_opportunity_types

    attr_accessor :restrict_view_by_opportunity_status_flag

    attr_accessor :restrict_view_by_opportunity_type_flag

    attr_accessor :acceptance_change_status_flag

    attr_accessor :acceptance_create_activity_flag

    # Required when acceptanceChangeStatusFlag is true
    attr_accessor :acceptance_opportunity_status

    attr_accessor :acceptance_send_email_flag

    attr_accessor :acceptance_email_from_first_name

    attr_accessor :acceptance_email_from_last_name

    attr_accessor :acceptance_email_subject

    attr_accessor :acceptance_email_body

    # Required when acceptanceSendEmailFlag is true
    attr_accessor :acceptance_from_email

    # Required when acceptanceCreateActivityFlag is true
    attr_accessor :acceptance_email_activity_type

    # Required when acceptanceCreateActivityFlag is true
    attr_accessor :acceptance_email_assigned_by_member

    attr_accessor :rejection_change_status_flag

    attr_accessor :rejection_create_activity_flag

    # Required when rejectionChangeStatusFlag is true
    attr_accessor :rejection_opportunity_status

    attr_accessor :rejection_send_email_flag

    attr_accessor :rejection_email_from_first_name

    attr_accessor :rejection_email_from_last_name

    # Required when rejectionSendEmailFlag is true
    attr_accessor :rejection_from_email

    attr_accessor :rejection_email_subject

    attr_accessor :rejection_email_body

    # Required when rejectionCreateActivityFlag is true
    attr_accessor :rejection_email_activity_type

    # Required when rejectionCreateActivityFlag is true
    attr_accessor :rejection_email_assigned_by_member

    attr_accessor :confirmation_send_email_flag

    attr_accessor :confirmation_email_use_default_company_email_address_flag

    attr_accessor :confirmation_email_from_first_name

    attr_accessor :confirmation_email_from_last_name

    # Required when confirmationSendEmailFlag is true
    attr_accessor :confirmation_from_email

    attr_accessor :confirmation_email_subject

    attr_accessor :confirmation_email_body

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'opportunity_status_rec_i_ds' => :'opportunityStatusRecIDs',
        :'add_all_opportunity_statuses' => :'addAllOpportunityStatuses',
        :'remove_all_opportunity_statuses' => :'removeAllOpportunityStatuses',
        :'opportunity_type_rec_i_ds' => :'opportunityTypeRecIDs',
        :'add_all_opportunity_types' => :'addAllOpportunityTypes',
        :'remove_all_opportunity_types' => :'removeAllOpportunityTypes',
        :'restrict_view_by_opportunity_status_flag' => :'restrictViewByOpportunityStatusFlag',
        :'restrict_view_by_opportunity_type_flag' => :'restrictViewByOpportunityTypeFlag',
        :'acceptance_change_status_flag' => :'acceptanceChangeStatusFlag',
        :'acceptance_create_activity_flag' => :'acceptanceCreateActivityFlag',
        :'acceptance_opportunity_status' => :'acceptanceOpportunityStatus',
        :'acceptance_send_email_flag' => :'acceptanceSendEmailFlag',
        :'acceptance_email_from_first_name' => :'acceptanceEmailFromFirstName',
        :'acceptance_email_from_last_name' => :'acceptanceEmailFromLastName',
        :'acceptance_email_subject' => :'acceptanceEmailSubject',
        :'acceptance_email_body' => :'acceptanceEmailBody',
        :'acceptance_from_email' => :'acceptanceFromEmail',
        :'acceptance_email_activity_type' => :'acceptanceEmailActivityType',
        :'acceptance_email_assigned_by_member' => :'acceptanceEmailAssignedByMember',
        :'rejection_change_status_flag' => :'rejectionChangeStatusFlag',
        :'rejection_create_activity_flag' => :'rejectionCreateActivityFlag',
        :'rejection_opportunity_status' => :'rejectionOpportunityStatus',
        :'rejection_send_email_flag' => :'rejectionSendEmailFlag',
        :'rejection_email_from_first_name' => :'rejectionEmailFromFirstName',
        :'rejection_email_from_last_name' => :'rejectionEmailFromLastName',
        :'rejection_from_email' => :'rejectionFromEmail',
        :'rejection_email_subject' => :'rejectionEmailSubject',
        :'rejection_email_body' => :'rejectionEmailBody',
        :'rejection_email_activity_type' => :'rejectionEmailActivityType',
        :'rejection_email_assigned_by_member' => :'rejectionEmailAssignedByMember',
        :'confirmation_send_email_flag' => :'confirmationSendEmailFlag',
        :'confirmation_email_use_default_company_email_address_flag' => :'confirmationEmailUseDefaultCompanyEmailAddressFlag',
        :'confirmation_email_from_first_name' => :'confirmationEmailFromFirstName',
        :'confirmation_email_from_last_name' => :'confirmationEmailFromLastName',
        :'confirmation_from_email' => :'confirmationFromEmail',
        :'confirmation_email_subject' => :'confirmationEmailSubject',
        :'confirmation_email_body' => :'confirmationEmailBody',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'opportunity_status_rec_i_ds' => :'Array<Integer>',
        :'add_all_opportunity_statuses' => :'BOOLEAN',
        :'remove_all_opportunity_statuses' => :'BOOLEAN',
        :'opportunity_type_rec_i_ds' => :'Array<Integer>',
        :'add_all_opportunity_types' => :'BOOLEAN',
        :'remove_all_opportunity_types' => :'BOOLEAN',
        :'restrict_view_by_opportunity_status_flag' => :'BOOLEAN',
        :'restrict_view_by_opportunity_type_flag' => :'BOOLEAN',
        :'acceptance_change_status_flag' => :'BOOLEAN',
        :'acceptance_create_activity_flag' => :'BOOLEAN',
        :'acceptance_opportunity_status' => :'OpportunityStatusReference',
        :'acceptance_send_email_flag' => :'BOOLEAN',
        :'acceptance_email_from_first_name' => :'String',
        :'acceptance_email_from_last_name' => :'String',
        :'acceptance_email_subject' => :'String',
        :'acceptance_email_body' => :'String',
        :'acceptance_from_email' => :'String',
        :'acceptance_email_activity_type' => :'ActivityTypeReference',
        :'acceptance_email_assigned_by_member' => :'MemberReference',
        :'rejection_change_status_flag' => :'BOOLEAN',
        :'rejection_create_activity_flag' => :'BOOLEAN',
        :'rejection_opportunity_status' => :'OpportunityStatusReference',
        :'rejection_send_email_flag' => :'BOOLEAN',
        :'rejection_email_from_first_name' => :'String',
        :'rejection_email_from_last_name' => :'String',
        :'rejection_from_email' => :'String',
        :'rejection_email_subject' => :'String',
        :'rejection_email_body' => :'String',
        :'rejection_email_activity_type' => :'ActivityTypeReference',
        :'rejection_email_assigned_by_member' => :'MemberReference',
        :'confirmation_send_email_flag' => :'BOOLEAN',
        :'confirmation_email_use_default_company_email_address_flag' => :'BOOLEAN',
        :'confirmation_email_from_first_name' => :'String',
        :'confirmation_email_from_last_name' => :'String',
        :'confirmation_from_email' => :'String',
        :'confirmation_email_subject' => :'String',
        :'confirmation_email_body' => :'String',
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

      if attributes.has_key?(:'opportunityStatusRecIDs')
        if (value = attributes[:'opportunityStatusRecIDs']).is_a?(Array)
          self.opportunity_status_rec_i_ds = value
        end
      end

      if attributes.has_key?(:'addAllOpportunityStatuses')
        self.add_all_opportunity_statuses = attributes[:'addAllOpportunityStatuses']
      end

      if attributes.has_key?(:'removeAllOpportunityStatuses')
        self.remove_all_opportunity_statuses = attributes[:'removeAllOpportunityStatuses']
      end

      if attributes.has_key?(:'opportunityTypeRecIDs')
        if (value = attributes[:'opportunityTypeRecIDs']).is_a?(Array)
          self.opportunity_type_rec_i_ds = value
        end
      end

      if attributes.has_key?(:'addAllOpportunityTypes')
        self.add_all_opportunity_types = attributes[:'addAllOpportunityTypes']
      end

      if attributes.has_key?(:'removeAllOpportunityTypes')
        self.remove_all_opportunity_types = attributes[:'removeAllOpportunityTypes']
      end

      if attributes.has_key?(:'restrictViewByOpportunityStatusFlag')
        self.restrict_view_by_opportunity_status_flag = attributes[:'restrictViewByOpportunityStatusFlag']
      end

      if attributes.has_key?(:'restrictViewByOpportunityTypeFlag')
        self.restrict_view_by_opportunity_type_flag = attributes[:'restrictViewByOpportunityTypeFlag']
      end

      if attributes.has_key?(:'acceptanceChangeStatusFlag')
        self.acceptance_change_status_flag = attributes[:'acceptanceChangeStatusFlag']
      end

      if attributes.has_key?(:'acceptanceCreateActivityFlag')
        self.acceptance_create_activity_flag = attributes[:'acceptanceCreateActivityFlag']
      end

      if attributes.has_key?(:'acceptanceOpportunityStatus')
        self.acceptance_opportunity_status = attributes[:'acceptanceOpportunityStatus']
      end

      if attributes.has_key?(:'acceptanceSendEmailFlag')
        self.acceptance_send_email_flag = attributes[:'acceptanceSendEmailFlag']
      end

      if attributes.has_key?(:'acceptanceEmailFromFirstName')
        self.acceptance_email_from_first_name = attributes[:'acceptanceEmailFromFirstName']
      end

      if attributes.has_key?(:'acceptanceEmailFromLastName')
        self.acceptance_email_from_last_name = attributes[:'acceptanceEmailFromLastName']
      end

      if attributes.has_key?(:'acceptanceEmailSubject')
        self.acceptance_email_subject = attributes[:'acceptanceEmailSubject']
      end

      if attributes.has_key?(:'acceptanceEmailBody')
        self.acceptance_email_body = attributes[:'acceptanceEmailBody']
      end

      if attributes.has_key?(:'acceptanceFromEmail')
        self.acceptance_from_email = attributes[:'acceptanceFromEmail']
      end

      if attributes.has_key?(:'acceptanceEmailActivityType')
        self.acceptance_email_activity_type = attributes[:'acceptanceEmailActivityType']
      end

      if attributes.has_key?(:'acceptanceEmailAssignedByMember')
        self.acceptance_email_assigned_by_member = attributes[:'acceptanceEmailAssignedByMember']
      end

      if attributes.has_key?(:'rejectionChangeStatusFlag')
        self.rejection_change_status_flag = attributes[:'rejectionChangeStatusFlag']
      end

      if attributes.has_key?(:'rejectionCreateActivityFlag')
        self.rejection_create_activity_flag = attributes[:'rejectionCreateActivityFlag']
      end

      if attributes.has_key?(:'rejectionOpportunityStatus')
        self.rejection_opportunity_status = attributes[:'rejectionOpportunityStatus']
      end

      if attributes.has_key?(:'rejectionSendEmailFlag')
        self.rejection_send_email_flag = attributes[:'rejectionSendEmailFlag']
      end

      if attributes.has_key?(:'rejectionEmailFromFirstName')
        self.rejection_email_from_first_name = attributes[:'rejectionEmailFromFirstName']
      end

      if attributes.has_key?(:'rejectionEmailFromLastName')
        self.rejection_email_from_last_name = attributes[:'rejectionEmailFromLastName']
      end

      if attributes.has_key?(:'rejectionFromEmail')
        self.rejection_from_email = attributes[:'rejectionFromEmail']
      end

      if attributes.has_key?(:'rejectionEmailSubject')
        self.rejection_email_subject = attributes[:'rejectionEmailSubject']
      end

      if attributes.has_key?(:'rejectionEmailBody')
        self.rejection_email_body = attributes[:'rejectionEmailBody']
      end

      if attributes.has_key?(:'rejectionEmailActivityType')
        self.rejection_email_activity_type = attributes[:'rejectionEmailActivityType']
      end

      if attributes.has_key?(:'rejectionEmailAssignedByMember')
        self.rejection_email_assigned_by_member = attributes[:'rejectionEmailAssignedByMember']
      end

      if attributes.has_key?(:'confirmationSendEmailFlag')
        self.confirmation_send_email_flag = attributes[:'confirmationSendEmailFlag']
      end

      if attributes.has_key?(:'confirmationEmailUseDefaultCompanyEmailAddressFlag')
        self.confirmation_email_use_default_company_email_address_flag = attributes[:'confirmationEmailUseDefaultCompanyEmailAddressFlag']
      end

      if attributes.has_key?(:'confirmationEmailFromFirstName')
        self.confirmation_email_from_first_name = attributes[:'confirmationEmailFromFirstName']
      end

      if attributes.has_key?(:'confirmationEmailFromLastName')
        self.confirmation_email_from_last_name = attributes[:'confirmationEmailFromLastName']
      end

      if attributes.has_key?(:'confirmationFromEmail')
        self.confirmation_from_email = attributes[:'confirmationFromEmail']
      end

      if attributes.has_key?(:'confirmationEmailSubject')
        self.confirmation_email_subject = attributes[:'confirmationEmailSubject']
      end

      if attributes.has_key?(:'confirmationEmailBody')
        self.confirmation_email_body = attributes[:'confirmationEmailBody']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          opportunity_status_rec_i_ds == o.opportunity_status_rec_i_ds &&
          add_all_opportunity_statuses == o.add_all_opportunity_statuses &&
          remove_all_opportunity_statuses == o.remove_all_opportunity_statuses &&
          opportunity_type_rec_i_ds == o.opportunity_type_rec_i_ds &&
          add_all_opportunity_types == o.add_all_opportunity_types &&
          remove_all_opportunity_types == o.remove_all_opportunity_types &&
          restrict_view_by_opportunity_status_flag == o.restrict_view_by_opportunity_status_flag &&
          restrict_view_by_opportunity_type_flag == o.restrict_view_by_opportunity_type_flag &&
          acceptance_change_status_flag == o.acceptance_change_status_flag &&
          acceptance_create_activity_flag == o.acceptance_create_activity_flag &&
          acceptance_opportunity_status == o.acceptance_opportunity_status &&
          acceptance_send_email_flag == o.acceptance_send_email_flag &&
          acceptance_email_from_first_name == o.acceptance_email_from_first_name &&
          acceptance_email_from_last_name == o.acceptance_email_from_last_name &&
          acceptance_email_subject == o.acceptance_email_subject &&
          acceptance_email_body == o.acceptance_email_body &&
          acceptance_from_email == o.acceptance_from_email &&
          acceptance_email_activity_type == o.acceptance_email_activity_type &&
          acceptance_email_assigned_by_member == o.acceptance_email_assigned_by_member &&
          rejection_change_status_flag == o.rejection_change_status_flag &&
          rejection_create_activity_flag == o.rejection_create_activity_flag &&
          rejection_opportunity_status == o.rejection_opportunity_status &&
          rejection_send_email_flag == o.rejection_send_email_flag &&
          rejection_email_from_first_name == o.rejection_email_from_first_name &&
          rejection_email_from_last_name == o.rejection_email_from_last_name &&
          rejection_from_email == o.rejection_from_email &&
          rejection_email_subject == o.rejection_email_subject &&
          rejection_email_body == o.rejection_email_body &&
          rejection_email_activity_type == o.rejection_email_activity_type &&
          rejection_email_assigned_by_member == o.rejection_email_assigned_by_member &&
          confirmation_send_email_flag == o.confirmation_send_email_flag &&
          confirmation_email_use_default_company_email_address_flag == o.confirmation_email_use_default_company_email_address_flag &&
          confirmation_email_from_first_name == o.confirmation_email_from_first_name &&
          confirmation_email_from_last_name == o.confirmation_email_from_last_name &&
          confirmation_from_email == o.confirmation_from_email &&
          confirmation_email_subject == o.confirmation_email_subject &&
          confirmation_email_body == o.confirmation_email_body &&
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
      [id, opportunity_status_rec_i_ds, add_all_opportunity_statuses, remove_all_opportunity_statuses, opportunity_type_rec_i_ds, add_all_opportunity_types, remove_all_opportunity_types, restrict_view_by_opportunity_status_flag, restrict_view_by_opportunity_type_flag, acceptance_change_status_flag, acceptance_create_activity_flag, acceptance_opportunity_status, acceptance_send_email_flag, acceptance_email_from_first_name, acceptance_email_from_last_name, acceptance_email_subject, acceptance_email_body, acceptance_from_email, acceptance_email_activity_type, acceptance_email_assigned_by_member, rejection_change_status_flag, rejection_create_activity_flag, rejection_opportunity_status, rejection_send_email_flag, rejection_email_from_first_name, rejection_email_from_last_name, rejection_from_email, rejection_email_subject, rejection_email_body, rejection_email_activity_type, rejection_email_assigned_by_member, confirmation_send_email_flag, confirmation_email_use_default_company_email_address_flag, confirmation_email_from_first_name, confirmation_email_from_last_name, confirmation_from_email, confirmation_email_subject, confirmation_email_body, _info].hash
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

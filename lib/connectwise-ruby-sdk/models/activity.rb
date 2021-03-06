
require 'date'

module ConnectWise

  class Activity
    attr_accessor :id

    attr_accessor :name

    attr_accessor :type

    attr_accessor :company

    attr_accessor :contact

    attr_accessor :phone_number

    attr_accessor :email

    attr_accessor :status

    attr_accessor :opportunity

    attr_accessor :ticket

    attr_accessor :agreement

    attr_accessor :campaign

    attr_accessor :notes

    attr_accessor :date_start

    attr_accessor :date_end

    attr_accessor :assigned_by

    attr_accessor :assign_to

    attr_accessor :schedule_status

    attr_accessor :reminder

    attr_accessor :where

    attr_accessor :notify_flag

    attr_accessor :mobile_guid

    attr_accessor :currency

    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :custom_fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'type' => :'type',
        :'company' => :'company',
        :'contact' => :'contact',
        :'phone_number' => :'phoneNumber',
        :'email' => :'email',
        :'status' => :'status',
        :'opportunity' => :'opportunity',
        :'ticket' => :'ticket',
        :'agreement' => :'agreement',
        :'campaign' => :'campaign',
        :'notes' => :'notes',
        :'date_start' => :'dateStart',
        :'date_end' => :'dateEnd',
        :'assigned_by' => :'assignedBy',
        :'assign_to' => :'assignTo',
        :'schedule_status' => :'scheduleStatus',
        :'reminder' => :'reminder',
        :'where' => :'where',
        :'notify_flag' => :'notifyFlag',
        :'mobile_guid' => :'mobileGuid',
        :'currency' => :'currency',
        :'_info' => :'_info',
        :'custom_fields' => :'customFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'type' => :'ActivityTypeReference',
        :'company' => :'CompanyReference',
        :'contact' => :'ContactReference',
        :'phone_number' => :'String',
        :'email' => :'String',
        :'status' => :'ActivityStatusReference',
        :'opportunity' => :'OpportunityReference',
        :'ticket' => :'TicketReference',
        :'agreement' => :'AgreementReference',
        :'campaign' => :'CampaignReference',
        :'notes' => :'String',
        :'date_start' => :'DateTime',
        :'date_end' => :'DateTime',
        :'assigned_by' => :'MemberReference',
        :'assign_to' => :'MemberReference',
        :'schedule_status' => :'ScheduleStatusReference',
        :'reminder' => :'ReminderReference',
        :'where' => :'ServiceLocationReference',
        :'notify_flag' => :'BOOLEAN',
        :'mobile_guid' => :'Guid',
        :'currency' => :'CurrencyReference',
        :'_info' => :'Metadata',
        :'custom_fields' => :'Array<CustomFieldValue>'
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'opportunity')
        self.opportunity = attributes[:'opportunity']
      end

      if attributes.has_key?(:'ticket')
        self.ticket = attributes[:'ticket']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'campaign')
        self.campaign = attributes[:'campaign']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'dateStart')
        self.date_start = attributes[:'dateStart']
      end

      if attributes.has_key?(:'dateEnd')
        self.date_end = attributes[:'dateEnd']
      end

      if attributes.has_key?(:'assignedBy')
        self.assigned_by = attributes[:'assignedBy']
      end

      if attributes.has_key?(:'assignTo')
        self.assign_to = attributes[:'assignTo']
      end

      if attributes.has_key?(:'scheduleStatus')
        self.schedule_status = attributes[:'scheduleStatus']
      end

      if attributes.has_key?(:'reminder')
        self.reminder = attributes[:'reminder']
      end

      if attributes.has_key?(:'where')
        self.where = attributes[:'where']
      end

      if attributes.has_key?(:'notifyFlag')
        self.notify_flag = attributes[:'notifyFlag']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @name.to_s.length > 100
        invalid_properties.push("invalid value for 'name', the character length must be smaller than or equal to 100.")
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 30
        invalid_properties.push("invalid value for 'phone_number', the character length must be smaller than or equal to 30.")
      end

      if !@email.nil? && @email.to_s.length > 250
        invalid_properties.push("invalid value for 'email', the character length must be smaller than or equal to 250.")
      end

      if @assign_to.nil?
        invalid_properties.push("invalid value for 'assign_to', assign_to cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 100
      return false if !@phone_number.nil? && @phone_number.to_s.length > 30
      return false if !@email.nil? && @email.to_s.length > 250
      return false if @assign_to.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, "name cannot be nil"
      end

      if name.to_s.length > 100
        fail ArgumentError, "invalid value for 'name', the character length must be smaller than or equal to 100."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)

      if !phone_number.nil? && phone_number.to_s.length > 30
        fail ArgumentError, "invalid value for 'phone_number', the character length must be smaller than or equal to 30."
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)

      if !email.nil? && email.to_s.length > 250
        fail ArgumentError, "invalid value for 'email', the character length must be smaller than or equal to 250."
      end

      @email = email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          type == o.type &&
          company == o.company &&
          contact == o.contact &&
          phone_number == o.phone_number &&
          email == o.email &&
          status == o.status &&
          opportunity == o.opportunity &&
          ticket == o.ticket &&
          agreement == o.agreement &&
          campaign == o.campaign &&
          notes == o.notes &&
          date_start == o.date_start &&
          date_end == o.date_end &&
          assigned_by == o.assigned_by &&
          assign_to == o.assign_to &&
          schedule_status == o.schedule_status &&
          reminder == o.reminder &&
          where == o.where &&
          notify_flag == o.notify_flag &&
          mobile_guid == o.mobile_guid &&
          currency == o.currency &&
          _info == o._info &&
          custom_fields == o.custom_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, type, company, contact, phone_number, email, status, opportunity, ticket, agreement, campaign, notes, date_start, date_end, assigned_by, assign_to, schedule_status, reminder, where, notify_flag, mobile_guid, currency, _info, custom_fields].hash
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

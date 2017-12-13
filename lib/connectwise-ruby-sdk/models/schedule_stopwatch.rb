
require 'date'

module ConnectWise

  class ScheduleStopwatch
    # Metadata of the entity
    attr_accessor :_info

    attr_accessor :agreement

    attr_accessor :billable_option

    attr_accessor :business_unit_id

    attr_accessor :date_entered

    attr_accessor :end_time

    attr_accessor :id

    attr_accessor :internal_notes

    attr_accessor :location_id

    attr_accessor :member

    attr_accessor :mobile_guid

    attr_accessor :notes

    attr_accessor :schedule_id

    attr_accessor :schedule_mobile_guid

    attr_accessor :start_time

    attr_accessor :status

    attr_accessor :total_pause_time

    attr_accessor :work_role

    attr_accessor :work_type

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
        :'_info' => :'_info',
        :'agreement' => :'agreement',
        :'billable_option' => :'billableOption',
        :'business_unit_id' => :'businessUnitId',
        :'date_entered' => :'dateEntered',
        :'end_time' => :'endTime',
        :'id' => :'id',
        :'internal_notes' => :'internalNotes',
        :'location_id' => :'locationId',
        :'member' => :'member',
        :'mobile_guid' => :'mobileGuid',
        :'notes' => :'notes',
        :'schedule_id' => :'scheduleId',
        :'schedule_mobile_guid' => :'scheduleMobileGuid',
        :'start_time' => :'startTime',
        :'status' => :'status',
        :'total_pause_time' => :'totalPauseTime',
        :'work_role' => :'workRole',
        :'work_type' => :'workType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_info' => :'Metadata',
        :'agreement' => :'AgreementReference',
        :'billable_option' => :'String',
        :'business_unit_id' => :'Integer',
        :'date_entered' => :'DateTime',
        :'end_time' => :'DateTime',
        :'id' => :'Integer',
        :'internal_notes' => :'String',
        :'location_id' => :'Integer',
        :'member' => :'MemberReference',
        :'mobile_guid' => :'Guid',
        :'notes' => :'String',
        :'schedule_id' => :'Integer',
        :'schedule_mobile_guid' => :'Guid',
        :'start_time' => :'DateTime',
        :'status' => :'String',
        :'total_pause_time' => :'Integer',
        :'work_role' => :'WorkRoleReference',
        :'work_type' => :'WorkTypeReference'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

      if attributes.has_key?(:'agreement')
        self.agreement = attributes[:'agreement']
      end

      if attributes.has_key?(:'billableOption')
        self.billable_option = attributes[:'billableOption']
      end

      if attributes.has_key?(:'businessUnitId')
        self.business_unit_id = attributes[:'businessUnitId']
      end

      if attributes.has_key?(:'dateEntered')
        self.date_entered = attributes[:'dateEntered']
      end

      if attributes.has_key?(:'endTime')
        self.end_time = attributes[:'endTime']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'internalNotes')
        self.internal_notes = attributes[:'internalNotes']
      end

      if attributes.has_key?(:'locationId')
        self.location_id = attributes[:'locationId']
      end

      if attributes.has_key?(:'member')
        self.member = attributes[:'member']
      end

      if attributes.has_key?(:'mobileGuid')
        self.mobile_guid = attributes[:'mobileGuid']
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'scheduleId')
        self.schedule_id = attributes[:'scheduleId']
      end

      if attributes.has_key?(:'scheduleMobileGuid')
        self.schedule_mobile_guid = attributes[:'scheduleMobileGuid']
      end

      if attributes.has_key?(:'startTime')
        self.start_time = attributes[:'startTime']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'totalPauseTime')
        self.total_pause_time = attributes[:'totalPauseTime']
      end

      if attributes.has_key?(:'workRole')
        self.work_role = attributes[:'workRole']
      end

      if attributes.has_key?(:'workType')
        self.work_type = attributes[:'workType']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @member.nil?
        invalid_properties.push("invalid value for 'member', member cannot be nil.")
      end

      if !@notes.nil? && @notes.to_s.length > 4000
        invalid_properties.push("invalid value for 'notes', the character length must be smaller than or equal to 4000.")
      end

      if @schedule_id.nil?
        invalid_properties.push("invalid value for 'schedule_id', schedule_id cannot be nil.")
      end

      if @status.nil?
        invalid_properties.push("invalid value for 'status', status cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      billable_option_validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      return false unless billable_option_validator.valid?(@billable_option)
      return false if @member.nil?
      return false if !@notes.nil? && @notes.to_s.length > 4000
      return false if @schedule_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["Reset", "Running", "Paused", "Stopped"])
      return false unless status_validator.valid?(@status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billable_option Object to be assigned
    def billable_option=(billable_option)
      validator = EnumAttributeValidator.new('String', ["Billable", "DoNotBill", "NoCharge", "NoDefault"])
      unless validator.valid?(billable_option)
        fail ArgumentError, "invalid value for 'billable_option', must be one of #{validator.allowable_values}."
      end
      @billable_option = billable_option
    end

    # Custom attribute writer method with validation
    # @param [Object] notes Value to be assigned
    def notes=(notes)

      if !notes.nil? && notes.to_s.length > 4000
        fail ArgumentError, "invalid value for 'notes', the character length must be smaller than or equal to 4000."
      end

      @notes = notes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["Reset", "Running", "Paused", "Stopped"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for 'status', must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _info == o._info &&
          agreement == o.agreement &&
          billable_option == o.billable_option &&
          business_unit_id == o.business_unit_id &&
          date_entered == o.date_entered &&
          end_time == o.end_time &&
          id == o.id &&
          internal_notes == o.internal_notes &&
          location_id == o.location_id &&
          member == o.member &&
          mobile_guid == o.mobile_guid &&
          notes == o.notes &&
          schedule_id == o.schedule_id &&
          schedule_mobile_guid == o.schedule_mobile_guid &&
          start_time == o.start_time &&
          status == o.status &&
          total_pause_time == o.total_pause_time &&
          work_role == o.work_role &&
          work_type == o.work_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_info, agreement, billable_option, business_unit_id, date_entered, end_time, id, internal_notes, location_id, member, mobile_guid, notes, schedule_id, schedule_mobile_guid, start_time, status, total_pause_time, work_role, work_type].hash
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

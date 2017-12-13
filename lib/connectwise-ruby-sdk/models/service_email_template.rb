
require 'date'

module ConnectWise

  class ServiceEmailTemplate
    attr_accessor :id

    attr_accessor :type

    attr_accessor :service_survey

    attr_accessor :service_board

    attr_accessor :use_sender_flag

    # From fields (first name, last name, email address) are required if useSenderFlag is false.
    attr_accessor :first_name

    # From fields (first name, last name, email address) are required if useSenderFlag is false.
    attr_accessor :last_name

    # From fields (first name, last name, email address) are required if useSenderFlag is false.
    attr_accessor :email_address

    attr_accessor :subject

    attr_accessor :body

    attr_accessor :copy_sender_flag

    attr_accessor :tasks_flag

    attr_accessor :resource_records_flag

    attr_accessor :external_contact_notifications

    attr_accessor :internal_contact_notifications

    # serviceStatus is required if the email template type is \"Specific\".
    attr_accessor :service_status

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
        :'service_survey' => :'serviceSurvey',
        :'service_board' => :'serviceBoard',
        :'use_sender_flag' => :'useSenderFlag',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'email_address' => :'emailAddress',
        :'subject' => :'subject',
        :'body' => :'body',
        :'copy_sender_flag' => :'copySenderFlag',
        :'tasks_flag' => :'tasksFlag',
        :'resource_records_flag' => :'resourceRecordsFlag',
        :'external_contact_notifications' => :'externalContactNotifications',
        :'internal_contact_notifications' => :'internalContactNotifications',
        :'service_status' => :'serviceStatus',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'String',
        :'service_survey' => :'ServiceSurveyReference',
        :'service_board' => :'BoardReference',
        :'use_sender_flag' => :'BOOLEAN',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email_address' => :'String',
        :'subject' => :'String',
        :'body' => :'String',
        :'copy_sender_flag' => :'BOOLEAN',
        :'tasks_flag' => :'BOOLEAN',
        :'resource_records_flag' => :'BOOLEAN',
        :'external_contact_notifications' => :'BOOLEAN',
        :'internal_contact_notifications' => :'BOOLEAN',
        :'service_status' => :'ServiceStatusReference',
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

      if attributes.has_key?(:'serviceSurvey')
        self.service_survey = attributes[:'serviceSurvey']
      end

      if attributes.has_key?(:'serviceBoard')
        self.service_board = attributes[:'serviceBoard']
      end

      if attributes.has_key?(:'useSenderFlag')
        self.use_sender_flag = attributes[:'useSenderFlag']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'emailAddress')
        self.email_address = attributes[:'emailAddress']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.has_key?(:'copySenderFlag')
        self.copy_sender_flag = attributes[:'copySenderFlag']
      end

      if attributes.has_key?(:'tasksFlag')
        self.tasks_flag = attributes[:'tasksFlag']
      end

      if attributes.has_key?(:'resourceRecordsFlag')
        self.resource_records_flag = attributes[:'resourceRecordsFlag']
      end

      if attributes.has_key?(:'externalContactNotifications')
        self.external_contact_notifications = attributes[:'externalContactNotifications']
      end

      if attributes.has_key?(:'internalContactNotifications')
        self.internal_contact_notifications = attributes[:'internalContactNotifications']
      end

      if attributes.has_key?(:'serviceStatus')
        self.service_status = attributes[:'serviceStatus']
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

      if !@first_name.nil? && @first_name.to_s.length > 100
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 100.")
      end

      if !@last_name.nil? && @last_name.to_s.length > 100
        invalid_properties.push("invalid value for 'last_name', the character length must be smaller than or equal to 100.")
      end

      if !@email_address.nil? && @email_address.to_s.length > 100
        invalid_properties.push("invalid value for 'email_address', the character length must be smaller than or equal to 100.")
      end

      if !@subject.nil? && @subject.to_s.length > 200
        invalid_properties.push("invalid value for 'subject', the character length must be smaller than or equal to 200.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["New", "Closed", "Other", "Specific", "RMA", "Invoice", "SalesOrder", "PurchaseOrder"])
      return false unless type_validator.valid?(@type)
      return false if !@first_name.nil? && @first_name.to_s.length > 100
      return false if !@last_name.nil? && @last_name.to_s.length > 100
      return false if !@email_address.nil? && @email_address.to_s.length > 100
      return false if !@subject.nil? && @subject.to_s.length > 200
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["New", "Closed", "Other", "Specific", "RMA", "Invoice", "SalesOrder", "PurchaseOrder"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)

      if !first_name.nil? && first_name.to_s.length > 100
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 100."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)

      if !last_name.nil? && last_name.to_s.length > 100
        fail ArgumentError, "invalid value for 'last_name', the character length must be smaller than or equal to 100."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)

      if !email_address.nil? && email_address.to_s.length > 100
        fail ArgumentError, "invalid value for 'email_address', the character length must be smaller than or equal to 100."
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] subject Value to be assigned
    def subject=(subject)

      if !subject.nil? && subject.to_s.length > 200
        fail ArgumentError, "invalid value for 'subject', the character length must be smaller than or equal to 200."
      end

      @subject = subject
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          service_survey == o.service_survey &&
          service_board == o.service_board &&
          use_sender_flag == o.use_sender_flag &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email_address == o.email_address &&
          subject == o.subject &&
          body == o.body &&
          copy_sender_flag == o.copy_sender_flag &&
          tasks_flag == o.tasks_flag &&
          resource_records_flag == o.resource_records_flag &&
          external_contact_notifications == o.external_contact_notifications &&
          internal_contact_notifications == o.internal_contact_notifications &&
          service_status == o.service_status &&
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
      [id, type, service_survey, service_board, use_sender_flag, first_name, last_name, email_address, subject, body, copy_sender_flag, tasks_flag, resource_records_flag, external_contact_notifications, internal_contact_notifications, service_status, _info].hash
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

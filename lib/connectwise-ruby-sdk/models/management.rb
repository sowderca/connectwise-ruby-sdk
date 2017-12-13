
require 'date'

module ConnectWise

  class Management
    attr_accessor :id

    attr_accessor :run_time

    attr_accessor :added_configuration_status

    attr_accessor :deleted_configuration_status

    attr_accessor :integrator_login

    attr_accessor :schedule_executive_summary_report_flag

    # This is only required when scheduleExecutiveSummaryReportFlag = true
    attr_accessor :executive_summary_report_schedule_day

    # This is only required when scheduleExecutiveSummaryReportFlag = true. Input should be in 24 hour format, ie 2pm is 14
    attr_accessor :executive_summary_report_schedule_hour

    # This is only required when scheduleExecutiveSummaryReportFlag = true
    attr_accessor :executive_summary_report_schedule_minute

    # Metadata of the entity
    attr_accessor :_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'run_time' => :'runTime',
        :'added_configuration_status' => :'addedConfigurationStatus',
        :'deleted_configuration_status' => :'deletedConfigurationStatus',
        :'integrator_login' => :'integratorLogin',
        :'schedule_executive_summary_report_flag' => :'scheduleExecutiveSummaryReportFlag',
        :'executive_summary_report_schedule_day' => :'executiveSummaryReportScheduleDay',
        :'executive_summary_report_schedule_hour' => :'executiveSummaryReportScheduleHour',
        :'executive_summary_report_schedule_minute' => :'executiveSummaryReportScheduleMinute',
        :'_info' => :'_info'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'run_time' => :'DateTime',
        :'added_configuration_status' => :'ConfigurationStatusReference',
        :'deleted_configuration_status' => :'ConfigurationStatusReference',
        :'integrator_login' => :'IntegratorLoginReference',
        :'schedule_executive_summary_report_flag' => :'BOOLEAN',
        :'executive_summary_report_schedule_day' => :'Integer',
        :'executive_summary_report_schedule_hour' => :'Integer',
        :'executive_summary_report_schedule_minute' => :'Integer',
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

      if attributes.has_key?(:'runTime')
        self.run_time = attributes[:'runTime']
      end

      if attributes.has_key?(:'addedConfigurationStatus')
        self.added_configuration_status = attributes[:'addedConfigurationStatus']
      end

      if attributes.has_key?(:'deletedConfigurationStatus')
        self.deleted_configuration_status = attributes[:'deletedConfigurationStatus']
      end

      if attributes.has_key?(:'integratorLogin')
        self.integrator_login = attributes[:'integratorLogin']
      end

      if attributes.has_key?(:'scheduleExecutiveSummaryReportFlag')
        self.schedule_executive_summary_report_flag = attributes[:'scheduleExecutiveSummaryReportFlag']
      end

      if attributes.has_key?(:'executiveSummaryReportScheduleDay')
        self.executive_summary_report_schedule_day = attributes[:'executiveSummaryReportScheduleDay']
      end

      if attributes.has_key?(:'executiveSummaryReportScheduleHour')
        self.executive_summary_report_schedule_hour = attributes[:'executiveSummaryReportScheduleHour']
      end

      if attributes.has_key?(:'executiveSummaryReportScheduleMinute')
        self.executive_summary_report_schedule_minute = attributes[:'executiveSummaryReportScheduleMinute']
      end

      if attributes.has_key?(:'_info')
        self._info = attributes[:'_info']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @added_configuration_status.nil?
        invalid_properties.push("invalid value for 'added_configuration_status', added_configuration_status cannot be nil.")
      end

      if @deleted_configuration_status.nil?
        invalid_properties.push("invalid value for 'deleted_configuration_status', deleted_configuration_status cannot be nil.")
      end

      if @integrator_login.nil?
        invalid_properties.push("invalid value for 'integrator_login', integrator_login cannot be nil.")
      end

      if @schedule_executive_summary_report_flag.nil?
        invalid_properties.push("invalid value for 'schedule_executive_summary_report_flag', schedule_executive_summary_report_flag cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @added_configuration_status.nil?
      return false if @deleted_configuration_status.nil?
      return false if @integrator_login.nil?
      return false if @schedule_executive_summary_report_flag.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          run_time == o.run_time &&
          added_configuration_status == o.added_configuration_status &&
          deleted_configuration_status == o.deleted_configuration_status &&
          integrator_login == o.integrator_login &&
          schedule_executive_summary_report_flag == o.schedule_executive_summary_report_flag &&
          executive_summary_report_schedule_day == o.executive_summary_report_schedule_day &&
          executive_summary_report_schedule_hour == o.executive_summary_report_schedule_hour &&
          executive_summary_report_schedule_minute == o.executive_summary_report_schedule_minute &&
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
      [id, run_time, added_configuration_status, deleted_configuration_status, integrator_login, schedule_executive_summary_report_flag, executive_summary_report_schedule_day, executive_summary_report_schedule_hour, executive_summary_report_schedule_minute, _info].hash
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
